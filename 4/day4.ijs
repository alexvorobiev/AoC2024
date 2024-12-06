data =: 1!:1 < 'test.txt'

NB. 1
x=:'\n' rxindex data
y=:#'\n' rxall data

mat=:(x, y+1) $ data

cnt=: 3 : 0
  +/+/+/>(('SAMX' &E.);('XMAS' &E.)) "1 y
)

(cnt mat) + cnt |: mat

diag=: 3 : 0
  (<"1|:2 10$i.#y) { y
)
