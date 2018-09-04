 Rho←{ ⍝ ⍴ but allowing omitted axis with ¯1
     0::⎕SIGNAL ⎕EN
     ×⎕NC'⍺':⍵⍴⍨(⌊|(×/⍴⍵)÷×/⍺)@(¯1=⊢)⍺
     ⍴⍵
 }
