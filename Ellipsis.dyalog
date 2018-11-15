 Ellipsis←{ ⍝ … Fill sequence gap (http://dfns.dyalog.com/n_to.htm)
     ⍺←⊢
     ⍺{⎕IO←0
         Char←0 2∊⍨10|⎕DR                                  ⍝ character?
         end←⊃⍵                                            ⍝ of sub-sequence
         tail←1↓⍵                                          ⍝ to be appended
         charend←Char end                                  ⍝ character ⍵?
         default←⎕UCS⍣charend⊢0                            ⍝ default begin from 0
         ⍺←default                                         ⍝ default if monadic
         charbegins←Char¨¯2↑⍺                              ⍝ character ⍺?
         lead←-(2-charend)⌊(≢⍺)⌊+/charend=charbegins       ⍝ to be considered
         head←lead↓⍺                                       ⍝ to be prepended
         begin←(¯1⌊lead)↑¯2↑default,lead↑⍺                 ⍝ first one/two items
         charend:head,tail,⍨⎕UCS(⎕UCS begin)∇ ⎕UCS end     ⍝ char sequences
         from step←-⍨\2↑begin,begin+×end-begin             ⍝ step default is +/- 1
         head,tail,⍨from+step×⍳0⌈1+⌊(end-from)÷step+step=0 ⍝ ⍺ thru ⍵ inclusive
     }⍤1⊢⍵}
