 SlashBar←{ ⍝ ⌿ which allows replication along multiple leading axes with short ⍺s
     0::⎕SIGNAL ⎕EN
     ⍺←⊢
     3≤⎕NC'⍺⍺':⍺(⍺⍺⌿)⍵      ⍝ A f⌿ B
     aaLen←≢⍺⍺
     0=≡⍺⍺:⍺⍺⌿⍵             ⍝ A⌿B
     1=≡⍺⍺:⍵⌿⍨⍺⍺↑⍨aaLen⌈⊃⍴⍵
     rank←≢⍴⍵
     ⍬≡⍴⍺⍺:(rank⍴⍺⍺)∇∇ ⍵    ⍝ (⊂A1)⌿B
     aa←⍺⍺{⍵↑⍣(1=≡⍺)⊢⍺}¨aaLen↑0.1,⍨⍴⍵  ⍝ A1 A2 A3⌿B
     pairs←aa{⍺ ⍵}¨aaLen↑⍳rank
     ⊃{⍵⌿[⊃⌽⍺]⍨⊃⍺}⌿pairs,⊂⍵
 }
