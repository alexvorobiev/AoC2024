data =: 1!:1 < 'input.txt'
dj =. 99999 ". &.> cutopen toJ data

NB. 1
mono=: 3 : 0"0
  diff=.(}. >y) - }: >y
  < (1 <: <./diff) * 3 >: >./diff
)

monoUpDown=: 3 : 0
  (> mono y) + > mono -&.> y
)

+/ monoUpDown dj

NB. 2
drop1=: 4 : 0
  (x {.y) , ((-#y) + x + 1) {.y
)

dropAll=: 3 : 0
  <"1(drop1 & y)"0 i.#y
)

safe=: 3 : 0
  +./ monoUpDown dropAll >y
)

+/ safe"0 dj
