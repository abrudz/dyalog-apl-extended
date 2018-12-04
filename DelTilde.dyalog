 DelTilde←{ ⍝ ⍫ ⍺⍺ but with inverse ⍵⍵ represented as ns
     ns←⎕NULL⍴⍨15⍴0
     ⍺←⊢
     ⍵≢ns:⍺ ⍺⍺ ⍵
     Fn←⎕NS ⍬
     Fn.NrmFn←⍺⍺
     Fn.InvFn←⍵⍵
     Fn
 }
