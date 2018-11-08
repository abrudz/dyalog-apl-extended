 JotDiaeresis←{ ⍝ ⍤ rank/atop
     ⍺←⊢
     2=⎕NC'⍵⍵':⍺((⍺⍺⊣⊢)⍤⍵⍵)⍵ ⍝ f⍤B and A⍤B: rank
     ⍺⍺ ⍺ ⍵⍵ ⍵               ⍝ f⍤g: atop
 }
