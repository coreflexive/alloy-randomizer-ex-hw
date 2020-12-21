Hillel Wayne posted about using Alloy to model a randomizer for the classic SNES game: "The Legend Of Zelda: A Link to the Past".  You can find that post [here](https://www.hillelwayne.com/post/alloy-randomizer/).

I'm a big fan of LTTP, and loved the idea of some kind of formal analysis of randomizers, thereof.  I'm also a big fan of relation algebra, though, and couldn't help wondering whether I could remove some of the model's explicit quantification.  This repo represents my attempt at doing just that.  

It's not entirely free of quantifiers, but it is "trace" free.  Lookout for the ordering of the `Hero` signature: it shows that a Hero may take many paths to a winning state; that is, there is more than one path to acquiring all of the necessary items `Nec`.