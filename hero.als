open map

sig Hero {
  Inv: set Item,
  Avl: set Item,
  S: set Hero
}

sig Win in Hero {}

sig Nec in Item {}

fact { all x,y: Hero | x.Inv = y.Inv implies x = y }

fact { Win = { h:Hero | Nec in h.Inv } }

fact { Avl = Under[Req,Inv].Con + Hero->(Free+Easy) }

fact { ~S.Inv in Inv } // Inv is S-persistent

fact { S.Inv in Avl } // Collect only available items

run { some Win }

check { some Win } // Fail

check {
  some Win implies
  { i:Item | no Acq.i } in (Free+Easy)
} // Pass

run {
  some Win
  { i:Item | no Acq.i } not in (Free+Easy)
} // No instances
