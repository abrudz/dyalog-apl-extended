 ∆EM←{
     ⎕IO←0
     ⍺←⎕EM⍳32768
     dr←⎕DR ⍵
     dr=326:⍺∘∇¨⍵
     11::⎕SIGNAL 11
     2|dr:⎕EM ⍵
     ⍺∊⍨⊂⍵:⍺⍳⊂⍵
     ⎕SIGNAL 11
 }
