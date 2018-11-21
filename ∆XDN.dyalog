 r←{fmt}∆XDN y
 :Trap 0
     :If 2<≢⍴y ⍝ too high rank
     :OrIf (2=≢⍴y)∧(1≠⊃⌽⍴y) ⍝ wide matrix
     :OrIf 1<|≡y ⍝ nested
         ⎕SIGNAL⊂('EN' 16)('Message' 'Right argument must be scalar, vector, or 1-column matrix')
     :EndIf
     :If 900⌶⍬ ⍝ MONADIC: IDN → ⎕TS
         :If 0<≢⍴y ⍝ vector
             r←↑⍣(2=≢⍴y)∆XDN¨,y
         :ElseIf ''≡0⍴y ⍝ text → IDN
             ⎕SIGNAL⊂('EN' 11)('Message' 'Conversion from text requires a left argument')
         :Else ⍝ scalar: IDN → ⎕TS
             r←{
                 ⎕NULL≡⍵:123⌶0 ⍝ null: GMT already in ⎕TS form
                 date←3↑2 ⎕NQ #'IDNToDate'⍵ ⍝ this only gives date (and day of week)
                 time←⌊0 60 60 1000⊤86400000×1|⍵ ⍝ calculate time of day from fractional part
                 date,time
             }y
         :EndIf
     :Else ⍝ DYADIC: fmt,text → IDN; fmt,IDN → text
         r←fmt ∆XTS ∆XDN y
     :EndIf
 :Else
     ⎕SIGNAL⊂⎕DMX.(('EN'EN)('Message'Message))
 :EndTrap
