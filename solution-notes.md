# Solution notes

These are my marking notes for the questions; they are neither complete nor (probably!) very useful.

Please note that these exams are indication only - I've not applied as
much care (obviously) to the mark schemes or the questions as are
applied in the real exam.

## IA/1

Code is in `ia-1.ml`.

Full marks were available for any reasonable implementation; those that "looked right" got fewer marks.
The right idea without a plausible implementation was (mostly) worth 1-2.
I knocked 0.5-1 off for non-functional implementations (using lists as arrays, references, etc.)

## IA/2

This is a combination of:

(a) - 2018 P2 Q9 (b)
(b) - bookwork; simple application of Fermat's little theorem.
(c) - 2016 P2 Q8

## IA/3

(a)(i) I'm expecting a binary tree class of some sort. 
  2 marks for a plausible tree.
  1 mark for use of generics
  1 mark for use of interfaces

  (ii) Write a declaration for a strategy object (or a function that calls one).
   Should take a tree and return a type (preferably abstract or generic) of statistic.

  (iii) Write a declaration for a traversal class which traverses the tree calling a
   visitor function (or object) on each node individually.

(b) Generate anonymous local classes (1), bind free variables with static const (1) - essentially bookwork.

(c) Any simple program containing arrays or <? super A>.

(d) any two reasonable principles

(e) T extends Number means that every instantiation must have the same T, ? extends allows polymorphism.

## IA/4

(a) 
  1 mark for drawing a vaguely plausible diagram
  1 mark for fields that sort of make sense
  2 for reasonable relationships - separate mortgage, holder and property
  1 for extras - coping with extra borrowing, logs, etc OR discussing normalisation

(b) 1 mark - knowing what DDL is.
    1 mark - CREATE TABLE
    1 mark - reasonable types.

 (c) 1 mark - some reasonable attempt. Doesn't need to work, but marks removed for something that obviously won't.
     1 mark - dicussion of N.
     
 (d) 1 - knowing what eventual consistency is
     1 - separate inputs from outputs
     1 - any reasonable update strategy
 
 (e) Denormalise
 (f) 1 - knowing what a network db is, 2 - any reasonable translation, 1 - discussion of efficiency.
 (g) 1 - looking like a network database
     1 - any reasonable attempt.
     
## IA/5

 (a) Standard counter design. Minor mistakes attract a penalty of at most 1 mark.
   - Identify a gray code: 2
   - State machine table: 3
   - Equations: 3
   - Self-starting: 2
   - Hazard removal: 2

 (b) Any suitable answer.

## IA/6

 (a) The cube starts with a corner at 0, so:

   - Translate -1,-1,-1 T = [ 1 0 0 -1
                              0 1 0 -1
                              0 0 1 -1
                              0 0 0  1 ]
   - Rotate 45 deg  R = [ 
                          cos pi/2 -sin pi/2  0 0
                          sin pi/2 cos pi/2   0 0 
                            0        0        1 0 
                            0         0       0 1
           ]
  - Shear 0.5  S = [ 1 0 0 0
                     0.5 1 0 0
                     0 0 1 0
                     0 0 0 1 ]
        
  - Now move it back to the origin, T2
    =  [ 1 0 0 0.5
         0 1 0 0.5
         0 0 1 0.5
         0 0 0 1 ]

 T2 S R T c
 
 
 (b) Reflected ray depends strongly on position.
     => interpolation is hard, even for flat surfaces
     => subsampling effects when surface is at an angle to viewer
     => surface normal discontinuities becomev very obvious
     => lots of computation.
  Can render the image from the PoV of the mirror, and texmap the result.
  Curves problematic because of normal discontinuities
  
 (c) Rendered image -> Tone Mapping -> Display Encoding -> Display buffer
   (4) marks - plus any 4 other points. 
  Many people gave the GPU rendering pipeline (without a discussion of colour rendering!)
  This scored 1 sympathy mark.

 (d) Moire; Poisson or min-distance sampling.

## IB/1

(a) - I was looking for a loop of lr/sc locking a data structure consisting of a holder, pending writer, a list of pending readers and a list of waiting readers.
      When you don't get the lr/sc lock, yield() on the lock word.
      Readers go into the waiting list and drain into the pending list when there is no pending writer.
      When there is a pending writer, it goes after the pending readers. On writer release, pending <- waiting.
      Any other vaguely fair mechanism accepted.

(b) Performance reduce proportional to critical_region_time * region_proportion , since critical regions will be coupled.
(c) 
  - Any suitable alg [2 marks]
  - Add node / remove node [2 marks]
  - Correct description of total order FIFO [2 marks]
  - Plausible algorithm [2 marks]
  My easy gossip would be 2 phase delivery with nearest-link distribution and timeout and then join messages are just messages (2PL means you can tell when everyone has them), and leaving is timeout. Does require total order.

(d) TXN IDs, 2PL (effectively), and you can't cope with double permanent failures.

## IB/2

This is a combination of:

(a) - Examples sheet 4 Q7
(b) - Examples sheet 2 Q6

## IB/3

(a) - I was expecting something along the lines of small, cheap or
differentiated services. Growth involves investment in technology and
marketing, likely at low efficiency. There will be a capital gap
between the differentiated market and the enterprise market. But any
reasonable answer accepted.

(b) - any reasonable answer. I would expect:

 - CMA
 - GDPR associated with compromised systems
 - Copyright issues associated with use of AI
 - Risks associated with information copying (libel, communications decency, etc.)
 - Risks associated with possession of material from compromised systems.

(c) I'd expect analysis based on deontology, consequentaliasm, moralism.

## IB/4

 (a) - form a vector, take partial differentials wrt u,v and compute the cross product.
 (b) - you need to important sample _after_ the mapping
 (c) - show the edges. (this is similar to 2022 P7 Q6(c) )
 (d) - transformation is convex
 (e) - 2024 p7q8 (c)
 
## IB/5

(a) - any reasonable answer.
 Expecting:
   - P vs V?
   - How many entries?
   - Algorithm for prediction?
   - Infer this is a small, low-cost CPU
   - Bigger cache, better alg (trace, NN?). BTB?

(b) Explicit memories; streaming for speed; halt warp for miss.
 Coprocessor is just a DMA engine. 
 Latency => Bus priorities, host driver - can fetch data from host memory.
 
 (c) Bookwork. Incl -> L2 (likely shared lines), Excl -> L1 (simpler), NINE -> L3 and beyond. Useful for L2 too. Reduced eviction of WO lines
 
 (d) ROB; no. Without superscalarity, register renaming only buys you clobbering (or scoreboarding). And loses latency. Not worth it.
 

## IB/6

(a) - just a decent implementation would score full marks. One off for everything that's blatantly wrong (non-syntax).

(b) C++ template
 Good -> fully static so fast at runtime, quite typesafe (for C++).
 Bad -> errors and code can get complex. Per-instantiation code overhead. Easy to get wrong.

(c) Probably not. It's a reference (so likely to end up a pointer) to something smaller than a pointer.

## IB/7

(a) Any reasonable rules for each operand. Rules = 4, choice of state and memory = 2
(b) Stack (2), call (1), return(1)
(c) Any reasonable typing rules (6)
(d) Could check ranges. effect system. pointer arithmetic. (1 mark each + 1 bonus)
