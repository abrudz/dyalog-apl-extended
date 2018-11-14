 RightShoeUnderbar←{ ⍝ ⊇ disclose if scalar / (⊂⍺)⌷⍵
     ×⎕NC'⍺':↑⍺⌷¨⊂⍵
     ⊃⍣(⍬≡⍴⍵)⊢⍵
 }
