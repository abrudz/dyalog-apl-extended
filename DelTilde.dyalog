 DelTilde←{ ⍝ ⍫ ⍺⍺ but with inverse ⍵⍵ represented as ns
     ⍺←⎕NS ⍬
     ⍺.NrmFn←⍺⍺
     ⍺.InvFn←⍵⍵
     ⍺
 }
