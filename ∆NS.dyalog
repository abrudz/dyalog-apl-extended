 ∆NS←{ ⍝ ⎕NS which allows names values
     ⍺←⊢ ⍝ default to unnamed namespace
     11::⎕SIGNAL 11
     (0=≢⍵)∨2≥|≡⍵:{_←⍵}⍣(2∊⎕NC'⍺')⊢⍺(⊃⎕RSI).⎕NS ⍵ ⍝ default behaviour
     {_←⍵}⍣(2∊⎕NC'⍺')⊃⊃(⍺⊣⍣(2∊⎕NC'⍺')⊢⍺(⊃⎕RSI).⎕NS ⍬){ ⍝ new behaviour
         (,1)≢(⍴,≡)⍵:⍺⍺(⊃⎕RSI).⍎⍺,'←⍵ ⋄ ⍺⍺' ⍝ non-⎕OR: use value
         4 11::⍺⍺(⊃⎕RSI).⍎⍺,'←⎕NS ⍵ ⋄ ⍺⍺' ⍝ object?
         ⍺⍺(⊃⎕RSI).⍎⍺,'←⍎⎕FX ⍵ ⋄ ⍺⍺⊣⍺{⍺≡⍵:⍬ ⋄ ⎕EX ⍵}⎕FX ⍵' ⍝ function?
     }¨/⍵
 }
