 Rho←{ ⍝ ⍴ which allows omitting a dimension with ¯1
     ⍺←⊢         ⍝ passthrough monadic
     ~¯1∊⍺,0:⍺⍴⍵ ⍝ if no ¯1: normal ⍴
     w←¯1∘=      ⍝ where the dimension is missing
     c←×/⍴⍵      ⍝ count of elements
     l←⌊c÷-×/⍺   ⍝ length of missing dimension
     ⍵⍴⍨l@w ⍺    ⍝ reshape with amended shape
 }
