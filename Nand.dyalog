 Nand←{ ⍝ ⍲ where monadic asks for all
     0=⎕NC'⍺':∨/(⊢=∘⊃0⍴⊂)∊⍵
     ⍺⍲⍵
 }
