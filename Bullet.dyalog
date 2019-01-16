 Bullet←{ ⍝ ∙ inner product/alternant
     3≤⎕NC'⍺':⍺ ⍺⍺.⍵⍵ ⍵
     r c←⍴⍵      ⍝ matrix ⍵
     0=r:⍵⍵⌿,⍵   ⍝ zero-row case
     1≥c:⍺⍺⌿,⍵   ⍝ zero/one-column case
     M←~⍤1 0⍨⍳r  ⍝ minors
     ⍵[;⎕IO]⍺⍺.⍵⍵(∇⍤2)⍵[M;1↓⍳c]
 }
