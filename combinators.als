fun Img(r: univ->univ) : univ->univ { ~r.r }

fun Ker(r: univ->univ) : univ->univ { r.~r }

fun Comp(p,q: set univ) : set univ { p-q }

fun Under(r,s:univ->univ) : univ->univ {
  { i:s.univ, o:r.univ | o.r in i.s }
}
