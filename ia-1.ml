type register = int ;;
(* R0 | R1 | R2 | R3 | R4 | R5 | R6 | R7 ;; *)
type op = Load of register * register | Store of register * register | Inc of register | DecAndJump of register * register;;

type maybe = Null | Val of int;;

let rec read default_addr mem addr =
  match mem with
            [] -> default_addr
          | (a,v)::xs -> if a==addr then
                             default_addr
                           else
                             read xs addr
;;

let rec write (mem : (int * int) list)  (addr: int) (v: maybe) =
                       match mem with
                         [] -> begin match v with
                                 Null -> []
                               | Val(x) -> [(addr, x)] end
                        | (a,exist)::xs -> if a==addr then
                                         begin match v with
                                           Null -> xs
                                         | Val(x) -> (addr,x)::xs
                                         end
                                           else
                                             (a,exist)::(write xs addr v)
;;



let v = write [] 2 (Val(3));;
read v 2;;
read v 0;;

let rec run (rs,ms,read_r,read_m)  op = match op with
    Load (r1,r2) => let loc = read_r reg rs in let v = read_m loc ms in (write rs reg 
