 Times←{ ⍝ × which allows querying/setting letter case
     ⍺←⊣
     2|⎕DR∊⍺ ⍵:⍺×⍵   ⍝ shortcut if all numeric
     1≠≡⍺ ⍵ ⍵:⍺ ∇¨⍵  ⍝ perv
     2|⎕DR ⍺ ⍵:⍺×⍵   ⍝ both numeric: sign/multiply
     3=⎕NC'⍺':(-⌿0 1∘.(⊢≠819⌶)⊢)⍵ ⍝ monadic: query case
     326≠⎕DR ⍺ ⍵:⎕SIGNAL 11 ⍝ both char
     (d l)←⍺ ⍵⌽⍨2|⎕DR ⍵ ⍝ d←case ⋄ l←character
     1=d:1(819⌶)l    ⍝ upper
     l←819⌶l
     ¯1=d:l          ⍝ lower
     l(,⍨⊃⍨⍳⍨∘(819⌶))⎕UCS 453 456 459 498
 }
