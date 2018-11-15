:Namespace Extended
    ∇ Repl;input;ns
      ns←##.(⎕NS ⎕NL-3 4)
      :While '→'≢⊃⌽' '~⍨input←⍞⊣⍞←6⍴''
          :Trap 0
              ⎕←ns Execute input
          :Else
              ⎕←↑ns.⎕DMX.DM
          :EndTrap
      :EndWhile
    ∇

    ∇ {ref}←FIX srcFile;files;file;src;code;glyph;glyphs;names;from;to;loaded;pattern
      src←,⊂':namespace'
      loaded←5177⌶⍬
      pattern←'*.dyalog',⍨⊃⎕NPARTS loaded⊃⍨4,⍨⎕THIS⍳⍨⊃¨loaded
      files←(⍒⊃¨⊂)⊃⎕NINFO⍠1⊢pattern
      glyphs←names←0⍴⊂''
      :For file :In files
          code←⊃⎕NGET file 1
          glyph←'⍝ (\W\S*)'⎕S'\1'⊃code
          :If ≢glyph
              glyphs,←glyph
              names,←2⌷⎕NPARTS file
              src,←code
          :EndIf
      :EndFor
      code←1↓⊃⎕NGET(srcFile↓⍨7×'file://'≡7↑srcFile)1
      ref←⎕FIX glyphs To names⊢src,code
    ∇

      To←{
          mask←×⊃∘⍴¨⍺⍺
          from←'''[^'']*''' '⍝.*' '`(.)' '⊂\[([^[]]+)\]' '⊇\[([^[]]+)\]','⍣' '\W' '\w\b'⎕R' *⍣ *' '\\&' '&\\b'⊢mask/⍺⍺
          to←'&' '&' '\1' '((\1)LeftShoeWithAxis)' '((\1)RightShoeUnderbarWithAxis)','^|$'⎕R' '⊢mask/⍵⍵
          from ⎕R to⊢⍵
      }

      Execute←{
          names←##.⎕NL-3 4
          glyphs←⊃¨'⍝ (\W\S*)'⎕S'\1'¨⊃∘##.⎕NR¨names
          ⍺←##.⎕NS names
          85::⍬⊤⍬
          1 ⍺.(85⌶)glyphs To names⊢⍵
      }
:EndNamespace
