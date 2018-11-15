 QuadDiamond←{ ⍝ ⌺ with auto-extended ⍵⍵, allowing small ⍵, optional edge specs (0:Zero; 1:Repl; 2:Rev; 3:Mirror; 8:Wrap; -:Twist) with masks as operand's ⍺
     ⍺←⊢
     wShape←⍴⍵
     wRank←≢wShape
     ⍬≡⍴⍵⍵:⍺ ⍺⍺ ∇∇(wRank⍴⍵⍵)⊢⍵
     wwShape←⍴⍵⍵
     2≠≢wwShape:⍺ ⍺⍺ ∇∇(⍵⍵,[⎕IO-0.5]1)⊢⍵
     (1=⊃⌽wwShape)∧(1<wRank):⍺ ⍵⍵ ∇∇(wRank/⍵⍵)⊢⍵
     0∊⍴⍵:↑wShape⍴⊂(shape⍴0)⍺⍺ ⍵⍴⍨shape←⊃↓⍵⍵
     ⍬≡⍴⍺⊣⍬:(wRank⍴⍺)⍺⍺ ∇∇ ⍵⍵⊢⍵

     extra←¯1+⌈2÷⍨⊃↓⍵⍵ ⍝ needed padding
     w←⊃(⊃0⍴⍵){                           ⍝┌┌─2─┐       monadic; use ↓
         (e a)←|⍺                         ⍝├ 0 0 1 1 1  dyadic; use /
         T←⌽⍣(0>⊃⌽⍺)                      ⍝└──→⍺⍺←─────┐
         Pad←⍵⍵⍉(T⊣)⍪⍵⍪(T⊢)               ⍝ ┌⍺┐  ⌺     │
         need←(1+e),1↓⍴⍵                  ⍝ ┌─────⍵⍵──┐┘
         a=0:(1↓need⍴0↑⍵)Pad(1↓need⍴0↑⊢⍵) ⍝  0 0│1 2 3 4 5 6 7 8 9│0 0  Zero
         a=1:(1↓need⍴1↑⍵)Pad(1↓need⍴1↑⊖⍵) ⍝  1 1│1 2 3 4 5 6 7 8 9│9 9  Replicate
         a=2:(⊖¯1↓need⍴⊢⍵)Pad(¯1↓need⍴⊖⍵) ⍝  2 1│1 2 3 4 5 6 7 8 9│9 8  Reverse
         a=3:(⊖⊢1↓need⍴⊢⍵)Pad(⊢1↓need⍴⊖⍵) ⍝  3 2│1 2 3 4 5 6 7 8 9│8 7  Mirror
         a=8:(⊖¯1↓need⍴⊖⍵)Pad(¯1↓need⍴⊢⍵) ⍝  8 9│1 2 3 4 5 6 7 8 9│1 2  Wrap
     }(¯1⌽⍳≢⍴⍵)/(⌽extra,¨⍺⊣0),⊂⍵          ⍝     └────⍵────────────┘

     hoods←(-extra)↓extra↓{⊂⍵}⌺⍵⍵⊢w
     monad←3∊⎕NC'⍺'
     monad∧⍵∨.>∘⍴⍨¯1+⊃↓⍵⍵:⎕SIGNAL 11   ⍝ monadic would be lossy
     masks←{⊂⍵∘{∨/[⍵]⍺}¨⌽⍳≢⍴⍵}⌺⍵⍵⊢∘1¨w
     masks(↓⍨∧↓⍨∘-)←2×extra
     masks←(+/∧\∘~)¨¨⍣monad⊢masks
     ↑masks ⍺⍺¨hoods
 }
