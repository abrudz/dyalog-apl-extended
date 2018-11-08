 ∆C←{ ⍝ ⎕C Case-insensitive/case-fold
     F←{⍺←0 ⋄ 1=≡⍺ ⍵ ⍵:⍺(819⌶)⍵ ⋄ ⍺ ∇¨⍵} ⍝ Fold
     N←F 1∘F ⍝ Normalise
     s←⎕NC↑'⍺' '⍺⍺' ⍝ syntax
     0 3≡s:⍺⍺ N ⍵ ⍝ apply to normalised argument
     2 3≡s:(N ⍺)⍺⍺(N ⍵) ⍝ apply to normalised arguments
     0 2≡s:⍺⍺ F ⍵ ⍝ fold to argument
     2 2≡s:⍺ F N⍣⍺⍺⊢⍵ ⍝ fold optionally normalised argument
 }
