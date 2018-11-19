 Times←{ ⍝ × which allows querying/setting letter case
     ⍺←⊣
     2|⎕DR∊⍺ ⍵:⍺×⍵   ⍝ shortcut if all numeric
     1≠≡⍺ ⍵ ⍵:⍺ ∇¨⍵  ⍝ perv
     2|⎕DR ⍺ ⍵:⍺×⍵   ⍝ numeric: sign/multiply
     0=2|⎕DR ⍺⊣0:⎕SIGNAL 11 ⍝ non-numeric ⍺
     3=⎕NC'⍺':(-⌿0 1∘.(⊢≠819⌶)⊢)⍵ ⍝ monadic: query case
     1=⍺:1(819⌶)⍵    ⍝ upper
     w←819⌶⍵
     ¯1=⍺:w          ⍝ lower
     w(,⍨⊃⍨⍳⍨∘(819⌶))⎕UCS 453 456 459 498
 }
