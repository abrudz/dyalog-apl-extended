 Wedge←{ ⍝ ∧ with sort
     0=⎕NC'⍺':(⊂⍋⍵)⌷⍵ ⍝ ascending sort
     ⍺∧⍵
 }
