 Plus←{ ⍝ + which tries to make title case
     0≠⎕NC'⍺':⍺+⍵ ⍝ dyadic case
     2|⎕DR∊⍵:+⍵   ⍝ shortcut if all numeric
     dnup←0 1∘.(819⌶)title←⎕UCS 453 456 459 498
     w⊣(∊w)←dnup{
         2|⎕DR ⍵:+⍵ ⍝ numeric
         11::⍵      ⍝ fallback to no-op
         ⍵∊⍺⍺:⊃⍵⍵/⍨∨⌿⍵=⍺⍺
         ⍵
     }title¨∊w←⍵
 }
