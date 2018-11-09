 StarDiaeresis←{ ⍝ ⍣ which allows non-scalar right operand
     ⍺←⊢
     2=⎕NC'⍺⍺':⍺(⍺⍺⊣⊢)⍣⍵⍵⊢⍵
     0=≡⍵⍵:⍺ ⍺⍺⍣⍵⍵⊢⍵
     ⍺∘(⍺⍺{⍺←⊢ ⋄ ⍺ ⍺⍺⍣⍵⊢⍵⍵}⍵)¨⍵⍵
 }
