 r←∆XDN error;Assert;gmt;t11;d11;Ö;M;y11;∆XDN
 ∆XDN←##.∆XDN
 t11←1969 7 20 20 17 40 500
 d11←25403.84561
 y11←25203 25404
 gmt←123⌶0
 Assert←{⍺←'assertion failure' ⋄ 0∊⍵:⍺ ⎕SIGNAL 8 ⋄ shy←0}
 Ö←{(⍵⍵ ⍺)⍺⍺(⍵⍵ ⍵)}
 M←{ ⍝ Fuzzy match
     ⍺≡⍵:1
     (∊a)←0⊣a←⍺ ⋄ (∊w)←0⊣w←⍵ ⋄ a≢w:0
     11::0
     ∧/⍺=Ö∊⍵:1
     ∧/1≥|⍺-Ö∊⍵:1
     ∧/1=0.7 1.5⍸⍺÷Ö∊⍵:1
     0
 }
 :Trap 0~~error
     Assert gmt M ∆XDN ⎕NULL          ⍝ scalar null
     Assert t11 M ∆XDN d11            ⍝ scalar
     Assert gmt M ∆XDN ⎕NULL          ⍝ empty vector
     Assert t11 gmt M ∆XDN d11 ⎕NULL  ⍝ vector
     Assert(0⍴⊂7⍴0)M ∆XDN ⍬           ⍝ empty vector
     Assert(↑t11 gmt)M ∆XDN⍪d11 ⎕NULL ⍝ short matrix with 0

     Assert(,'t')M't'∆XDN d11       ⍝ scalar-scalar null
     Assert'tst'M'tst'∆XDN d11      ⍝ vector-scalar null
     Assert(,'t')M't'∆XDN d11       ⍝ scalar-scalar
     Assert'tst'M'tst'∆XDN d11      ⍝ vector-scalar
     Assert(0⍴⊂,' ')M't'∆XDN ⍬      ⍝ scalar-empty vector
     Assert(0⍴⊂'   ')M'tst'∆XDN ⍬   ⍝ vector-empty vector
     Assert(,¨'tt')M't'∆XDN d11 d11 ⍝ scalar-vector

     Assert'tst' 'tst'M'tst'∆XDN d11 d11       ⍝ vector-vector
     Assert'tst' 'tst'M'tst' 'tst'∆XDN d11     ⍝ vectors-scalar
     Assert'tst' 'tst'M'tst' 'tst'∆XDN d11 d11 ⍝ vectors-vectors

     Assert(2 3⍴'tst')M(↑'tst' 'tst')∆XDN d11       ⍝ matrix-scalar
     Assert'tst' 'tst'M'tst'∆XDN d11 d11            ⍝ vector-vector
     Assert(2 3⍴'tst')M(↑'tst' 'tst')∆XDN(⍪d11 d11) ⍝ matrix-matrix
     r←1
 :Else
     r←0
 :EndTrap
