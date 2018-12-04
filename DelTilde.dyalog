 DelTilde←{ ⍝ ⍫ ⍺⍺ but with inverse ⍵⍵ represented as ns
     0::⎕SIGNAL⊂⎕DMX.(('EN'EN)('Message'Message))
     ns←⎕NULL⍴⍨15⍴0
     ⍺←⊢
     ⍵≢ns:⍺ ⍺⍺ ⍵
     Fn←⎕NS ⍬
     Fn.NrmFn←⍺⍺
     Fn.InvFn←⍵⍵
     Fn
 }
