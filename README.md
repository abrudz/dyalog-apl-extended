# Extensions of Dyalog APL

Mostly extended domains of existing primitives. A couple of new ones, and a generalised system function.

### How to use

```APL
]Load path/dyalog-apl-extensions/*
```

### Content

| Name             | Symbol | Extension                                                    |
| ---------------- | ------ | ------------------------------------------------------------ |
| ∆UCS             | `⎕UCS` | scalar when monadic                                          |
| BackSlash        | `\`    | `∘.f` when dyadic                                            |
| CircleDiaeresis  | `⍥`    | Over and Depth 🆕                                           |
| DelDiaeresis     | `⍢`    | Under (a.k.a. Dual) 🆕                                      |
| Diaeresis        | `¨`    | allows constant operand                                      |
| Downstile        | `⌊`    | monadic lowercases letters                                   |
| DownShoe         | `∪`    | allows rank>1                                                |
| DownTack         | `⊤`    | 2s as default left argument                                  |
| IotaUnderbar     | `⍸`    | allows duplicates/non-Booleans                               |
| IotaUnderbarInverse | `⍸⍣¯1` | Applied to `r` finds `a` such that `r≡⍸a`🆕              |
| JotDiaeresis     | `⍤`    | allows constant left operand, Atop with function right operand |
| LeftShoe         | `⊂`    | each left argument element says how many partitions to begin |
| LeftShoeWithAxis | `⊂[k]` | as above, but called with left operand                       |
| Minus            | `-`    | monadic flips letter case                                    |
| Plus             | `+`    | monadic converts letters to title case when possible         |
| Root             | `√`    | (Square) Root 🆕                                            |
| Stile            |<code>&#124;</code>| monadic normalises letters to lowercase (upper then lower)   |
| Tilde            | `~`    | allows non-Booleans when monadic, allows rank>1 when dyadic  |
| TildeDiaeresis   | `⍨`    | allows constant operand                                      |
| Times            | `×`    | monadic queries case of letters (lower: `¯1`, title: `0`, upper: `1`) |
| Upstile          | `⌈`    | monadic uppercases letters                                   |
| UpShoe           | `∩`    | allows rank>1                                                |
| UpTack           | `⊥`    | 2 as default left argument                                   |
| Vel              | `∨`    | monadic is Descending Sort                                   |
| Wedge            | `∧`    | monadic is Ascending Sort                                    |
