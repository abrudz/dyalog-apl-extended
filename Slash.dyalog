 Slash←{ ⍝ / which allows replication along multiple trailing axes with short ⍺s
     0::⎕SIGNAL ⎕EN
     ⍺←⊢
     3≤⎕NC'⍺⍺':⍺(⍺⍺/)⍵         ⍝ {A} f/ B
     aaLen←-≢⍺⍺
     0=≡⍺⍺:⍺⍺/⍵⍵               ⍝ A/B
     1=≡⍺⍺:⍵/⍨⍺⍺↑⍨-aaLen⌊-⊃⌽⍴⍵
     aa←⍺⍺↑¨⍨aaLen↑0.1,⍴⍵      ⍝ A1 A2 A3/B
     pairs←aa{⍺ ⍵}¨aaLen↑⍳≢⍴⍵
     Do←{
         (a k)←⍺
         a/[k]⍵
     }
     ⊃Do/pairs,⊂⍵
 }
