 Slash←{ ⍝ / which allows replication along multiple trailing axes
     0::⎕SIGNAL ⎕EN
     ncs←⎕NC↑'⍺' '⍺⍺'
     ⍺←⊢
     3≤⎕NC'⍺⍺':⍺(⍺⍺/)⍵         ⍝ {A} f/ B
     aaLen←-≢⍺⍺
     2=⊃ncs:⍵/⍺⍺
     1=≡,⍺⍺:⍺⍺/⍵                ⍝ A/B
     rank←≢⍴⍵
     ⍬≡⍴⍺⍺:(rank⍴⍺⍺)∇∇ ⍵       ⍝ (⊂A1)/B
     aa←⍺⍺{⍵↑⍣(1=≡⍺)⊢⍺}¨aaLen↑0.1,⍴⍵      ⍝ A1 A2 A3/B
     pairs←aa{⍺ ⍵}¨aaLen↑⍳rank
     ⊃{⍵/[⊃⌽⍺]⍨⊃⍺}/pairs,⊂⍵
 }
