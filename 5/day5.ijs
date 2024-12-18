data=: 'b' freads 'input.txt'

'rules updates'=:data (({.~); (<@(}.~ +&1)))  data i. a:

NB. evaluate each comma-separated literal value
updates =: ". each updates
NB. replace | with commas, then evaluate
rules   =: |:"."1 ',' 2}"1 >rules

getRules =: 3 : 0
  (y = {.rules) # {:rules
)

checkRules =: 4 : 0
  0 = # y -. getRules x
)

checkUpdate =: 3 : 0
  */ >({. checkRules }.) each }.(<@|.)\|.y
)

+/> {{ (-:(#y)-1) { y }} each (>checkUpdate each updates) # updates
