 r←{fmt}∆XTN_ y ⍝ ⎕XTN_ time number(s) → time stamp(s)/text
 ;y2;type;date;time

 :Trap 0
     :If 2<≢⍴y ⍝ too high rank
     :OrIf (2=≢⍴y)∧(1≠⊃⌽⍴y) ⍝ wide matrix
     :OrIf 1<|≡y ⍝ nested
         ⎕SIGNAL⊂('EN' 16)('Message' 'Right argument must be scalar, vector, or 1-column matrix')
     :EndIf
     type←'IDN'{×⎕NC ⍵:⍎⍵ ⋄ ⍺}'⎕SE.VariantOptions.NumberType'
     :If 900⌶⍬ ⍝ MONADIC: IDN → ⎕TS
         :If 0<≢⍴y ⍝ vector
             :If ×⎕NC'∆XTN_'
                 r←↑⍣(2=≢⍴y)∆XTN_¨,y
             :Else
                 r←↑⍣(2=≢⍴y)##.∆XTN_¨,y
             :EndIf
         :ElseIf ''≡0⍴y ⍝ text → IDN
             ⎕SIGNAL⊂('EN' 11)('Message' 'Conversion from text requires a left argument')
         :Else ⍝ scalar: IDN → ⎕TS
             :If ⎕NULL≡y
                 r←123⌶0 ⍝ null: UTC already in ⎕TS form
             :Else
                 :Select type
                 :Case 'NET' '.NET'
                     y2←¯1+(⌊y)+(1||y)-(×y)×0=⌊y
                 :CaseList 'Excel' '123'
                     :If y<0
                         ⎕SIGNAL⊂('EN' 11)('Message'(type,' dates must be in the year 1900 or later'))
                     :EndIf
                     y2←y-59<⌊y
                 :Case 'DCF'
                     y2←25568+y÷5184000
                     y2←y2-(y2<0)∧(0≠1|y2)
                 :Case 'UNIX'
                     y2←25568+y÷86400
                     y2←y2-(y2<0)∧(0≠1|y2)
                 :Else ⍝ "IDN"
                     y2←y-(y<0)∧(0≠1|y)
                 :EndSelect
                 date←3↑2 ⎕NQ #'IDNToDate'y2 ⍝ this only gives date (and day of week)
                 time←⌊0 60 60 1000⊤86400000×1|y2 ⍝ calculate time of day from fractional part
                 r←date,time
                 :If (⊂type)∊'Excel' '123'
                     :Select ⌊y
                     :Case 0
                         r←1900 1 0,time
                     :Case 60
                         r←1900 2 29,time
                     :EndSelect
                 :Else
                     r←date,time
                 :EndIf
             :EndIf
         :EndIf
     :Else ⍝ DYADIC: fmt,IDN → text
         :If ×⎕NC'∆XTN_'
             r←fmt ∆XTS_ ∆XTN_ y
         :Else
             r←fmt ##.∆XTS_ ##.∆XTN_ y
         :EndIf
     :EndIf
 :Else
     ⎕SIGNAL⊂⎕DMX.(('EN'EN)('Message'Message))
 :EndTrap
