 QuadDiamond←{ ⍝ ⌺ with auto-extended ⍵⍵, allowing small ⍵, optional edge specs (0:Zero; 1:Repl; 2:Rev; 3:Mirror; 4:Wrap; -:Twist) with masks as operand's ⍺
     ⍺←⊢
     ⍬≡⍴⍺⊣⍬:(wRank⍴⍺⍴⍨≢⍴⍵)⍺⍺ ∇∇ ⍵⍵⊢⍵

     extra←¯1+⌈2÷⍨⊃↓⍵⍵ ⍝ needed padding
     w←⊃(⊃0⍴⍵){                           ⍝┌┌─2─┐       monadic; use ↓
         (e a)←|⍺                         ⍝├ 0 0 1 1 1  dyadic; use /
         T←⌽⍣(0>⊃⌽⍺)                      ⍝└──→⍺⍺←─────┐
         Pad←⍵⍵⍉(T⊣)⍪⍵⍪(T⊢)               ⍝ ┌⍺┐  ⌺     │
         need←(1+e),1↓⍴⍵                  ⍝ ┌─────⍵⍵──┐┘
         a=0:(1↓need⍴0↑⍵)Pad(1↓need⍴0↑⊢⍵) ⍝  0 0│1 2 3 4 5│0 0  Zero
         a=1:(1↓need⍴1↑⍵)Pad(1↓need⍴1↑⊖⍵) ⍝  1 1│1 2 3 4 5│9 9  Replicate
         a=2:(⊖¯1↓need⍴⊢⍵)Pad(¯1↓need⍴⊖⍵) ⍝  2 1│1 2 3 4 5│9 8  Reverse
         a=3:(⊖⊢1↓need⍴⊢⍵)Pad(⊢1↓need⍴⊖⍵) ⍝  3 2│1 2 3 4 5│8 7  Mirror
         a=4:(⊖¯1↓need⍴⊖⍵)Pad(¯1↓need⍴⊢⍵) ⍝  4 5│1 2 3 4 5│1 2  Wrap
     }(¯1⌽⍳≢⍴⍵)/(⌽extra,¨⍺⊣0),⊂⍵          ⍝     └────⍵────┘

     hoods←(-extra)↓extra↓{⊂⍵}⌺⍵⍵⊢w
     monad←3∊⎕NC'⍺'
     monad∧⍵∨.>∘⍴⍨¯1+⊃↓⍵⍵:⎕SIGNAL 11   ⍝ monadic would be lossy
     masks←{⊂⍵∘{∨/[⍵]⍺}¨⌽⍳≢⍴⍵}⌺⍵⍵⊢∘1¨w
     masks(↓⍨∧↓⍨∘-)←2×extra
     masks←(+/∧\∘~)¨¨⍣monad⊢masks
     ↑masks ⍺⍺¨hoods
 }
