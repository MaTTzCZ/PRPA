dvojnasobek a = 2 * a
soucetCtvercu a b = (a*a)+(b*b)
jeMensi a b = if a < b then True else False
mensi a b = if a < b then a else b
logickySoucet a b = if a then True else if b then True else False

logickySoucet2 False False = False
logickySoucet2 True False = True
logickySoucet2 False True = True
logickySoucet2 True True = True

logickySoucet3 False False = False
logickySoucet3 _ _ = True

logickySoucin a b = if a then if b then True else False else False

logickySoucin2 False False = False
logickySoucin2 True False = False
logickySoucin2 False True = False
logickySoucin2 True True = True

logickySoucin3 True True = True
logickySoucin3 _ _ = False

absolutniHodnota a = if a <= 0 then (-a) else a
