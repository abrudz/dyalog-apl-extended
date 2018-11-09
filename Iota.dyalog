 Iota←{ ⍝ ⍳ generalized (Unicode version of http://dfns.dyalog.com/n_iotag.htm)
     AlphaInterval←{⍵=' ':''         ⍝ ⍳' ' is empty vector.
         a←⎕UCS'0AaΑαАа⁰₀Ⓐ'          ⍝ Starting points
         k←⎕IO+a+.<i←1+⎕UCS ⍵        ⍝ Find starting point.
         ⍺←⎕UCS a[k-1]               ⍝ Default left argument.
         ≤/i,j←⎕UCS ⍺:⌽⍵ ∇ ⍺         ⍝ If ⍵ before ⍺, reverse.
         j↓i↑⎕UCS 0,1-⎕IO-⍳⎕UCS ⍵    ⍝ Truncate character set.
     }
    ⍝Interval←{⍺+0,+\(|d)⍴×d←⍵-⍺}    ⍝ Interval Function.
     Interval←{s←×/1↓⍵,(⍺>↑⍵)/¯1     ⍝ Calculate step size
         ⍺-s×⎕IO-⍳⌊1-(⍺-↑⍵)÷s}       ⍝ Generate Interval
     IndexOf←{i←1↓⍳⍴⍴⍺               ⍝ Enclose left arg axis.
         j←(1-⍴⍴⍺)↑⍳⍴⍴⍵              ⍝ Enclose right arg axis.
         m←(⍴⍺)[i]⌈(⍴⍵)[j]           ⍝ Pad both arguments.
         (⊂[i]m↑[i]⍺)⍳⊂[j]m↑[j]⍵     ⍝ Get index.
     }
     ischar←{0 2∊⍨10|⎕DR ⍵}          ⍝ type ∊ 82 80 160 ...
     m←0=⎕NC'⍺'                      ⍝ Monadic?
     m∧1=⍴⍴⍵:⊃∘.,/∇¨⍵                ⍝ Vector right argument
     m∧ischar ⍵:AlphaInterval ⍵      ⍝ Alpha Monadic.
     m:(×⍵)×⍳|⍵                      ⍝ Integer Monadic.
     s←0=⍴⍴⍺                         ⍝ Scalar Left Argument?
     s∧ischar ⍵:⍺ AlphaInterval ⍵    ⍝ Alpha Interval.
     s:⍺ Interval ⍵                  ⍝ Numeric Interval.
     ⍺ IndexOf ⍵                     ⍝ Dyadic.
 }
