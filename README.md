# Extensions of Dyalog APL

Mostly extended domains of existing primitives. A couple of new ones, and a generalised system function.

### How to use

```APL
]Load path/dyalog-apl-extensions/*
```

### Content

| Name                | Glyph  |  *   | Extension                                                    |
| ------------------- | :----: | :--: | ------------------------------------------------------------ |
| BackSlash           |  `\`   |  🔶   | `∘.f` when dyadic                                            |
| CircleDiaeresis     |  `⍥`   |  🔺   | Over and Depth                                               |
| DelDiaeresis        |  `⍢`   |  🔺   | Under (a.k.a. Dual)                                          |
| Diaeresis           |  `¨`   |  🔵   | allows constant operand                                      |
| DownShoe            |  `∪`   |  🔵   | allows rank>1                                                |
| Downstile           |  `⌊`   |  🔵   | monadic lowercases letters                                   |
| DownTack            |  `⊤`   |  🔶   | 2s as default left argument                                  |
| IotaUnderbar        |  `⍸`   |  🔵   | allows duplicates/non-Booleans                               |
| IotaUnderbarInverse | `⍸⍣¯1` |  🔵   | given `r`, finds `n` so that `r≡⍸n`                          |
| JotDiaeresis        |  `⍤`   |  🔵   | allows constant left operand, Atop with function right operand |
| LeftShoe            |  `⊂`   |  🔵   | allows short left arguments and each left argument element says how many partitions to begin |
| LeftShoeWithAxis    | `⊂[k]` |  🔵   | as above, but called with left operand                       |
| Minus               |  `-`   |  🔵   | monadic flips letter case                                    |
| Plus                |  `+`   |  🔵   | monadic converts letters to title case when possible         |
| Root                |  `√`   |  🔺   | (Square) Root                                                |
| Stile               |  `\|`  |  🔵   | monadic normalises letters to lowercase (upper then lower)   |
| Tilde               |  `~`   |  🔵   | monadic allows probabilities, dyadic allows rank>1           |
| TildeDiaeresis      |  `⍨`   |  🔵   | allows constant operand                                      |
| Times               |  `×`   |  🔵   | monadic queries case of letters (lower: `¯1`, title: `0`, upper: `1`) |
| UpShoe              |  `∩`   |  🔵   | allows rank>1                                                |
| Upstile             |  `⌈`   |  🔵   | monadic lowercases letters                                   |
| UpTack              |  `⊥`   |  🔶   | 2 as default left argument                                   |
| Vel                 |  `∨`   |  🔶   | monadic is Descending Sort                                   |
| Wedge               |  `∧`   |  🔶   | monadic is Ascending Sort                                    |
| ∆UCS                | `⎕UCS` |  🔵   | scalar when monadic                                          |

* 🔺 means new glyph 🔶 means added valence 🔵 means expanded domain
