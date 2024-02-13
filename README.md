# [Dyalog APL](https://www.dyalog.com/) Extended

Extended domains of existing primitives/quad-names, and a few new ones. Requires Dyalog APL version 16.0 or higher.

This project serves as a breeding ground for ideas. While some have been adopted into Dyalog APL proper, it is unlikely that many will be. Furthermore, Dyalog 18.0 gave a different meaning to monadic `≠` than proposed here, leaving Extended Dyalog APL as a deadend. It spiritual successor of sorts is my [Dyalog APL Vision](https://github.com/abrudz/dyalog_vision).

### How to use

These extensions are [available on *Try it Online*](https://tio.run/##SyzI0U2pTMzJT9dNrShJzUtJTfn//1Hf1EdtEzQMFQwUULAmREjzUW@DekZqTk6@us6j3qWPeleph/sH@bio//8PAA), but can easily be used offline:

#### Initialisation

Replacing `ns` with your target namespace (e.g. `#`), do

```
]Load path/dyalog-apl-extended/* -target=ns
```

or<sup>17.0</sup>

```
]Link ns path/dyalog-apl-extended
```

or<sup>17.1</sup>

```
]Link.Create ns path/dyalog-apl-extended
```

#### Running code

Now you have three options:

1. Use the extensions directly with the glyph names.
1. Use `ns.Extended.FIX` as a drop in for `⎕FIX`.
1. Use `ns.Extended.Repl ''` to start a (limited) session where the glyphs work. Enter `→` to exit.

### Content

| Name                                              | Glyph  |   Type*   | Extension                                                    |
| ------------------------------------------------- | :----: | :---: | ------------------------------------------------------------ |
| <span id="BackSlash">[BackSlash](BackSlash.dyalog)</span>                     |  `\`   |  🔶   | `∘.f` when dyadic, allows short and/or multiple left args |
| <span id="BackSlashBar">[BackSlashBar](BackSlashBar.dyalog)</span>               |  `⍀`   |  🔶   | `⊢∘f` when dyadic, allows short and/or multiple left args  |
| <span id="Bullet">[Bullet](Bullet.dyalog)</span>                           |  `∙`   |  🔺   | Inner product and Alternant                                  |
| <span id="CircleDiaeresis">[CircleDiaeresis](CircleDiaeresis.dyalog)</span>         |  `⍥`   |  🔺   | Over and Depth                                               |
| <span id="CircleJot">[CircleJot](CircleJot.dyalog)</span>                     |  `⌾`   |  🔺   | Complex/Imaginary                                            |
| <span id="DelDiaeresis">[DelDiaeresis](DelDiaeresis.dyalog)</span>               |  `⍢`   |  🔺   | Under (a.k.a. Dual)                                          |
| <span id="DelTilde">[DelTilde](DelTilde.dyalog)</span>                       |  `⍫`   |  🔺   | Obverse; `⍺⍺` but with inverse `⍵⍵`                          |
| <span id="Diaeresis">[Diaeresis](Diaeresis.dyalog)</span>                     |  `¨`   |  🔵   | allows constant operand                                      |
| <span id="Divide">[Divide](Divide.dyalog)</span>                           |  `÷`   |  🔵   | monadic converts letters to title case when possible         |
| <span id="DollarSign">[DollarSign](DollarSign.dyalog)</span>                   |  `$`   |  🔺   | string enhancement <code>${1}</code>:`1⊃⍺`, <code>${expr}</code>:`⍎expr`, `\n`:JSON |
| <span id="DownArrow">[DownArrow](DownArrow.dyalog)</span>                     |  `↓`   |  🔵   | allows long `⍺`                                              |
| <span id="DownShoe">[DownShoe](DownShoe.dyalog)</span>                       |  `∪`   |  🔵   | allows rank>1                                                |
| <span id="Downstile">[Downstile](Downstile.dyalog)</span>                     |  `⌊`   |  🔵   | monadic lowercases letters                                   |
| <span id="DownTack">[DownTack](DownTack.dyalog)</span>                       |  `⊤`   |  🔶   | 2s as default left argument                                  |
| <span id="Ellipsis">[Ellipsis](Ellipsis.dyalog)</span>                       |  `…`   |  🔺   | fill sequence gaps ([dfns's `to⍤1`](http://dfns.dyalog.com/n_to.htm)) |
| <span id="EpsilonUnderbar">[EpsilonUnderbar](EpsilonUnderbar.dyalog)</span>         |  `⍷`   |  🔶   | monadic is Type `∊` with `⎕ML←0`                             |
| <span id="Equals">[Equals](Equals.dyalog)</span>                           |  `=`   |  🔶   | with TAO; monad: is-type                                     |
| <span id="GreaterThan">[GreaterThan](GreaterThan.dyalog)</span>                 |  `>`   |  🔶   | with TAO; monad: is-strictly-negative/is-visible             |
| <span id="GreaterThanOrEqualTo">[GreaterThanOrEqualTo](GreaterThanOrEqualTo.dyalog)</span> |  `≥` |  🔶   | with TAO; monad: is non-positive/is-not-control-character    |
| <span id="house">house</span>                                             |  `⌂`   |  🔺   | prefix for contents of [dfns](http://dfns.dyalog.com/n_contents.htm)  |
| <span id="infinity">[infinity](infinity.dyalog)</span>                       |  `∞`   |  🔺   | largest integer (for use with `⍤` and `⍣`)                   |
| <span id="Iota">[Iota](Iota.dyalog)</span>                               |  `⍳`   |  🔵   | Unicode version of [dfns's `iotag`](http://dfns.dyalog.com/n_iotag.htm) |
| <span id="IotaUnderbar">[IotaUnderbar](IotaUnderbar.dyalog)</span>               |  `⍸`   |  🔵   | allows duplicates/non-Booleans                               |
| <span id="IotaUnderbarInverse">[IotaUnderbarInverse](IotaUnderbarInverse.dyalog)</span> | `⍸⍣¯1` |  🔵   | given `r`, finds `n` so that `r≡⍸n`                          |
| <span id="JotDiaeresis">[JotDiaeresis](JotDiaeresis.dyalog)</span>               |  `⍤`   |  🔵   | allows constant left operand, Atop with function right operand |
| <span id="JotUnderbar">[JotUnderbar](JotUnderbar.dyalog)</span>               |  `⍛`   |  🔺   | reverse composition `X f⍛g Y` is `(f X) g Y` |
| <span id="LeftShoe">[LeftShoe](LeftShoe.dyalog)</span>                       |  `⊂`   |  🔵   | allows partitioning along multiple trailing axes, with short ⍺s, and inserting/appending empty partitions |
| <span id="LeftShoeStile">[LeftShoeStile](LeftShoeStile.dyalog)</span>             |  `⍧`   |  🔺   | monad: nub-sieve; dyad: count-in                             |
| <span id="LeftShoeWithAxis">[LeftShoeWithAxis](LeftShoeWithAxis.dyalog)</span>       | `⊂[k]` |  🔵   | as `⊂`, but called with left operand                         |
| <span id="LessThan">[LessThan](LessThan.dyalog)</span>                       |  `<`   |  🔶   | with TAO; monad: is-strictly-positive/is-control-character   |
| <span id="LessThanOrEqualTo">[LessThanOrEqualTo](LessThanOrEqualTo.dyalog)</span>     |  `≤`   |  🔶   | with TAO ; monad: is-non-negative/is-invisible               |
| <span id="Minus">[Minus](Minus.dyalog)</span>                             |  `-`   |  🔵   | monadic flips letter case                                    |
| <span id="macron">[macron](FIX.dyalog#L79)</span>                          |  `¯`   |  🔵   | as prefix to name or primitive means its inverse             |
| <span id="negativeInfinity">[negativeInfinity](negativeInfinity.dyalog)</span>       |  `¯∞`  |  🔺   | smallest integer (for use with `⍣`)                          |
| <span id="Nand">[Nand](Nand.dyalog)</span>                               |  `⍲`   |  🔶   | monad: not all equal to type                                 |
| <span id="Nor">[Nor](Nor.dyalog)</span>                                 |  `⍱`   |  🔶   | monad: not any equal to type                                 |
| <span id="NotEqualTo">[NotEqualTo](NotEqualTo.dyalog)</span>                   |  `≠`   |  🔶   | with TAO; monad: is-non-type                                 |
| <span id="Percent">[Percent](Percent.dyalog)</span>                 |  `%`   |  🔺   | `f%` and `A%`: probability-logical function (mapping arrays) |
| <span id="QuadDiamond">[QuadDiamond](QuadDiamond.dyalog)</span>                 |  `⌺`   |  🔶   | auto-extended `⍵⍵`, allows small `⍵`, optional edge spec(s) ([0:Zero; 1:Repl; 2:Rev; 3:Mirror; 4:Wrap](http://web.science.mq.edu.au/~len/preprint/hamey-dicta2015-functional-border.pdf#page=3); -:Twist) with masks as operand's `⍺` |
| <span id="QuestionMark">[QuestionMark](QuestionMark.dyalog)</span>               |  `?`   |  🔵   | `⍺?¯⍵` as norm dist stddev `⍵` and optional mean `⍺←0`|
| <span id="Rho">[Rho](Rho.dyalog)</span>                                 |  `⍴`   |  🔵   | allows omitting one dimension length with `¯1`               |
| <span id="RightShoeUnderbar">[RightShoeUnderbar](RightShoeUnderbar.dyalog)</span>     |  `⊇`   |  🔺   | monadic discloses if scalar, dyadic indexes sanely           |
| <span id="RightShoeUnderbarWithAxis">[RightShoeUnderbarWithAxis](RightShoeUnderbarWithAxis.dyalog)</span> | `⊇[k]` | 🔺 | as above, but called with left operand              |
| <span id="Root">[Root](Root.dyalog)</span>                               |  `√`   |  🔺   | (Square) Root                                                |
| <span id="SemicolonUnderbar">[SemicolonUnderbar](SemicolonUnderbar.dyalog)</span>     |  `⍮`   |  🔺   | (Half) Pair; use `↑⍤⍮` to add axis                           |
| <span id="Slash">[Slash](Slash.dyalog)</span>                             |  `/`   |  🔵   | allows short and/or multiple left args                       |
| <span id="SlashBar">[SlashBar](SlashBar.dyalog)</span>                       |  `⌿`   |  🔵   | allows short and/or multiple left args                       |
| <span id="StarDiaeresis">[StarDiaeresis](StarDiaeresis.dyalog)</span>             |  `⍣`   |  🔵   | allows non-scalar right operand incl. `∞` and `¯∞` and array left operand |
| <span id="Stile">[Stile](Stile.dyalog)</span>                             |  `\|`  |  🔵   | monadic normalises letters to lowercase (upper then lower)   |
| <span id="StileTilde">[StileTilde](StileTilde.dyalog)</span>                   |  `⍭`   |  🔺   | monadic is factors; dyadic depends on `⍺`: 0=non-prime?, 1=prime?, ¯1=primes less than `⍵`, ¯2=`⍵`th prime, 4=next prime, ¯4=prev prime |
| <span id="Tilde">[Tilde](Tilde.dyalog)</span>                             |  `~`   |  🔵   | monadic allows probabilities, dyadic allows rank>1           |
| <span id="TildeDiaeresis">[TildeDiaeresis](TildeDiaeresis.dyalog)</span>           |  `⍨`   |  🔵   | allows constant operand                                      |
| <span id="Times">[Times](Times.dyalog)</span>                             |  `×`   |  🔵   | set/query letter case (lower: `¯1`, title: `0`, upper: `1`)  |
| <span id="UpArrow">[UpArrow](UpArrow.dyalog)</span>                         |  `↑`   |  🔵   | allows long `⍺`                                              |
| <span id="UpShoe">[UpShoe](UpShoe.dyalog)</span>                           |  `∩`   |  🔶   | monadic is self-classify; dyadic allows rank>1               |
| <span id="Upstile">[Upstile](Upstile.dyalog)</span>                         |  `⌈`   |  🔵   | monadic uppercases letters                                   |
| <span id="UpTack">[UpTack](UpTack.dyalog)</span>                           |  `⊥`   |  🔶   | 2 as default left argument                                   |
| <span id="Vel">[Vel](Vel.dyalog)</span>                                 |  `∨`   |  🔶   | monadic is Descending Sort                                   |
| <span id="Wedge">[Wedge](Wedge.dyalog)</span>                             |  `∧`   |  🔶   | monadic is Ascending Sort                                    |
| <span id="∆C">[∆C](∆C.dyalog)</span>                                   |  `⎕C`  |  🔺   | `fn ⎕C` applies case-insensitively, `array ⎕C` case-folds    |
| <span id="∆EM">[∆EM](∆EM.dyalog)</span>                                   |  `⎕EM` |  🔺   | Self-inverse `⎕EM`                                         |
| <span id="∆NS">[∆NS](∆NS.dyalog)</span>                                 |  `⎕NS` |  🔵   | allows `⎕NS names values` (tries to resolve `⎕OR`s)          |
| <span id="∆NSinverse">[∆NSinverse](∆NSinverse.dyalog)</span>                   |`⎕NS⍣¯1`|  🔺   | allows `(names values)←⎕NS⍣¯1⊢ns` (returns `⎕OR`s for ns/fns) |
| <span id="∆UCS">[∆UCS](∆UCS.dyalog)</span>                               | `⎕UCS` |  🔵   | scalar when monadic                                          |

\* 🔺 means new feature 🔶 means added valence 🔵 means expanded domain

---

<sup>17.0</sup> Requires Dyalog APL version 17.0  
<sup>17.1</sup> Requires Dyalog APL version 17.1
