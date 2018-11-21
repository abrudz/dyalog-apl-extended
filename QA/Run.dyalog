 Run←{ ⍝ ⍵=0:return 0 on error; ⍵=1:stop on error
     ⍵∧.{(⍎⍵)⍺}(⎕NL ¯3)~⊣/⎕SI
 }
