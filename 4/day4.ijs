data =: 1!:1 < 'input.txt'

NB. 1
x=:'\n' rxindex data
y=:#'\n' rxall data

mat=: }:"1 (x, y+1) $ data

cnt=: 3 : 0
  +/+/+/>(('SAMX' &E.);('XMAS' &E.)) "1 y
)

diag=: 3 : 0
  cnt (<"1|:(2, #y)$i.#y) { y
)

upperLeft=: 4 : 0
  (< (i.y) ; |. - 1 + i.y) { x
)

(cnt mat) + (cnt |: mat) + +/ ((diag & (mat &upperLeft))"0 i.(x+1)), ((diag & ((|: mat) &upperLeft))"0 i.x), ((diag & ((|.mat) &upperLeft))"0 i.(x+1)), (diag & ((|: (|.mat)) &upperLeft))"0 i.x
