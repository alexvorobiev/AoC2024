data =: 1!:1 < 'test.txt'

NB. 1
mulrx=: rxcomp 'mul([[:digit:]]+,[[:digit]]+)'

m=:((mulrx;1 2) rxmatches data) rxfrom data
+/ */"1 ". > cutopen m

NB. 2
