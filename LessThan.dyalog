 LessThan←{ ⍝ < according to TAO and with 0 as default left arg
     ⍺←0
     1=≡⍺ ⍵:0 0 1[⊃1↓⍋⍺ ⍵ ⍺]
     ⍺ ∇¨⍵
 }