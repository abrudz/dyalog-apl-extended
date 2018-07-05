 LeftShoe←{ ⍝ ⊂ which allows short left arguments and inserting/appending empty partitions
     0=⎕NC'⍺':⊂⍵ ⍝ monadic case
     len←⊃⌽⍴1/⍵
     old←len↑⍺
     oldParts←⍵⊂⍨×old
     empty←⊂0/⍵
     PreEmpty←empty,⊂
     needed←-old~0
     head←⊃,/needed↑¨PreEmpty¨oldParts
     tail←empty⍴⍨+/len↓⍺
     head,tail
 }
