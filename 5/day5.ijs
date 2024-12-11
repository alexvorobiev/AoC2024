data=: 'b' freads 'test.txt'

'rules updates'=:data (({.~ -&1); (<@(}.~ +&1))) I. data = a:

NB. evaluate each comma-separated literal value
updates =: ". each updates
NB. replace | with commas, then evaluate
rules   =: "."1 ',' 2}"1 >rules

NB. numbers the argument must precede
getRules =: 3 : 0"0
  }.|:(I. y E. 0{ |: rules) { rules
)

getRules 75

}. >0{updates
