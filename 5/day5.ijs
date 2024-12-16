data=: 'b' freads 'test.txt'

'rules updates'=:data (({.~ -&1); (<@(}.~ +&1))) I. data = a:

NB. evaluate each comma-separated literal value
updates =: ". each updates
NB. replace | with commas, then evaluate
rules   =: "."1 ',' 2}"1 >rules

NB. numbers the argument must precede
getRules =: 3 : 0"0
  {.}.|:(I. y E. 0{ |: rules) { rules
)

getRules 75

(<\@|.) each updates

NB. See if all elements of y are in the rules for x
allRules =: 4 : 0
  r =. getRules x
  */+/"1(r&(E.~))"0 y
)
isGood =: 3 :0"1
  NB.({.y) brokenRules (}.y)
  ({:y) allRules }:y
)

]uu=:>4{updates
]upd=:}.(<\@|.) uu

]upd1=:>{:upd
upd1=: 29 13
]rr=:getRules {:upd1

}:upd1
(rr&(E.~))"0 }: upd1

*/+/"1(rr&(E.~))"0 }: upd1

({:upd1) allRules }: upd1
({:0{upd) allRules }: 0{upd

(0{upd) = upd1
isGood 1{upd

checkUpdate =: 3 : 0
   tails =. }.@(<\@|.) y
   >isGood each tails
)

 isGood each upd

checkUpdate >3{updates

(<\@}:@|.) each updates
