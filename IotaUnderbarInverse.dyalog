 IotaUnderbarInverse←{ ⍝ ⍸⍣¯1 (monadic only)
     shape←(~⎕IO)+⊃⌈/⍵
     shape⍴¯1+{≢⍵}⌸(,⍳shape),,⍵
 }
