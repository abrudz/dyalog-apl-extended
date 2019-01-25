 Tilde←{ ⍝ ~ generalised to 1-⍵ and major cells
     0=⎕NC'⍺':1-⍵ ⍝ monadic case
     r←⌈/1,≢∘⍴¨⍺ ⍵
     (a w)←(⊢⍴⍨(-r)↑(r⍴1),⍴)¨⍺ ⍵
     r=1:a~w
     (a w)←⊂⍤¯1¨a w
     ↑a~w
 }
