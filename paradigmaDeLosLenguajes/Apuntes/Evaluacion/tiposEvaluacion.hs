import Text.Read.Lex (Number)

agarrar::Number->[a]->[a]
agarrar _ [] = []
agarrar 0 _ = []
agarrar n (x:xs)
    | n > 0 = x:agarrar (n-1) xs 

iterar::(a->a) -> a -> [a]
iterar f x = x:iterar f (f x)