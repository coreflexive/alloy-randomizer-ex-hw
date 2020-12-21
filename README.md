Hillel Wayne posted about using Alloy to model a randomizer for the classic SNES game: "The Legend Of Zelda: A Link to the Past".  You can find that post [here](https://www.hillelwayne.com/post/alloy-randomizer/).

I'm a big fan of LTTP, and loved the idea of some kind of formal analysis of randomizers, thereof.  I'm also a big fan of relation algebra, though, and couldn't help wondering whether I could remove some of the model's explicit quantification.  This repo represents my attempt at doing just that.  

It's not entirely free of quantifiers, but it is "trace" free, i.e. I don't use `util/ordering` at all.  I achieved this by modelling an ordering (called `S` for "Successor") of the `Hero` signature.  This is useful because it shows that a Hero may take many paths to a winning state; that is, there is more than one path to acquiring all of the necessary items `Nec`.

An important note: the original post is about _proving_ that a game is winnable.  The Alloy I wrote doesn't do that (and neither does HW's).  What this code _does_ do is emphasize a necessary condition for a winnable game.  Namely, a `Hero` can reach a winning state _only if_ the set of minimal elements of the item acquisition order `Acq` is within the union of the `Free` and `Easy` items.  At least, I think that's right.