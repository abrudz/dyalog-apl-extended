 StarDiaeresis←{ ⍝ ⍣ which allows non-scalar right operand and infinities
     ns←⎕NULL⍴⍨15⍴0
     ⍺←⊢
     (2=⎕NC'⍺⍺')∧(0≠≡⍵⍵):⍺⍺(⍺{⍺⍺(⍺ StarDiaeresis ⍵)⍵⍵}⍵)¨⍵⍵
     2=⎕NC'⍺⍺':⍺(⍺⍺⊣⊢)∇∇ ⍵⍵⊢⍵
     obv←⍺⍺{
         aa←⍺⍺
         3::0
         (⎕CR'DelTilde')≡2⊃⎕CR'aa'
     }⍬

     obv∧3=⎕NC'⍵⍵':⍺(⍺⍺ ns).NrmFn⍣⍵⍵ ⍵
     3=⎕NC'⍵⍵':⍺ ⍺⍺⍣⍵⍵ ⍵

     0≠≡⍵⍵:⍺∘(⍺⍺{⍺←⊢ ⋄ ⍺ ⍺⍺ StarDiaeresis ⍵⊢⍵⍵}⍵)¨⍵⍵

     0=⍵⍵:⍵

     obv∧infinity≡⍵⍵:⍺(⍺⍺ ns).NrmFn⍣≡⍵
     infinity≡⍵⍵:⍺ ⍺⍺⍣≡⍵

     obv∧negativeInfinity≡⍵⍵:⍺(⍺⍺ ns).InvFn⍣≡⍵
     negativeInfinity≡⍵⍵:⍺ ⍺⍺⍣¯1⍣≡⍵

     obv∧0<⍵⍵:⍺(⍺⍺ ns).NrmFn⍣⍵⍵⊢⍵
     obv∧0>⍵⍵:⍺(⍺⍺ ns).InvFn⍣(|⍵⍵)⊢⍵

     ⍺ ⍺⍺⍣⍵⍵⊢⍵
 }
