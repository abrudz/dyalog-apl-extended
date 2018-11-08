 DelDiaeresis←{ ⍝ ⍢ Under a.k.a. Dual
     0::⎕SIGNAL ⎕EN
     2 2≡⎕NC↑'⍺' '⍺⍺':⎕SIGNAL⊂('EN' 2)('Message' 'Array left argument conflicts with array left operand')
     ⍺←{⍵ ⋄ ⍺⍺}      ⍝ no ⍺: pass through
     ⍵ ⍵⍵{           ⍝ pass in original ⍵
         A←⍺             ⍝ modifiable array
         11::A⊣((⍺⍺)A)←⍵ ⍝ structural inversion on error...
         NoOp←{0::0 ⋄ ⍵≡⍺⍺ ⍵} ⍝ Is ⍺⍺ a no-op? (or fails)
         ~(⍺⍺⍣¯1 ⍺⍺)NoOp ⍺:!# ⍝ ... or if imperfect inverse
         ⍺⍺⍣¯1⊢⍵         ⍝ try computational inverse
     }(⍵⍵ ⍺)⍺⍺{          ⍝ ⍺⍺, but:
         ⍺←⊢                    ⍝ no ⍺: pass through
         2=⎕NC'⍺⍺':⍺(⍺⍺⊣⊢)⍤0⊢⍵ ⍝ if array: treat as scalar fn
         ⍺ ⍺⍺ ⍵                 ⍝ else: just apply
     }⍵⍵ ⍵           ⍝ ⍺ ⍺⍺ over ⍵⍵ ⍵
 }
