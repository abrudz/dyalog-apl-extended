 TildeDiaeresis←{ ⍝ ⍨ which allows constant operand
     ⍺←⊢
     3=⎕NC'⍺⍺':⍺ ⍺⍺⍨⍵
     ⍺⍺
 }
