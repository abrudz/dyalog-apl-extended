 IotaUnderbarInverse←{ ⍝ Monadic ⍸⍣¯1
     shape←(~⎕IO)+⊃⌈/⍵
     shape⍴¯1+{≢⍵}⌸(,⍳shape),,⍵
 }
