 r←{x}StileTilde y;pco;perv ⍝ ⍭ prime functions
 'pco' 'perv'⎕CY'dfns'
 :Trap 0
     :If ×⎕NC'x'
         :Select x
         :Case ¯2
             r←pco perv y
         :Else
             r←x pco perv y
         :EndSelect
     :Else
         r←3 pco perv y
     :EndIf
 :Else
     ⎕SIGNAL⊂⎕DMX.(('EN'EN)('Message'Message))
 :EndTrap
