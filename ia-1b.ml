open Printf

let rec count = function
  | [] -> 0
    | x::xs -> x + (count xs)
;;

type 'a movelist = NextMove of 'a * (unit -> 'a movelist) | MoveNone;;
type ('a,'b) game = ('a -> 'b -> 'b movelist) * ('a -> 'b -> bool);;

let rec winner player piles = match piles with
    x::xs -> if x = 1 then true
             else winner player xs
  | [] -> false
;;

let rec moves player prev = function
    x::xs -> if x > 0 then
               NextMove ( prev @ (x-1)::xs, fun _ -> moves player (prev @ [x]) xs )
             else
               moves player (prev @ [x]) xs
  | [] -> MoveNone
;;

let print_list a = printf("["); List.iter( printf("%d,") ) a; printf("]");
;;

let rec print_moves = function
    NextMove(a,b) -> printf("["); print_moves (b()); printf("]");  print_list a
  | MoveNone -> ()
;;


let piles = [ 1;2;3;4;5];;
print_moves(moves 1 [] piles);;

exception Cannot;;

let rec next_player_to_move to_move is_next players = match players with
    x::xs -> if is_next then x else
               if x=to_move then
                 next_player_to_move to_move true xs
               else
                 next_player_to_move to_move false xs
  | _ -> raise Cannot
;;

printf "next %d\n" (next_player_to_move 1 false ([1;2] @ [1;2]))
;;

printf "next %d\n" (next_player_to_move 2 false ([1;2] @ [1;2]))
;;


let rec search players state moves_so_far to_move =
    match winner to_move state with
    | true -> printf"soup %d" to_move ;[  ( to_move, state::moves_so_far ) ]
    | _ -> let next_player = next_player_to_move to_move false (players @ players) in
            let rec search_move move next_player acc =
              match move with
                NextMove(board, next) -> search_move (next()) next_player ((search players board (state::moves_so_far) next_player) @ acc)
              | MoveNone -> acc
            in
            search_move (moves next_player [] state) next_player []
;;

let rec print_results = function
    x::xs -> let print_move = function
                 (x,y) -> printf "To_move=%d" x; printf " moves = "; List.map (fun a -> print_list a ) y; printf  "\n"
             in
             print_move x; print_results xs
  | [] -> printf "E1"
;;

let q = search [1;2] [2;2]  []  1
;;
print_results(q)
;;





