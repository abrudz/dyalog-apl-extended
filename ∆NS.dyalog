 ∆NS←{ ⍝ allows names ⎕NS values
     ~×⎕NC'⍺':⎕NS ⍵ ⍝ regular monadic functionality
     1≥|≡⍺:n←⍺ ⎕NS ⍵ ⍝ regular dyadic functionality
     n⊣(n←⎕NS ⍬).(⍎⍕⍺'←⍵') ⍝ names ⎕NS values
 }
