# [Dyalog APL](https://www.dyalog.com/) Extended

Extended domains of existing primitives/quad-names, and a few new ones. Requires Dyalog APL version 16.0 or higher.

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
| [BackSlash](BackSlash.dyalog)                     |  `\`   |  🔶   | `∘.f` when dyadic, allows short and/or multiple left args |
| [BackSlashBar](BackSlashBar.dyalog)               |  `⍀`   |  🔶   | `⊢∘f` when dyadic, allows short and/or multiple left args  |
| [Bullet](Bullet.dyalog)                           |  `∙`   |  🔺   | Inner product and Alternant                                  |
| [CircleDiaeresis](CircleDiaeresis.dyalog)         |  `⍥`   |  🔺   | Over and Depth                                               |
| [CircleJot](CircleJot.dyalog)                     |  `⌾`   |  🔺   | Complex/Imaginary                                            |
| [DelDiaeresis](DelDiaeresis.dyalog)               |  `⍢`   |  🔺   | Under (a.k.a. Dual)                                          |
| [DelTilde](DelTilde.dyalog)                       |  `⍫`   |  🔺   | Obverse; `⍺⍺` but with inverse `⍵⍵`                          |
| [Diaeresis](Diaeresis.dyalog)                     |  `¨`   |  🔵   | allows constant operand                                      |
| [Divide](Divide.dyalog)                           |  `÷`   |  🔵   | monadic converts letters to title case when possible         |
| [DollarSign](DollarSign.dyalog)                   |  `$`   |  🔺   | string enhancement <code>\`1\`</code>:`1⊃⍺`, <code>\`expr\`</code>:`⍎expr`, `\n`:JSON, <code>\\`</code>         |
| [DownArrow](DownArrow.dyalog)                     |  `↓`   |  🔵   | allows long `⍺`                                              |
| [DownShoe](DownShoe.dyalog)                       |  `∪`   |  🔵   | allows rank>1                                                |
| [Downstile](Downstile.dyalog)                     |  `⌊`   |  🔵   | monadic lowercases letters                                   |
| [DownTack](DownTack.dyalog)                       |  `⊤`   |  🔶   | 2s as default left argument                                  |
| [Ellipsis](Ellipsis.dyalog)                       |  `…`   |  🔺   | fill sequence gaps ([dfns's `to⍤1`](http://dfns.dyalog.com/n_to.htm)) |
| [EpsilonUnderbar](EpsilonUnderbar.dyalog)         |  `⍷`   |  🔶   | monadic is Type `∊` with `⎕ML←0`                             |
| [Equals](Equals.dyalog)                           |  `=`   |  🔶   | with TAO; monad: is-type                                     |
| [GreaterThan](GreaterThan.dyalog)                 |  `>`   |  🔶   | with TAO; monad: is-strictly-negative/is-visible             |
| [GreaterThanOrEqualTo](GreaterThanOrEqualTo.dyalog) |  `≥` |  🔶   | with TAO; monad: is non-positive/is-not-control-character    |
| house                                             |  `⌂`   |  🔺   | prefix for contents of [dfns](http://dfns.dyalog.com/n_contents.htm)  |
| [infinity](infinity.dyalog)                       |  `∞`   |  🔺   | largest integer (for use with `⍤` and `⍣`)                   |
| [Iota](Iota.dyalog)                               |  `⍳`   |  🔵   | Unicode version of [dfns's `iotag`](http://dfns.dyalog.com/n_iotag.htm) |
| [IotaUnderbar](IotaUnderbar.dyalog)               |  `⍸`   |  🔵   | allows duplicates/non-Booleans                               |
| [IotaUnderbarInverse](IotaUnderbarInverse.dyalog) | `⍸⍣¯1` |  🔵   | given `r`, finds `n` so that `r≡⍸n`                          |
| [JotDiaeresis](JotDiaeresis.dyalog)               |  `⍤`   |  🔵   | allows constant left operand, Atop with function right operand |
| [JotUnderbar](JotUnderbar.dyalog)               |  `⍛`   |  🔺   | reverse composition `X f⍛g Y` is `(f X) g Y` |
| [LeftShoe](LeftShoe.dyalog)                       |  `⊂`   |  🔵   | allows partitioning along multiple trailing axes, with short ⍺s, and inserting/appending empty partitions |
| [LeftShoeStile](LeftShoeStile.dyalog)             |  `⍧`   |  🔺   | monad: nub-sieve; dyad: count-in                             |
| [LeftShoeWithAxis](LeftShoeWithAxis.dyalog)       | `⊂[k]` |  🔵   | as `⊂`, but called with left operand                         |
| [LessThan](LessThan.dyalog)                       |  `<`   |  🔶   | with TAO; monad: is-strictly-positive/is-control-character   |
| [LessThanOrEqualTo](LessThanOrEqualTo.dyalog)     |  `≤`   |  🔶   | with TAO ; monad: is-non-negative/is-invisible               |
| [Minus](Minus.dyalog)                             |  `-`   |  🔵   | monadic flips letter case                                    |
| [macron](FIX.dyalog#L79)                          |  `¯`   |  🔵   | as prefix to name or primitive means its inverse             |
| [negativeInfinity](negativeInfinity.dyalog)       |  `¯∞`  |  🔺   | smallest integer (for use with `⍣`)                          |
| [Nand](Nand.dyalog)                               |  `⍲`   |  🔶   | monad: not all equal to type                                 |
| [Nor](Nor.dyalog)                                 |  `⍱`   |  🔶   | monad: not any equal to type                                 |
| [NotEqualTo](NotEqualTo.dyalog)                   |  `≠`   |  🔶   | with TAO; monad: is-non-type                                 |
| [Percent](Percent.dyalog)                 |  `%`   |  🔺   | `f%` and `A%`: probability-logical function (mapping arrays) |
| [QuadDiamond](QuadDiamond.dyalog)                 |  `⌺`   |  🔶   | auto-extended `⍵⍵`, allows small `⍵`, optional edge spec(s) ([0:Zero; 1:Repl; 2:Rev; 3:Mirror; 4:Wrap](http://web.science.mq.edu.au/~len/preprint/hamey-dicta2015-functional-border.pdf#page=3); -:Twist) with masks as operand's `⍺` |
| [QuestionMark](QuestionMark.dyalog)               |  `?`   |  🔵   | `⍺?¯⍵` as norm dist stddev `⍵` and optional mean `⍺←0`|
| [Rho](Rho.dyalog)                                 |  `⍴`   |  🔵   | allows omitting one dimension length with `¯1`               |
| [RightShoeUnderbar](RightShoeUnderbar.dyalog)     |  `⊇`   |  🔺   | monadic discloses if scalar, dyadic indexes sanely           |
| [RightShoeUnderbarWithAxis](RightShoeUnderbarWithAxis.dyalog) | `⊇[k]` | 🔺 | as above, but called with left operand              |
| [Root](Root.dyalog)                               |  `√`   |  🔺   | (Square) Root                                                |
| [SemicolonUnderbar](SemicolonUnderbar.dyalog)     |  `⍮`   |  🔺   | (Half) Pair; use `↑⍤⍮` to add axis                           |
| [Slash](Slash.dyalog)                             |  `/`   |  🔵   | allows short and/or multiple left args                       |
| [SlashBar](SlashBar.dyalog)                       |  `⌿`   |  🔵   | allows short and/or multiple left args                       |
| [StarDiaeresis](StarDiaeresis.dyalog)             |  `⍣`   |  🔵   | allows non-scalar right operand incl. `∞` and `¯∞` and array left operand |
| [Stile](Stile.dyalog)                             |  `\|`  |  🔵   | monadic normalises letters to lowercase (upper then lower)   |
| [StileTilde](StileTilde.dyalog)                   |  `⍭`   |  🔺   | monadic is factors; dyadic depends on `⍺`: 0=non-prime?, 1=prime?, ¯1=primes less than `⍵`, ¯2=`⍵`th prime, 4=next prime, ¯4=prev prime |
| [Tilde](Tilde.dyalog)                             |  `~`   |  🔵   | monadic allows probabilities, dyadic allows rank>1           |
| [TildeDiaeresis](TildeDiaeresis.dyalog)           |  `⍨`   |  🔵   | allows constant operand                                      |
| [Times](Times.dyalog)                             |  `×`   |  🔵   | set/query letter case (lower: `¯1`, title: `0`, upper: `1`)  |
| [UpArrow](UpArrow.dyalog)                         |  `↑`   |  🔵   | allows long `⍺`                                              |
| [UpShoe](UpShoe.dyalog)                           |  `∩`   |  🔶   | monadic is self-classify; dyadic allows rank>1               |
| [Upstile](Upstile.dyalog)                         |  `⌈`   |  🔵   | monadic uppercases letters                                   |
| [UpTack](UpTack.dyalog)                           |  `⊥`   |  🔶   | 2 as default left argument                                   |
| [Vel](Vel.dyalog)                                 |  `∨`   |  🔶   | monadic is Descending Sort                                   |
| [Wedge](Wedge.dyalog)                             |  `∧`   |  🔶   | monadic is Ascending Sort                                    |
| [∆C](∆C.dyalog)                                   |  `⎕C`  |  🔺   | `fn ⎕C` applies case-insensitively, `array ⎕C` case-folds    |
| [∆EM](∆EM.dyalog)                                   |  `⎕EM` |  🔺   | Self-inverse `⎕EM`                                         |
| [∆NS](∆NS.dyalog)                                 |  `⎕NS` |  🔵   | allows `⎕NS names values` (tries to resolve `⎕OR`s)          |
| [∆NSinverse](∆NSinverse.dyalog)                   |`⎕NS⍣¯1`|  🔺   | allows `(names values)←⎕NS⍣¯1⊢ns` (returns `⎕OR`s for ns/fns) |
| [∆UCS](∆UCS.dyalog)                               | `⎕UCS` |  🔵   | scalar when monadic                                          |

\* 🔺 means new feature 🔶 means added valence 🔵 means expanded domain

---

<sup>17.0</sup> Requires Dyalog APL version 17.0  
<sup>17.0</sup> Requires Dyalog APL version 17.1
