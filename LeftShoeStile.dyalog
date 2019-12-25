LeftShoeStile←{ ⍝ ⍧ nub sieve;count in
     0=⎕NC'⍺':(⍳≢⍵)=⍳⍨⍵⍳⍨∪⍵ ⍝ nub sieve
     r←⌈/1,≢∘⍴¨⍺ ⍵
     (a w)←(⊢⍴⍨(-r)↑(r⍴1),⍴)¨⍺ ⍵
     +/(⊂⍤¯1⊢a)∘.≡⊂⍤(¯1+≢⍴⍺)⊢w
 }
