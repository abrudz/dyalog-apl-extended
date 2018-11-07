 BackSlashBar←{ ⍝ ⍀ which allows expansion along multiple leading axes with short ⍺s and ∘.
     0::⎕SIGNAL ⎕EN
     ncs←⎕NC↑'⍺' '⍺⍺'
     2 3≤ncs:⍺∘.⍺⍺ ⍵       ⍝ A f⍀ B
     0 3≤ncs:⍺⍺⍀⍵          ⍝ f⍀ B
     w←1⌿⍵
     shape←⊃⍴w
     aaLen←≢⍺⍺
     1=≡⍺⍺:⍵⍀⍨(aaLen⌊shape)↑⍺⍺,shape⍴1 ⍝ A⍀B
     aa←⍺⍺↑¨⍨aaLen↑0.1,⍨⍴w ⍝ A1 A2 A3⍀B
     pairs←aa{⍺ ⍵}¨aaLen↑⍳≢⍴w
     Do←{
         (a k)←⍺
         a⍀[k]⍵
     }
     ⊃Do⌿pairs,⊂w
 }
