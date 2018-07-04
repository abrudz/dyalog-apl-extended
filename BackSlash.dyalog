 BackSlash←{ ⍝ X∘.fY as Xf\Y
     0=⎕NC'⍺':⍺⍺\⍵ ⍝ monadic case
     ⍺∘.⍺⍺ ⍵
 }
