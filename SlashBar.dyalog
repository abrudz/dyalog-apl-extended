 SlashBar←{ ⍝ ⌿ which allows replication along multiple leading axes
     0::⎕SIGNAL ⎕EN
     ⍺←⊢
     3≤⎕NC'⍺⍺':⍺(⍺⍺⌿)⍵      ⍝ A f⌿ B
     aaLen←≢⍺⍺
     1=≡,⍺⍺:⍺⍺⌿⍵            ⍝ A⌿B
     rank←≢⍴⍵
     ⍬≡⍴⍺⍺:(rank⍴⍺⍺)∇∇ ⍵    ⍝ (⊂A1)⌿B
     aa←⍺⍺{⍵↑⍣(1=≡⍺)⊢⍺}¨aaLen↑0.1,⍨⍴⍵  ⍝ A1 A2 A3⌿B
     pairs←aa{⍺ ⍵}¨aaLen↑⍳rank
     ⊃{⍵⌿[⊃⌽⍺]⍨⊃⍺}⌿pairs,⊂⍵
 }
