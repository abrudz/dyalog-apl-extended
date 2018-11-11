 LeftShoe←{ ⍝ ⊂ with partitioning along multiple trailing axes, with short ⍺s, and inserting/appending empty partitions
     0=⎕NC'⍺':⊂⍵
     0=≡⍺:⍺⊂⍵               ⍝ A⊂B
     aLen←-≢⍺
     1=≡⍺:⍵⊂⍨⍺↑⍨-aLen⌊-⊃⌽⍴⍵ ⍝ A1⊂B
     rank←≢⍴⍵
     ⍬≡⍴⍺:(rank⍴⍺)∇ ⍵       ⍝ (⊂A1)⊂B
     a←⍺{⍵↑⍣(1=≡⍺)⊢⍺}¨aLen↑0.1,⍴⍵ ⍝ A1 A2 A3⊂B
     pairs←a{⍺ ⍵}¨aLen↑⍳rank
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
     ⊃(↑{⍵((⊃⌽⍺)C)⍨⊃⍺}¨)/⊂¨pairs,⊂⍵
 }
