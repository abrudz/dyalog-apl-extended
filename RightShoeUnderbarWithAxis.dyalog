 RightShoeUnderbarWithAxis←{ ⍝ ⊇ as k⊇ for (⊂⍺)⌷[k]⍵
     ⎕SIGNAL 2~⎕NC'⍺'
     ↑⍺⌷[⍺⍺]¨⊂⍵
 }
