 BackSlashBar←{ ⍝ ⍀ which allows expansion along multiple leading axes with short ⍺s and ∘.
     0::⎕SIGNAL ⎕EN
     ncs←⎕NC↑'⍺' '⍺⍺'
     2 3∧.≤ncs:⍺∘.⍺⍺ ⍵        ⍝ A f⍀ B
     0 3∧.≤ncs:⍺⍺⍀⍵           ⍝ f⍀ B
     w←1⌿⍵
     shape←⊃⍴w
     2=⊃ncs:⍵⍀⍺⍺
     1=≡⍺⍺:(,⊂⍺⍺)∇∇ ⍵ ⍝ A⍀B
     rank←≢⍴w
     ⍬≡⍴⍺⍺:(rank⍴⍺⍺)∇∇ w      ⍝ (⊂A1)\B
     aaLen←≢⍺⍺
     aa←⍺⍺,¨1⍴¨⍨aaLen↑0.1,⍨⍴w ⍝ A1 A2 A3⍀B
     aa↑¨⍨←(+\¨×aa)⍳¨aaLen↑⍴w
     pairs←aa{⍺ ⍵}¨aaLen↑⍳rank
     ⊃{⍵⍀[⊃⌽⍺]⍨⊃⍺}⌿pairs,⊂w
 }
