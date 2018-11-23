 r←∆XTS error;Assert;gmt;t60;d60;Ö;M;y60;∆XTS
 ∆XTS←##.∆XTS
 t60←1972 6 30 23 59 59 999
 d60←26479.999999988428
 y60←26298 26480
 gmt←123⌶0
 Assert←{⍺←'assertion failure' ⋄ 0∊⍵:⍺ ⎕SIGNAL 8 ⋄ shy←0}
 Ö←{(⍵⍵ ⍺)⍺⍺(⍵⍵ ⍵)}
 M←{
     ⍺≡⍵:1
     (∊a)←0⊣a←⍺ ⋄ (∊w)←0⊣w←⍵ ⋄ a≢w:0
     11::0
     ∧/⍺=Ö∊⍵:1
     ∧/1≥|⍺-Ö∊⍵:1
     ∧/1=0.7 1.5⍸⍺÷Ö∊⍵:1
     0
 }
 :Trap 0~~error
     Assert gmt M Ö ∆XTS 0                 ⍝ scalar null
     Assert d60 M ∆XTS t60                 ⍝ scalar
     Assert gmt M Ö ∆XTS ⍬                 ⍝ empty vector
     Assert d60 M ∆XTS t60                 ⍝ vector
     Assert 1=y60⍸∆XTS,¨,\t60              ⍝ nested; all lengths
     Assert gmt gmt M Ö ∆XTS Ö↑⍬ ⍬         ⍝ empty matrix
     Assert(⍪d60,∆XTS gmt)M ∆XTS 2 6↑↑t60 ⍬ ⍝ short matrix with 0

     Assert(,'t')M't'∆XTS 0            ⍝ scalar-scalar null
     Assert'tst'M'tst'∆XTS 0           ⍝ vector-scalar null
     Assert(,'t')M't'∆XTS⊃t60          ⍝ scalar-scalar
     Assert'tst'M'tst'∆XTS⊃t60         ⍝ vector-scalar
     Assert(,'t')M't'∆XTS ⍬            ⍝ scalar-empty vector
     Assert'tst'M'tst'∆XTS ⍬           ⍝ vector-empty vector
     Assert(,'t')'t'∆XTS t60           ⍝ scalar-vector
     Assert'tst'M'tst'∆XTS t60         ⍝ vector-vector
     Assert(7⍴⊂'tst')M'tst'∆XTS,¨,\t60 ⍝ vector-vectors

     Assert'tst' 'tst'M'tst' 'tst'∆XTS t60     ⍝ vectors-vector
     Assert'tst' 'tst'M'tst'∆XTS t60 t60       ⍝ vector-vectors
     Assert'tst' 'tst'M'tst' 'tst'∆XTS t60 t60 ⍝ vectors-vectors

     Assert'tst' 'tst'M'tst'∆XTS(↑t60 t60)         ⍝ vector-matrix
     Assert'tst' 'tst'M('tst' 'tst')∆XTS(↑t60 t60) ⍝ vectors-matrix
     r←1
 :Else
     r←0
 :EndTrap
