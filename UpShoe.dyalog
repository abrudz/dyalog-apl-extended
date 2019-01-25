 UpShoe←{ ⍝ ∩ for any rank, monad is self-classify
     0=⎕NC'⍺':(∪∘.=⊢)⍳⍨⍵
     r←⌈/1,≢∘⍴¨⍺ ⍵
     (a w)←(⊢⍴⍨(-r)↑(r⍴1),⍴)¨⍺ ⍵
     r=1:a∩w
     (a w)←⊂⍤¯1¨a w
     ↑a∩w
 }
