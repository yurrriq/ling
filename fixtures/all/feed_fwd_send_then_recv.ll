feed_fwd_send_then_recv =
  \(I O : Type)
   (i : I)
   (f : (x : I)-> O)
   (p : < Fwd 2 (!I.?O) >)->
  proc()
   new [a : Fwd 2 (!I.?O), b : [?I.!O, !I.?O]].
   ( @p(a)
   | b[c,d]
     ( recv c (x : I).
       send c (f x)
     | send d i.
       recv d (o : O)))

feed_fwd_send_then_recv_Int_String_42_showInt =
  feed_fwd_send_then_recv Int String 42 showInt
  (proc(c) fwd 2 (!Int.?String) c)
