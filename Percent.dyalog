 Percent←{ ⍝ % probabilistic function
     t←,(1-⍺)⍺∘.×(1-⍵)⍵
     3=⎕NC'⍺⍺':⊃+/t×,∘.⍺⍺⍨0 1
     +⌿(⍺⍺⊤⍨4⍴2)×⍤¯1↑t
 }
