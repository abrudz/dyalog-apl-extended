 r←{vals}DollarSign str;pats;Sub;SubFn;strings;nulls;marker ⍝ $ string enhancement ${1} for indexing into left arg, ${expr}, and \JSON escapes
 :If 900⌶⍬
     vals←⊢
 :EndIf
 str←'\\u....|\\.'⎕R{⎕JSON'"',⍵.Match,'"'}str
 pats←'\$\{[\d ]+\}' '\$\{([^}'']*(''[^'']*''))*[^}'']*\}'⍝ \w ${12} ${expr}
 nulls←1+⌈/0,'\x{0}+'⎕S 1⊢str
 marker←nulls⍴⎕UCS 0
 strings←⊃⍣(1≥|≡str)(nulls↓¨⊢⊂⍨marker∘⍷)¨⊆pats ⎕R marker⊢str
 Sub←{
     ⍵.i←{×⍵.⎕NC'i':1+⍵.i ⋄ ⎕IO}⍵
     3=≢⍵.Match:⍵.i⊃⍵⍵
     Content←2(86⌶)1↓⍵.Match ⍝ in calling env
     i←~⍵.PatternNum
     i∧3=⎕NC'⍺⍺':⎕SIGNAL⊂('EN' 2)('Message' 'Indexing requires a left argument')
     ⍕((1/⍺⍺)⊃⍨⊂)⍣(~⍵.PatternNum)⊢⍺⍺ Content ⍵⍵
 }

 SubFn←vals Sub strings
 :Trap 0
     r←pats ⎕R SubFn str
 :Else
     ⎕SIGNAL⊂⎕DMX.(('EN'EN)('Message'(OSError{⍵,2⌽(×≢⊃⍬⍴2⌽⍺,⊂'')/'") ("',o←⊃⍬⍴2⌽⍺}Message)))
 :EndTrap
 
