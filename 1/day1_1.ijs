data =: 1!:1 < '1/input.txt'
dj =. > 99999 ". each cutopen toJ data
+/ | (/: ~ (,1){"1 dj) - (/: ~ (,0){"1 dj)
