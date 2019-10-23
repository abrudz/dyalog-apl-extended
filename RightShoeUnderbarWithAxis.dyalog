 RightShoeUnderbarWithAxis←{ ⍝ ⊇[k] as k⊇ for (⊂⍺)⌷[k]⍵
     ⎕SIGNAL 2~⎕NC'⍺'
     ⍺⌷[⍺⍺]⍤0 99⊢⍵
 }
