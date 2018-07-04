 ∆UCS←{ ⍝ ⎕UCS which is scalar when monadic
     0≠⎕NC'⍺':⍺ ⎕UCS ⍵ ⍝ dyadic case
     326≠⎕DR ⍵:⎕UCS ⍵  ⍝ shortcut if homogenous
     w⊣(∊w)←⎕UCS¨∊w←⍵
 }
