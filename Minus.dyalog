 Minus←{ ⍝ - which allows flipping character case
     0≠⎕NC'⍺':⍺-⍵ ⍝ dyadic case
     2|⎕DR∊⍵:-⍵   ⍝ shortcut if all numeric
     w⊣(∊w)←{
         2|⎕DR ⍵:-⍵ ⍝ numeric
         11::⍵      ⍝ fallback to no-op
         ⍵∊a←0 1(819⌶)¨⍵:⊃a~⍵
         ⍵      ⍝ flip case
     }¨∊w←⍵
 }
