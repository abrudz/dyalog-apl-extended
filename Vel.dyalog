 Vel←{ ⍝ ∨ with sort
     0=⎕NC'⍺':(⊂⍒⍵)⌷⍵ ⍝ descending sort
     ⍺∨⍵
 }
