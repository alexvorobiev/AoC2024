data =: 1!:1 < 'test.txt'
dj =. |: > 99999 ". each cutopen toJ data
for_i. 0 { dj do.
  i * (+/ i = (1 { dj))
end.
