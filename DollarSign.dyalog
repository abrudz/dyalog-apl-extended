 r←{vals}DollarSign str;pats;substs;Sub;SubFn ⍝ $ string enhancement ${1} for indexing into left arg, ${expr}, and \JSON escapes
 :If 900⌶⍬
     vals←⍬
 :EndIf
 pats← '\\u....|\\.' '\$\{\d+\}' '\$\{([^}'']*(''[^'']*''))*[^}'']*\}'⍝ \w ${12} ${expr}
 substs←,vals
 Sub←{
     0=⍵.PatternNum:⎕JSON'"',⍵.Match,'"'
     0::⎕SIGNAL⊂⎕DMX.(('EN'EN)('Message'Message))
     content←2(86⌶)2↓¯1↓⍵.Match ⍝ in calling env
     ⍕⍺⍺⊃⍨⍣(1=⍵.PatternNum)⊢content
 }
 SubFn←substs Sub
 r←pats ⎕R SubFn str
 
