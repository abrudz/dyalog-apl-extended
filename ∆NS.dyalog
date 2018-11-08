 ∆NS←{ ⍝ ⎕NS which allows names values
     ⍺←⊢ ⍝ default to unnamed namespace
     11::⎕SIGNAL 11
     (0=≢⍵)∨2≥|≡⍵:{_←⍵}⍣(2∊⎕NC'⍺')⊢⍺ ⎕NS ⍵ ⍝ default behaviour
     {_←⍵}⍣(2∊⎕NC'⍺')⊃⊃(⍺⊣⍣(2∊⎕NC'⍺')⊢⍺ ⎕NS ⍬){ ⍝ new behaviour
         (,1)≢(⍴,≡)⍵:⍺⍺⍎⍺,'←⍵ ⋄ ⍺⍺' ⍝ non-⎕OR: use value
         4 11::⍺⍺⍎⍺,'←⎕NS ⍵ ⋄ ⍺⍺' ⍝ object?
         ⍺⍺⍎⍺,'←⍎⎕FX ⍵ ⋄ ⍺⍺⊣⍺{⍺≡⍵:⍬ ⋄ ⎕EX ⍵}⎕FX ⍵' ⍝ function?
     }¨/⍵
 }
