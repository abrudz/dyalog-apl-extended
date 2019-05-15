 JotUnderbar←{ ⍝ ⍛ reverse composition X f⍛g Y ←→ (f x) g Y
     ⍺←{⍵ ⋄ ⍺⍺}
     (⍺⍺ ⍺)⍵⍵ ⍵
 }
