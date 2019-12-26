 StarDiaeresis←{ ⍝ ⍣ which allows non-scalar right operand and infinities
     ns←⎕NULL⍴⍨15⍴0
     ⍺←⊢
     val←{2=⎕NC'⍺⍺':⍺⍺ ⋄ 0}
     (2=⎕NC'⍺⍺')∧(0≠≡⍵⍵ val ⍬):⍺⍺(⍺{⍺⍺(⍺ StarDiaeresis ⍵)⍵⍵}⍵)¨⍵⍵
     2=⎕NC'⍺⍺':⍺(⍺⍺⊣⊢)∇∇ ⍵⍵⊢⍵
     obv←⍺⍺{
         aa←⍺⍺ ns
         3 4::0
         9=⎕nc'aa':aa.Obv
         0
     }⍬

     obv∧3=⎕NC'⍵⍵':⍺(⍺⍺ ns).NrmFn⍣⍵⍵ ⍵
     3=⎕NC'⍵⍵':⍺ ⍺⍺⍣⍵⍵ ⍵

     0≠≡⍵⍵:⍺∘(⍺⍺{⍺←⊢ ⋄ ⍺ ⍺⍺ StarDiaeresis ⍵⊢⍵⍵}⍵)¨⍵⍵

     0=⍵⍵:⍵

     obv∧infinity≡⍵⍵:⍺(⍺⍺ ns).NrmFn⍣≡⍵
     infinity≡⍵⍵:⍺ ⍺⍺⍣≡⍵

     obv∧negativeInfinity≡⍵⍵:⍺(⍺⍺ ns).InvFn⍣≡⍵
     negativeInfinity≡⍵⍵:⍺ ⍺⍺⍣¯1⍣≡⍵

     obv∧0<⍵⍵:⍺((⍺⍺ ns).NrmFn⍣⍵⍵)DelTilde((⍺⍺ ns).InvFn⍣⍵⍵)⊢⍵
     obv∧0>⍵⍵:⍺((⍺⍺ ns).InvFn⍣(|⍵⍵))DelTilde((⍺⍺ ns).NrmFn⍣(|⍵⍵))⊢⍵

     ⍺((⍺⍺⍣⍵⍵)DelTilde(⍺⍺⍣¯1⍣⍵⍵))⍵
 }
