 r←{fmt}∆XTS y;All7;fmt2;y2;matFmt;matY
 All7←{ ⍝ Expand date to ⎕TS's 7 elements
     0=⊃⍵:123⌶0          ⍝ null is GMT+0
     ⍵,0 1 1 0 0 0 0↓⍨≢⍵ ⍝ extend to Year Jan 1st, 00:00:00.000
 }
 :Trap 0
     :If 2<(≢⍴×|∘≡)y
         ⎕SIGNAL⊂('EN' 16)('Message' 'Right argument must be scalar, vector, vector of vectors, or matrix')
     :EndIf
     :If 900⌶⍬ ⍝ MONADIC: ⎕TS → IDN
         :If 2=(≢∘⍴×|∘≡)y ⍝ multi
             r←⍪⍣(2=≢⍴y)∆XTS¨↓⍣(2=≢⍴y)⊢y
         :ElseIf ''≡0⍴y ⍝ text → ⎕TS
             ⎕SIGNAL⊂('EN' 16)('Message' 'Conversion from text requires format pattern as left argument')
         :Else ⍝ normal vector: ⎕TS → IDN
             r←{
                 y7←All7 ⍵
                 date←2 ⎕NQ #'DateToIDN'y7 ⍝ ⎕TS → integer IDN
                 time←86400000÷⍨0 60 60 1000⊥¯4↑y7 ⍝ hr:min:sec.ms → ms
                 date+time
             }y
         :EndIf
     :Else ⍝ DYADIC: fmt,text → ⎕TS; fmt,⎕TS → text
         :If 2<(≢⍴×|∘≡)fmt
             ⎕SIGNAL⊂('EN' 16)('Message' 'Left argument must be scalar, vector, vector of vectors, or matrix')
         :EndIf
         matFmt←2=≢⍴fmt
         fmt2←↓⍣matFmt⊢1/fmt
         matY←2=≢⍴y
         y2←↓⍣matY⊢1/y
         :If ∨/1<|≡¨fmt2 y2 ⍝ multi
             r←↑⍣(matY∨matFmt∧1=≡y)⊢(⊆fmt2)∆XTS¨(⊆y2)
         :ElseIf ''≡0⍴y2 ⍝ fmt,text → ⎕TS
             ⎕SIGNAL⊂('EN' 16)('Message' 'Conversion from text is not implemented yet')
         :Else ⍝ fmt,⎕TS → text
             r←fmt2(124⌶)All7 y2 ⍝ date-to-text
         :EndIf
     :EndIf
 :Else
     ⎕SIGNAL⊂⎕DMX.(('EN'EN)('Message'Message))
 :EndTrap
