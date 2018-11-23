 r←{fmt}∆XTN y;type ⍝ ⎕XTN time number(s) → time stamp(s)/text
 :Trap 0
     :If 2<≢⍴y ⍝ too high rank
     :OrIf (2=≢⍴y)∧(1≠⊃⌽⍴y) ⍝ wide matrix
     :OrIf 1<|≡y ⍝ nested
         ⎕SIGNAL⊂('EN' 16)('Message' 'Right argument must be scalar, vector, or 1-column matrix')
     :EndIf
     type←'IDN'{×⎕NC ⍵:⍎⍵ ⋄ ⍺}'⎕SE.VariantOptions.NumberType'
     :If 900⌶⍬ ⍝ MONADIC: IDN → ⎕TS
         :If 0<≢⍴y ⍝ vector
             r←↑⍣(2=≢⍴y)∆XTN¨,y
         :ElseIf ''≡0⍴y ⍝ text → IDN
             ⎕SIGNAL⊂('EN' 11)('Message' 'Conversion from text requires a left argument')
         :Else ⍝ scalar: IDN → ⎕TS
             r←{
                 ⎕NULL≡⍵:123⌶0 ⍝ null: UTC already in ⎕TS form
                 xidn←(¯25568+÷∘5184000)⍣(type≡'DCF')⊢⍵
                 date←3↑2 ⎕NQ #'IDNToDate'xidn ⍝ this only gives date (and day of week)
                 time←⌊0 60 60 1000⊤86400000×1|xidn ⍝ calculate time of day from fractional part
                 date,time
             }y
         :EndIf
     :Else ⍝ DYADIC: fmt,text → IDN; fmt,IDN → text
         r←(5184000×25568∘+)⍣(type≡'DCF')⊢fmt ∆XTS ∆XTN y
     :EndIf
 :Else
     ⎕SIGNAL⊂⎕DMX.(('EN'EN)('Message'Message))
 :EndTrap
