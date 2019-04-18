 Rho←{ ⍝ ⍴ but allowing omitted axis with ¯1 (strict) ¯0.5 (shorten) ¯1.5 (recycle)
     0::⎕SIGNAL ⎕EN
     0=⎕NC'⍺':⍴⍵
     i←¯1 0⍸⍺
     i×←¯1*⍺=¯1
     n←×/⍴⍵
     s←n÷×/⍺/⍨0<⍺
     ⍵⍴⍨⌈@{0=i}⌊@{1=i}s@{0>⍵}⍺
 }
