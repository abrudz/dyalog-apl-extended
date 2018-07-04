 CircleDiaeresis←{ ⍝ f⍥B and A⍥B: depth
     ⍺←{⍵ ⋄ ⍺⍺}                 ⍝ monadic: pass-thorugh
     3=⎕NC'⍵⍵':(⍵⍵ ⍺)⍺⍺(⍵⍵ ⍵)   ⍝ f⍥g: over
     2=⎕NC'⍺⍺':⊢⍺((⍺⍺⊣⊢)∇∇ ⍵⍵)⍵  ⍝ A⍥B → (A⊣⊢)⍥B
     k←⌽3⍴⌽⍵⍵                    ⍝ r → r r r    q r → r q r    p q r → p q r
     n←k<0
     d←|≡¨⊆⍵ ⍺ ⍵
     (n/k)+←n/d
     4=⎕NC'⍺':⍺⍺{⍵⍵<|≡⍵:∇¨⍵ ⋄ ⍺⍺ ⍵}(⊃k)⊢⍵ ⍝ called monadically
     b←1↓k<d
     ⍱/b:⍺ ⍺⍺ ⍵
     </b:⍺∘∇¨⍵
     >/b:∇∘⍵¨⍺
     ∧/b:⍺ ∇¨⍵
 }
