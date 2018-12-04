 r←{fmt}∆XTS_ y ⍝ ⎕XTS_ time stamp(s) → day number(s)/text(s)
 ;All7;y2;mat;type;prop;y7;date;time

 All7←{ ⍝ Expand date to ⎕TS's 7 elements
     ×⊃⍵:⍵,0 1 1 0 0 0 0↓⍨≢⍵ ⍝ extend to Year Jan 1st, 00:00:00.000
     utc←{
         opts←'NumberType' 'IDN'
         ×⎕NC'QuadColon':∆XTS QuadColon opts⊢⍵
         ##.∆XTS ##.QuadColon opts⊢⍵
     }123⌶0
     unc←utc+1440÷⍨60⊥3↓5↑⍵ ⍝ null is UTC+hh:mm
     {
         opts←'NumberType' 'IDN'
         ×⎕NC'QuadColon':∆XTN QuadColon opts⊢⍵
         ##.∆XTN ##.QuadColon opts⊢⍵
     }unc
 }
 :Trap 0
     :If 2<(≢⍴×|∘≡)y
         ⎕SIGNAL⊂('EN' 16)('Message' 'Right argument must be scalar, vector, vector of vectors, or matrix')
     :EndIf
     type←'IDN'{×⎕NC ⍵:⍎⍵ ⋄ ⍺}'⎕SE.VariantOptions.NumberType'
     prop←2{×⎕NC ⍵:⍎⍵ ⋄ ⍺}'⎕SE.VariantOptions.Proposal'
     mat←2=≢⍴y
     :If 900⌶⍬ ⍝ MONADIC: ⎕TS → IDN
         :If 2=(≢∘⍴×|∘≡)y ⍝ multi
             r←⍪⍣mat ∆XTS¨↓⍣mat⊢y
         :ElseIf ''≡0⍴y ⍝ text → ⎕TS
             ⎕SIGNAL⊂('EN' 16)('Message' 'Conversion from text requires format pattern as left argument')
         :Else ⍝ normal vector: ⎕TS → IDN
             y7←All7 y
             :If (⊂type)∊'Excel' '123'
                 :If 1900>⊃y7
                     ⎕SIGNAL⊂('EN' 11)('Message' 'Excel dates must be in the year 1900 or later')
                 :EndIf
                 :If 1900 2 29≡3↑y7
                     y7←1900 2 28,3↓y7
                 :EndIf
             :EndIf
             date←2 ⎕NQ #'DateToIDN'y7 ⍝ ⎕TS → integer IDN
             time←86400000÷⍨0 60 60 1000⊥¯4↑y7 ⍝ hr:min:sec.ms → ms
             r←date+time
             :Select type
             :Case 'DCF'
                 r←5184000×25568+r
             :CaseList 'NET' '.NET'
                 r←(⌊+1||)r+1-(¯2<r)∧(r<¯1)
             :CaseList 'Excel' '123'
                 r←r+(r≥59)-1900 2 28≡3↑All7 y
             :Case 'UNIX'
                 r←86400×r-25568
             :Else ⍝ "IDN"
             :EndSelect
         :EndIf
     :Else ⍝ DYADIC: fmt,⎕TS → text
         :If 1 2∨.<(≢∘⍴,|∘≡)fmt
             ⎕SIGNAL⊂('EN' 16)('Message' 'Left argument must be scalar, vector, or vector of vectors')
         :EndIf
         y2←↓⍣mat⊢1/y
         :If ∨/1<|≡¨fmt y2 ⍝ multi
             r←(⊆fmt)∆XTS¨(⊆y2)
         :ElseIf ''≡0⍴y2 ⍝ fmt,text → ⎕TS
             ⎕SIGNAL⊂('EN' 16)('Message' 'Conversion from text is not implemented yet')
         :Else ⍝ fmt,⎕TS → text
             r←fmt((123+prop)⌶)All7 y2 ⍝ date-to-text
         :EndIf
     :EndIf
 :Else
     ⎕SIGNAL⊂⎕DMX.(('EN'EN)('Message'Message))
 :EndTrap
