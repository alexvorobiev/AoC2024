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

(-.>checkUpdate each updates) # updates
