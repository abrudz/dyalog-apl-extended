 StarDiaeresis←{ ⍝ ⍣ which allows non-scalar right operand and infinities
     ⍺←⊢
     (2=⎕NC'⍺⍺')∧(0≠≡⍵⍵):⍺⍺(⍺{⍺⍺(⍺ StarDiaeresis ⍵)⍵⍵}⍵)¨⍵⍵
     2=⎕NC'⍺⍺':⍺(⍺⍺⊣⊢)∇∇ ⍵⍵⊢⍵
     obv←⍺⍺{
         aa←⍺⍺
         3::0
         ⍵∧(⎕CR'DelTilde')≡2⊃⎕CR'aa'
     }⍬

     obv∧3=⎕NC'⍵⍵':⍺(⍺⍺ ⍬).NrmFn⍣⍵⍵ ⍵
     3=⎕NC'⍵⍵':⍺ ⍺⍺⍣⍵⍵ ⍵

     0≠≡⍵⍵:⍺∘(⍺⍺{⍺←⊢ ⋄ ⍺ ⍺⍺ StarDiaeresis ⍵⊢⍵⍵}⍵)¨⍵⍵

     0=⍵⍵:⍵

     obv∧infinity≡⍵⍵:⍺(⍺⍺ ⍬).NrmFn⍣≡⍵
     infinity≡⍵⍵:⍺ ⍺⍺⍣≡⍵

     obv∧negativeInfinity≡⍵⍵:⍺(⍺⍺ ⍬).InvFn⍣≡⍵
     negativeInfinity≡⍵⍵:⍺ ⍺⍺⍣¯1⍣≡⍵

     obv∧0<⍵⍵:⍺(⍺⍺ ⍬).NrmFn⍣⍵⍵⊢⍵
     obv∧0>⍵⍵:⍺(⍺⍺ ⍬).InvFn⍣(|⍵⍵)⊢⍵

     ⍺ ⍺⍺⍣⍵⍵⊢⍵
 }
