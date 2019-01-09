 LessThan←{ ⍝ < according to TAO and with type as default left arg
     ⍺←⊃0⍴⊂⍵
     1=≡⍺ ⍵:0 0 1[⊃1↓⍋⍺ ⍵ ⍺]
     ⍺ ∇¨⍵
 }
