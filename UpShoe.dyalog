 UpShoe←{ ⍝ ∩ for any rank
     r←⌈/1,≢∘⍴¨⍺ ⍵
     (a w)←(⊢⍴⍨(-r)↑(r⍴1),⍴)¨⍺ ⍵
     r=1:a∩w
     ↑(↓a)∩(↓w)
 }
