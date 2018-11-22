 r←{fmt}∆XTS y;All7;y2;mat;cft ⍝ ⎕XTS time stamp(s) → day number(s)/text(s)
 All7←{ ⍝ Expand date to ⎕TS's 7 elements
     0=⊃⍵:123⌶0          ⍝ null is UTC+0
     ⍵,0 1 1 0 0 0 0↓⍨≢⍵ ⍝ extend to Year Jan 1st, 00:00:00.000
 }
 :Trap 0
     :If 2<(≢⍴×|∘≡)y
         ⎕SIGNAL⊂('EN' 16)('Message' 'Right argument must be scalar, vector, vector of vectors, or matrix')
     :EndIf
     cft←0{×⎕NC ⍵:⍎⍵ ⋄ ⍺}'⎕SE.VariantOptions.ComponentFileTime'
     mat←2=≢⍴y
     :If 900⌶⍬ ⍝ MONADIC: ⎕TS → IDN
         :If 2=(≢∘⍴×|∘≡)y ⍝ multi
             r←⍪⍣mat ∆XTS¨↓⍣mat⊢y
         :ElseIf ''≡0⍴y ⍝ text → ⎕TS
             ⎕SIGNAL⊂('EN' 16)('Message' 'Conversion from text requires format pattern as left argument')
         :Else ⍝ normal vector: ⎕TS → IDN
             r←(5184000×25568∘+)⍣cft{
                 y7←All7 ⍵
                 date←2 ⎕NQ #'DateToIDN'y7 ⍝ ⎕TS → integer IDN
                 time←86400000÷⍨0 60 60 1000⊥¯4↑y7 ⍝ hr:min:sec.ms → ms
                 date+time
             }y
         :EndIf
     :Else ⍝ DYADIC: fmt,text → ⎕TS; fmt,⎕TS → text
         :If 1 2∨.<(≢∘⍴,|∘≡)fmt
             ⎕SIGNAL⊂('EN' 16)('Message' 'Left argument must be scalar, vector, or vector of vectors')
         :EndIf
         y2←↓⍣mat⊢1/y
         :If ∨/1<|≡¨fmt y2 ⍝ multi
             r←(⊆fmt)∆XTS¨(⊆y2)
         :ElseIf ''≡0⍴y2 ⍝ fmt,text → ⎕TS
             ⎕SIGNAL⊂('EN' 16)('Message' 'Conversion from text is not implemented yet')
         :Else ⍝ fmt,⎕TS → text
             r←fmt(124⌶)All7 y2 ⍝ date-to-text
         :EndIf
     :EndIf
 :Else
     ⎕SIGNAL⊂⎕DMX.(('EN'EN)('Message'Message))
 :EndTrap
