 r←∆XTS error;Assert;gmt;t11;d11;Ö;M;y11;∆XTS
 ∆XTS←##.∆XTS
 t11←1969 7 20 20 17 40 500⊢1972 6 30 23 59 59 999
 d11←25403.84561⊢26479.999999988428
 y11←25203 25404⊢26298 26480
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
     Assert d11 M ∆XTS t11                 ⍝ scalar
     Assert gmt M Ö ∆XTS ⍬                 ⍝ empty vector
     Assert d11 M ∆XTS t11                 ⍝ vector
     Assert 1=y11⍸∆XTS,¨,\t11              ⍝ nested; all lengths
     Assert gmt gmt M Ö ∆XTS Ö↑⍬ ⍬         ⍝ empty matrix
     Assert(⍪d11,∆XTS gmt)M ∆XTS 2 6↑↑t11 ⍬ ⍝ short matrix with 0

     Assert(,'t')M't'∆XTS 0            ⍝ scalar-scalar null
     Assert'tst'M'tst'∆XTS 0           ⍝ vector-scalar null
     Assert(,'t')M't'∆XTS⊃t11         ⍝ scalar-scalar
     Assert'tst'M'tst'∆XTS⊃t11        ⍝ vector-scalar
     Assert(,'t')M't'∆XTS ⍬            ⍝ scalar-empty vector
     Assert'tst'M'tst'∆XTS ⍬           ⍝ vector-empty vector
     Assert(,'t')'t'∆XTS t11           ⍝ scalar-vector
     Assert'tst'M'tst'∆XTS t11         ⍝ vector-vector
     Assert(7⍴⊂'tst')M'tst'∆XTS,¨,\t11 ⍝ vector-vectors

     Assert'tst' 'tst'M'tst' 'tst'∆XTS t11     ⍝ vectors-vector
     Assert'tst' 'tst'M'tst'∆XTS t11 t11       ⍝ vector-vectors
     Assert'tst' 'tst'M'tst' 'tst'∆XTS t11 t11 ⍝ vectors-vectors

     Assert(↑'tst' 'tst')M(↑'tst' 'tst')∆XTS t11       ⍝ matrix-vector
     Assert(↑'tst' 'tst')M'tst'∆XTS(↑t11 t11)          ⍝ vector-matrix
     Assert(↑'tst' 'tst')M(↑'tst' 'tst')∆XTS(↑t11 t11) ⍝ matrix-matrix

     Assert'tst' 'tst'M(↑'tst' 'tst')∆XTS t11 t11  ⍝ matrix-vectors
     Assert(↑'tst' 'tst')M('tst' 'tst')∆XTS(↑t11 t11) ⍝ vectors-matrix
     r←1
 :Else
     r←0
 :EndTrap
