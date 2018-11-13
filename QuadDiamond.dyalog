 QuadDiamond←{ ⍝ ⌺ with auto-extended ⍵⍵, allowing small ⍵, optional edge specs (0:pad; 1:mirror; ¯1=warp) with masks as operand's ⍺
     ⍺←⊢
     wShape←⍴⍵
     wRank←≢wShape
     ⍬≡⍴⍵⍵:⍺ ⍺⍺ ∇∇(wRank⍴⍵⍵)⊢⍵
     wwShape←⍴⍵⍵
     2≠≢wwShape:⍺ ⍺⍺ ∇∇(⍵⍵,[⎕IO-0.5]1)⊢⍵
     (1=⊃⌽wwShape)∧(1<wRank):⍺ ⍵⍵ ∇∇(wRank/⍵⍵)⊢⍵
     0∊⍴⍵:↑wShape⍴⊂(shape⍴0)⍺⍺ ⍵⍴⍨shape←⊃↓⍵⍵
     ⍬≡⍴⍺⊣⍬:(wRank⍴⍺)⍺⍺ ∇∇ ⍵⍵⊢⍵

     extra←¯1+⌈2÷⍨⊃↓⍵⍵  ⍝ needed padding
     w←⊃(⊃0⍴⍵){
         (e a)←⍺
         Pt←⍺⍺∘⊣¨⍣(0=a)
         t b←1 ¯1×e×a+0=a
         (¯1⌽⍳≢⍴⍵)⍉(Pt⊖⍣(1=a)⊢t↑⍵)⍪⍵⍪(Pt⊖⍣(¯1=a)⊢b↑⍵)
     }/(⌽extra,¨⍺⊣0),⊂⍵

     masks←{⊂⍵∘{∨/[⍵]⍺}¨⌽⍳≢⍴⍵}⌺⍵⍵⊢∘1¨w
     masks←((⍳¨⍴w)~¨(⌊0.5×⍴⍵)+⍳¨2×extra)⌷masks
     masks←(+/∧\∘~)¨¨⍣(3∊⎕NC'⍺')⊢masks
     ↑masks ⍺⍺¨wShape↑extra↓{⊂⍵}⌺⍵⍵⊢w
 }
