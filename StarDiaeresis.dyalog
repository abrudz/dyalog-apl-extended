 StarDiaeresis←{ ⍝ ⍣ which allows non-scalar right operand and infinities
     ⍺←⊢
     (2=⎕NC'⍺⍺')∧(0≠≡⍵⍵):⍺⍺(⍺{⍺⍺(⍺ StarDiaeresis ⍵)⍵⍵}⍵)¨⍵⍵
     2=⎕NC'⍺⍺':⍺(⍺⍺⊣⊢)∇∇ ⍵⍵⊢⍵
     infinity≡⍵⍵:⍺ ⍺⍺⍣≡⍵
     negativeInfinity≡⍵⍵:⍺ ⍺⍺⍣¯1⍣≡⍵
     0=≡⍵⍵:⍺ ⍺⍺⍣⍵⍵⊢⍵
     ⍺∘(⍺⍺{⍺←⊢ ⋄ ⍺ ⍺⍺ StarDiaeresis ⍵⊢⍵⍵}⍵)¨⍵⍵
 }
