 QuestionMark←{ ⍝ ? with ⍺?¯⍵ as normal distribution with stddev ⍵ and optional mean ⍺
     ⍺←⊢
     1<|≡⍺ ⍵ ⍵:⍺ ∇¨⍵
     0≤⍵:⍺?⍵
     ⍺+⍵×(0.5*⍨¯2×⍟?0×⍵)×1○○2×?0×⍵
 }
