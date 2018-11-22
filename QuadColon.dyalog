 r←{x}(f QuadColon opts)y;prev ⍝ ⍠ even for user code
 :If 900⌶⍬ ⍝ monadic?
     x←⊢
 :EndIf
 :Trap 0
     r←x(f⍠opts)y
 :Else
     :If ⎕DMX.Message≡'Invalid use of variant'
     :OrIf 1∊(⍪'⍠∧')⍷↑⎕DM
         :If ×⎕SE.⎕NC'VariantOptions'
             prev←⎕NS ⎕SE.VariantOptions
         :Else
             prev←⍬
         :EndIf
         'VariantOptions'⎕SE.⎕NS ⍬
         {⎕SE.VariantOptions.⍎⍺,'←⍵'}/¨⊂⍣(3>|≡opts)⊢opts
         r←x f y
         ⎕SE.⎕EX'VariantOptions'
         :If ≢prev
             'VariantOptions'⎕SE.⎕NS prev
         :EndIf
     :Else
         ⎕SIGNAL⊂⎕DMX.(('EN'EN)('Message'Message))
     :EndIf
 :EndTrap
