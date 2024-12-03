data =: 1!:1 < 'input.txt'
dj =. |: > 99999 ". &.> cutopen toJ data

NB. 1
+/ | (/: ~ (,1){"1 dj) - (/: ~ (,0){"1 dj)

NB. 2
f=: 4 : 0
y * +/ (y = x)
)

+/>(1{dj) &f &.> 0{dj
