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

NB. 2
pat=: 3 3 $ 1 0 1 0 1 0 1 0 1
xmas=: 3 3 $ 'M M A S S'

rx=: ' '-.~ ,('|'& joinstring) <"1 (((]`|.`|:`(|:&|.))`:0) xmas)

p=:( 0 0 ; 0 2 ; 1 1; 2 0; 2 2 )
NB. ; p
NB. mat
NB. rx
NB. p
NB. rx
NB. p { mat

xx=:2 NB. #mat - 3
xx=: (#mat) - 3

NB.coord=: <"1 |:(25 $, )"2 (([`|:)`:0) 5 5 $,i.5
coord=: <"1 |:((xx*xx) $, )"2 (([`|:)`:0) (xx, xx) $, i.xx

shift=: 4 : 0
  +&y each x
)

sel=: 3 : 0
 rx rxeq (mat {~ y)
)

boxes=:(p &shift) each coord

+/ ; sel each boxes
