--jeTrojuhelnik a b c = if a + b > c then if b + c > a then if a + c > b then True else False else False else False
jeTrojuhelnik a b c
    |a + b > c && b + c > a && a + c > b = True
    |otherwise = False

--jeTrojuhelnikAnoNe a b c = if a + b > c then if b + c > a then if a + c > b then "Ano" else "Ne" else "Ne" else "Ne"
jeTrojuhelnikAnoNe a b c
    |a + b > c && b + c > a && a + c > b = "Ano"
    |otherwise = "Ne"

dvojnasobek a = 2 * a
soucetCtvrecu a b = a*a + b*b
jeMensi a b = if a < b then "splneno" else "nesplneno"
--logickySoucet a b = if a == b then if a /= False then True else False else False
