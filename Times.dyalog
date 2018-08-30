 Times←{ ⍝ × which allows querying letter case
     0≠⎕NC'⍺':⍺×⍵ ⍝ dyadic case
     2|⎕DR∊⍵:×⍵   ⍝ shortcut if all numeric
     w⊣(∊w)←{
         2|⎕DR ⍵:×⍵ ⍝ numeric
         11::⍵      ⍝ fallback to no-op
         (-⌿0 1∘.(⊢≠819⌶)⊢)⍵
     }¨∊w←⍵
 }
