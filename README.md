# [Dyalog APL](https://www.dyalog.com/) Extended

Extended domains of existing primitives/quad-names, and a few new ones.

### How to use

```
]Load path/dyalog-apl-extended/*
```

### Content

| Name                                              | Glyph  |   *   | Extension                                                    |
| ------------------------------------------------- | :----: | :---: | ------------------------------------------------------------ |
| [BackSlash](BackSlash.dyalog)                     |  `\`   |  🔶   | `∘.f⍨∘⍉⍨` when dyadic, allows short and/or multiple left args |
| [BackSlashBar](BackSlashBar.dyalog)               |  `⍀`   |  🔶   | `∘.f` when dyadic, allows short and/or multiple left args    |
| [CircleDiaeresis](CircleDiaeresis.dyalog)         |  `⍥`   |  🔺   | Over and Depth                                               |
| [DelDiaeresis](DelDiaeresis.dyalog)               |  `⍢`   |  🔺   | Under (a.k.a. Dual)                                          |
| [Diaeresis](Diaeresis.dyalog)                     |  `¨`   |  🔵   | allows constant operand                                      |
| [DownShoe](DownShoe.dyalog)                       |  `∪`   |  🔵   | allows rank>1                                                |
| [Downstile](Downstile.dyalog)                     |  `⌊`   |  🔵   | monadic lowercases letters                                   |
| [DownTack](DownTack.dyalog)                       |  `⊤`   |  🔶   | 2s as default left argument                                  |
| [IotaUnderbar](IotaUnderbar.dyalog)               |  `⍸`   |  🔵   | allows duplicates/non-Booleans                               |
| [IotaUnderbarInverse](IotaUnderbarInverse.dyalog) | `⍸⍣¯1` |  🔵   | given `r`, finds `n` so that `r≡⍸n`                          |
| [JotDiaeresis](JotDiaeresis.dyalog)               |  `⍤`   |  🔵   | allows constant left operand, Atop with function right operand |
| [LeftShoe](LeftShoe.dyalog)                       |  `⊂`   |  🔵   | allows short left arguments and each left argument element says how many partitions to begin |
| [LeftShoeWithAxis](LeftShoeWithAxis.dyalog)       | `⊂[k]` |  🔵   | as above, but called with left operand                       |
| [Minus](Minus.dyalog)                             |  `-`   |  🔵   | monadic flips letter case                                    |
| [Plus](Plus.dyalog)                               |  `+`   |  🔵   | monadic converts letters to title case when possible         |
| [Rho](Rho.dyalog)                                 |  `⍴`   |  🔵   | allows omitting one dimension length with `¯1`               |
| [RightShoeUnderbar](RightShoeUnderbar.dyalog)     |  `⊇`   |  🔺   | monadic discloses if scalar, dyadic indexes sanely           |
| [Root](Root.dyalog)                               |  `√`   |  🔺   | (Square) Root                                                |
| [Slash](Slash.dyalog)                             |  `/`   |  🔵   | allows short and/or multiple left args                       |
| [SlashBar](SlashBar.dyalog)                       |  `⌿`   |  🔵   | allows short and/or multiple left args                       |
| [Stile](Stile.dyalog)                             |  `\|`  |  🔵   | monadic normalises letters to lowercase (upper then lower)   |
| [Tilde](Tilde.dyalog)                             |  `~`   |  🔵   | monadic allows probabilities, dyadic allows rank>1           |
| [TildeDiaeresis](TildeDiaeresis.dyalog)           |  `⍨`   |  🔵   | allows constant operand                                      |
| [Times](Times.dyalog)                             |  `×`   |  🔵   | monadic queries case of letters (lower: `¯1`, title: `0`, upper: `1`) |
| [UpShoe](UpShoe.dyalog)                           |  `∩`   |  🔵   | allows rank>1                                                |
| [Upstile](Upstile.dyalog)                         |  `⌈`   |  🔵   | monadic uppercases letters                                   |
| [UpTack](UpTack.dyalog)                           |  `⊥`   |  🔶   | 2 as default left argument                                   |
| [Vel](Vel.dyalog)                                 |  `∨`   |  🔶   | monadic is Descending Sort                                   |
| [Wedge](Wedge.dyalog)                             |  `∧`   |  🔶   | monadic is Ascending Sort                                    |
| [∆C](∆C.dyalog)                                   |  `⎕C`  |  🔺   | `fn ⎕C` applies case-insensitively, `array ⎕C` case-folds    |
| [∆NS](∆NS.dyalog)                                 |  `⎕NS` |  🔵   | allows `⎕NS names values` (tries to resolve `⎕OR`s)          |
| [∆NSinverse](∆NSinverse.dyalog)                   |`⎕NS⍣¯1`|  🔺   | allows `(names values)←⎕NS⍣¯1⊢ns` (returns `⎕OR`s for ns/fns) |
| [∆UCS](∆UCS.dyalog)                               | `⎕UCS` |  🔵   | scalar when monadic                                          |

* 🔺 means new feature 🔶 means added valence 🔵 means expanded domain
