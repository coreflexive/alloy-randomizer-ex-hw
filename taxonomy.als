open combinators

pred entire(r: univ->univ, s: set univ) {
  iden:>s in Ker[r]
}

pred simple(r: univ->univ) {
  Img[r] in iden
}

pred injective(r: univ->univ) {
  Ker[r] in iden
}

pred reflexive(r: univ->univ, s: set univ) {
  iden:>s in r
}

pred irreflexive(r: univ->univ) {
  no iden & r
}

pred transitive(r: univ->univ) {
  r.r in r
}

pred symmetric(r: univ->univ) {
  r in ~r
}

pred antisymmetric(r: univ->univ) {
  r & ~r in iden
}

pred asymmetric(r: univ->univ) {
  no r & ~r
}

pred connected[r: univ->univ,s: set univ] {
  s->s in r+~r
}

pred preorder(r: univ->univ, s: set univ) {
  reflexive[r,s]
  transitive[r]
}

pred equivalence(r: univ->univ, s: set univ) {
  preorder[r,s]
  symmetric[r]
}

pred partialOrder(r: univ->univ, s: set univ) {
  preorder[r,s]
  antisymmetric[r]
}

pred linear(r: univ->univ, s: set univ) {
  partialOrder[r,s]
  connected[r,s]
}

pred strict(r: univ->univ) {
  irreflexive[r]
  transitive[r]
}

pred serial(r: univ->univ, s: set univ) { entire[r,s] }

pred deterministic(r: univ->univ) { simple[r] }

pred confluent(r: univ->univ) { Img[r] in Ker[r] }

pred euclidean(r: univ->univ) { Img[r] in r }

pred rightLinear(r: univ->univ) { Img[r] in r+~r }