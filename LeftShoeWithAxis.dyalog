 LeftShoeWithAxis←{ ⍝ ⊂[k] (as k⊂) with partitioning along multiple axes, with short ⍺s, and inserting/appending empty partitions
     0=⎕NC'⍺':⊂[⍺⍺]⍵ ⍝ monadic case
     0=≡⍺:⍺⊂[⍺⍺]⍵
     C←{ ⍝ ⊂[k] as k⊂
         0=⎕NC'⍺':⊂[⍺⍺]⍵ ⍝ monadic case
         len←⍺⍺⊃⍴1/⍵
         old←len↑⍺
         oldParts←⍵⊂[⍺⍺]⍨×old
         empty←⊂0/[⍺⍺]⍵
         PreEmpty←empty,⊂
         needed←-old~0
         head←⊃,/needed↑¨PreEmpty¨oldParts
         tail←empty⍴⍨+/len↓⍺
         head,tail
     }
     1=≡⍺:⍺(⍺⍺ C)⍵
     rank←≢⍴⍵
     ~⍺⍺∊⎕IO rank:⎕SIGNAL 11
     ⍬≡⍴⍺:(rank⍴⍺)∇ ⍵ ⍝ (⊂A1)⊂[k]B
     aLen←-⍣(rank=⍺⍺)≢⍺
     a←⍺{⍵↑⍣(1=≡⍺)⊢⍺}¨aLen↑(0.1⍴⍨rank=⍺⍺),(⍴⍵),(0.1⍴⍨⎕IO=⍺⍺) ⍝ A1 A2 A3⊂[k]B
     pairs←a{⍺ ⍵}¨aLen↑⍳rank
     ⊃(↑{⍵((⊃⌽⍺)C)⍨⊃⍺}¨)/⊂¨pairs,⊂⍵
 }
