 IotaUnderbarInverse←{ ⍝ Monadic ⍸⍣¯1
     shape←⊃⌈/⍵
     shape⍴¯1+{≢⍵}⌸(,⍳shape),,⍵
 }
