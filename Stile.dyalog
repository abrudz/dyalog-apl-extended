 Stile←{ ⍝ | which allows normalising letters to lowercase
     0≠⎕NC'⍺':⍺|⍵ ⍝ dyadic case
     2|⎕DR∊⍵:|⍵   ⍝ shortcut if all numeric
     w⊣(∊w)←{
         2|⎕DR ⍵:|⍵   ⍝ numeric
         11::⍵        ⍝ fallback to no-op
         ⎕C ⍵ ⍝ normalise
     }¨∊w←⍵
 }
