:Namespace Extended
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
              names,←⊂1⌽'  ',2⊃⎕NPARTS file
              src,←code
          :EndIf
      :EndFor
      code←1↓⊃⎕NGET(srcFile↓⍨7×'file://'≡7↑srcFile)1
      glyphs←'⍣' '\W' '\w\b'⎕R' *⍣ *' '\\&' '&\\b'⊢glyphs
      from←'''[^'']*''' '⍝.*' '`(.)' '⊂\[([^[]]+)\]',glyphs
      to←'&' '&' '\1' '((\1)LeftShoe)',names
      ref←⎕FIX src,from ⎕R to⊢code
    ∇
:EndNamespace
