 DownShoe←{ ⍝ ∪ for any rank
     0=⎕NC'⍺':∪⍵ ⍝ monadic case
     r←⌈/1,≢∘⍴¨⍺ ⍵
     (a w)←(⊢⍴⍨(-r)↑(r⍴1),⍴)¨⍺ ⍵
     r=1:a∪w
     ↑(↓a)∪(↓w)
 }
