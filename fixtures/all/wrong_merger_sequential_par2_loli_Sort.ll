wrong_merger_seqential_par2_loli_Sort =
 \(m n : Int)->
 proc( c : {DotSort Int m, DotSort Int n} -o DotSort Int (m + n) )
  c{c01,d}
  c01[c0,c1]
  recv d (vi : Vec Int (m + n)).
  send c0 (take Int m n vi).
  send c1 (drop Int m n vi).
  recv c0 (v0 : Vec Int m).
  recv c1 (v1 : Vec Int n).
  send d (merge m n v0 v1)
