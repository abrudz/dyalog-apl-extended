 At←{⍺←⊢ ⍝ @ but prefix-friendly (dfns.dyalog.com/n_at.htm)
     0::⎕SIGNAL ⎕EN                  ⍝ signal any error to caller
     chk←{0⊣⎕SIGNAL ⍵↓⍺}             ⍝ ⍺-signal unless ⍵
     lfn rfn←3=⎕NC 2 2⍴'⍺⍺⍵⍵'        ⍝ operands are functions?
     2 chk lfn∨3=⎕NC'⍺':             ⍝ ⍺ and ⍺⍺ can't both be arrays
     ~lfn:⍺⍺⊣∇∇ ⍵⍵⊢⍵                 ⍝ modifier is array: ⍺@ → ⍺⊣@
     S←⍵⍵⊣⍵                          ⍝ selector array, mask or index
     rfn<1<|≡S:A⊣A[S]←⍺ ⍺⍺(A←⍵)[S]   ⍝ nested: reach/choose indexing
     pfx←{⍺≡(⍴⍺)↑⍵}                  ⍝ is a prefix?
     4 chk rfn∨1≥⍴⍴S:                ⍝ index must be vector or scalar
     5 chk rfn≤pfx/⍴¨S ⍵:            ⍝ mask shape must be prefix of ⍵ shape
     X←⍸⍣rfn⊢,S                      ⍝ numeric index selection vector
     P←,[⍳1+⍴⍴S]↑,⊂⍵                 ⍝ projection conformable with selection
     sel←(⊂X)⌷P                      ⍝ selection
     sx←{⍬⍴⍣(1=×/⍴⍵)⊢⍵}              ⍝ single → scalar for single extension
     new←sx ⍺ ⍺⍺ sel                 ⍝ new values for selection
     ext←new∘.⊣((⍴⍴new)↓⍴sel)⍴0      ⍝ extension of new values to conform
     (⍴⍵)⍴P⊣((⊂X)⌷P)←ext             ⍝ amended array.
 }
