 RightShoeUnderbar←{ ⍝ ⊇ disclose if scalar / (⊂⍺)⌷⍵
     ×⎕NC'⍺':⍺⌷⍤0 99⊢⍵
     ⊃⍣(⍬≡⍴⍵)⊢⍵
 }
