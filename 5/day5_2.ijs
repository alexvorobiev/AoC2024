updates

rules

getRules 75

]u =: >{.updates

]r =: getRules {.u

0 = # (}.u) -. r

75 checkRules 47 61 53 29

75 checkRules 47 61 53 97

({.u) checkRules }.u

({. checkRules }.) u

({. checkRules }.) u2

}.(<@|.)\|.u

>({. checkRules }.) each }.(<@|.)\|.u

}.(<@|.)\|.u2

>({. checkRules }.) each }.(<@|.)\|.u2

getRules 53

checkUpdate u

>checkUpdate each updates

(>checkUpdate each updates) # updates

]u
](-:(#u)-1) { u

(org-babel-tangle nil "day5_1.ijs")

]bu =: (-.>checkUpdate each updates) # updates

]u =. >{:bu
]getRules {.u
]}.u
{{ (}.y) -. getRules {.y }} u

id =: -@i. |."0 1 {.&1

id #u

(id #u) {{ ((-.x) # y) }}"1 u

({.(id #u)) {{ getRules {. x # y }}"1 u

]m =: (id #u) {{ ((-.x) # y) -. getRules {. x # y }}"1 u

] {{ +/ y ~: 0 }}"1 m
/: {{  +/ y ~: 0 }}"1 m

]u
(/: {{ +/ y ~: 0 }}"1 m) { u

orderUpdate each bu

(org-babel-tangle nil "day5_2.ijs")
