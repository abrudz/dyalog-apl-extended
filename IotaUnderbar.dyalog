 IotaUnderbar←{ ⍝ ⍸ which allows duplicates/non-Booleans
     0=⎕NC'⍺':(,⍵)/,⍳⍴⍵
     i←⍵⍸⍨∪⍺
     i+i(+/↑)¨⊂¯1+{≢⍵}⌸⍺
 }
