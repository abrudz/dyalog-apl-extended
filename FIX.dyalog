:Namespace Extended
    ⎕IO←1 ⋄ ⎕ML←1
    Err←{⍞←⍵,⎕UCS 13}

    ∇ {ns}←Repl target;input;n;v
      2022⌶⍣('W'=⊃⊃# ⎕WG'APLVersion')⊤⍨⍬
      ⎕EX'⎕SE.VariantOptions'
      :If ×≢target
          ns←⍎(⍕target)##.⎕NS ##.⎕NL-3 4
      :Else
          ns←##.(⎕NS ⎕NL-3 4)
      :EndIf
     
      ⍞←'Dyalog APL/',⊃⊃v←# ⎕WG'APLVersion'
      ⍞←(⊃v)∩'-',⎕D
      ⍞←' Version ',¯2↓2⊃v
      ⍞←n←⎕UCS 13
     
      ⍞←'Serial No : 123456',n
      ⍞←'Extended Edition',n
      ⍞←'Sun' 'Mon' 'Tue' 'Wed' 'Thu' 'Fri' 'Sat'⊃⍨7|2 ⎕NQ #'DateToIDN'⎕TS
      ⍞←' ','-- ::.'@5 8 11 14 17 20∊⍕¨0 100 100 100 100 100 1000+⎕TS
      ⍞←n
     
      :While '→'≢⊃⌽' '~⍨input←⍞⊣⍞←6⍴''
          :Trap 0
              :Select ⊃input~' '
              :Case ']'
                  ⎕←⎕SE.UCMD input
              :Case ')'
                  ⎕←ns Execute'⎕'@(input⍳')')⊢input
              :Else
                  ⎕←ns Execute input
              :EndSelect
          :Else
              ⍞←((⊢↓⍨'⍎'=⊃)(⊃⎕DM),(×≢⎕DMX.Message)/': ',⎕DMX.Message),⎕UCS 13
              ⍞←('     ',10↓⊃1↓⎕DM),⎕UCS 13
              ⍞←('     ',10↓⊃2↓⎕DM),⎕UCS 13
          :EndTrap
      :EndWhile
      ns.⎕EX ##.⎕NL-3 4
    ∇

    ∇ {ref}←{mode}FIX srcFile;files;file;src;code;glyph;glyphs;names;from;to;loaded;pattern
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
              :If '}'=⊃⌽' '~⍨∊code
                  src,←code
              :Else
                  src,←'∇'∘,¨@1⊢code,⊂,'∇'
              :EndIf
          :EndIf
      :EndFor
      code←1↓⊃⎕NGET(srcFile↓⍨7×'file://'≡7↑srcFile)1
      :If 900⌶⍬
          mode←⊢
      :EndIf
      ref←mode ⎕FIX glyphs To names⊢src,code
    ∇

      To←{
          mask←×⊃∘⍴¨⍺⍺
          from←'''[^'']*''' '⍝.*' '`(.)' '⊂\[([^[]]+)\]' '⊇\[([^[]]+)\]','⍣' '\W' '\w\b'⎕R' *⍣ *' '\\&' '&\\b'⊢mask/⍺⍺
          to←'&' '&' '\1' '((\1)LeftShoeWithAxis)' '((\1)RightShoeUnderbarWithAxis)','^|$'⎕R' '⊢mask/⍵⍵
          code←'(''[^'']+'' *|"[^"]*" *)+'⎕R{
              ~'"'∊'''[^'']'''⎕R''⊢⍵.Match:⍵.Match
              1⌽')(⊆','''\)⌋⌉\(,''' '⌉|⌋'⎕R'"' ''⊢'''' '"([^"]+)"'⎕R('''' '⌉(,''\1'')⌋')⊢⍵.Match
          }⍵
          from ⎕R to⊢code
      }

      Execute←{
          names←##.⎕NL-3 4
          glyphs←⊃¨'⍝ (\W\S*)'⎕S'\1'¨⊃∘##.⎕NR¨names
          ⍺←##.⎕NS names
          85::⍬⊤⍬
          1 ⍺.(85⌶)glyphs To names⊢⍵
      }
:EndNamespace
