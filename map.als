open taxonomy

sig Chest {
  Req: set Item,
  Con: set Item,
  Opn: set Chest
}

sig Ungd in Chest {}

sig Item {
  Acq: set Item
}

sig Free, Easy in Item {}

fact { Free = Item - Chest.Con }

fact { Easy = Ungd.Con }

fact { Ungd = Chest - Req.Item }

fact { no Req & Con }

fact { simple[Con] }

fact { injective[Con] }

fact { Opn = Con.~Req }

fact { Acq = ~Req.Con }

fact { strict[^Opn] }

