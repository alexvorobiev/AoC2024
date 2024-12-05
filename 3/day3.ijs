data =: 1!:1 < 'input.txt'

NB. 1
mulrx=: rxcomp 'mul\(([[:digit:]]+),([[:digit:]]+)\)'

dopart=: 3 : 0
  mul=.((mulrx;1 2) rxmatches y) rxfrom y
  +/ */"1 ". > cutopen mul
)

dopart data

NB. 2
div=:'do()'
d=:('\n';'') rxrplc data

dos=:(div E. div,d) <;.1 div,d

dos1=:(('don''t().*';'') &rxrplc) each dos

+/ >dopart each dos1
