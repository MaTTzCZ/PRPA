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

absolutniHodnota a = if a <= 0 then -a else a
absolutniHodnota2 a
    |a >= 0 = a
    |otherwise = -a

sign x
    |x > 0 = 1
    |x == 0 = 0
    |otherwise = -1

faktorial x = if x == 0 then 1 else x * faktorial(x - 1)

faktorial2 0 = 1
faktorial2 x = x * faktorial2(x - 1)

faktorial3 x
    |x == 0 = 1
    |otherwise = x * faktorial3(x - 1)

zbytek a d = if a < d then a else zbytek (a - d) d

nsd a b = if a == 0 then b else if b == 0 then a else if a > b then nsd (a - b) b else nsd a (b - a)

--[1..100]
--[100,99..1]
--[(-1),(-2)..(-10)]
--[10,20..100]
--[100,90..10]
--[x * x|x <-[1..10]]
--[[x,y,z]|x<-[1..4],y<-[1..4],z<-[1..4]]
--[x^2 |x<-[1..10],even x]

removeFirst :: Eq a => a -> [a] -> [a]
removeFirst _ [] = []
removeFirst x (y:ys)
  | x == y = ys
  | otherwise = y : removeFirst x ys

removeAll _ [] = []
removeAll x (y:ys)
  | x == y = removeAll x ys
  | otherwise = y : removeAll x ys

myReverse :: [a] -> [a]
myReverse []     = []
myReverse (x:xs) = myReverse xs ++ [x]

zvysO2 = (+2)

umocniNa6 = (^6)
umocni6 = (6^)

-- A a B jsou čísla, f je binární funkce
aplikujBinarniFunkci a b f = f a b

abf12 = aplikujBinarniFunkci 1 2

zvys [] = []
zvys (x:xs) = x+1 : zvys xs

aplikujNaPrvkySeznamu f [] = []
aplikujNaPrvkySeznamu f (x:xs) = f x : aplikujNaPrvkySeznamu f xs

fce3 x y = if x < y then x*y else x - y;
fce32 x y
    |x < y = x+y
    | x > y = x - y
    |otherwise = error"Stejne hodnoty"

zdvojLiche [] = []
zdvojLiche (x:xs)
    | odd(x) = 2*x : zdvojLiche xs
    | otherwise = x : zdvojLiche xs

nejvetsi3 a b c
    |a >= b && a >= c = a
    |b >= a && b >= c = b
    |otherwise = c

zapornaPosloupnost a
    |a <= 0 = []
    |otherwise = [(-1), (-2)..(-a)]

kazdyDruhyNula [] = []
kazdyDruhyNula (x:xs)
    | x /= 0    = x : 0 : kazdyDruhyNula xs
    | otherwise = x : kazdyDruhyNula xs




