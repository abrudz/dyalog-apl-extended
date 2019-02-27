 DownArrow←{ ⍝ ↓ which allows long ⍺ even for non-scalars
     0=⎕NC'⍺':↓⍵
     s←⍴⍵
     l←≢¨⍺ s
     ≤/l:⍺↓⍵
     t←-⊃l
     ⍺↓⍵⍴⍨t↑s,⍨1⊣¨⍺
 }
