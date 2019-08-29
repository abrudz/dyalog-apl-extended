 r←{vals}DollarSign str;pats;substs;Sub;SubFn ⍝ $ string enhancement `1` for indexing into left arg, `expr`, and \JSON escapes, \`
 :If 900⌶⍬
     vals←⍬
 :EndIf
 pats←'`\d+`' '`[^`]+`' '\\`' '\\u....|\\.' ⍝ `12` `expr` \` \w
 substs←,vals
 Sub←{
     pn←1-⍵.PatternNum
     ¯1=pn:'`'
     ¯2=pn:⎕JSON'"',⍵.Match,'"'
     0::⎕SIGNAL⊂⎕DMX.(('EN'EN)('Message'Message))
     content←1(86⌶)1↓¯1↓⍵.Match ⍝ in calling env
     ⍕⍺⍺⊃⍨⍣pn⊢content
 }
 SubFn←substs Sub
 r←pats ⎕R SubFn str
