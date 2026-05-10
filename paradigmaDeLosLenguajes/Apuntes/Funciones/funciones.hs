import Text.Read.Lex (Number)

ordenarSegun :: (a -> a -> Bool)->[a]->[a]
ordenarSegun _ [] = []
ordenarSegun criterio(x:xs) =
    --                     filter :: (a -> Bool) -> a
    (ordenarSegun criterio.filter(not.criterio x)) xs 
    ++[x]++
    (ordenarSegun criterio.filter(criterio x)) xs

alCuadrado :: Number -> Number
alCuadrado x = x * x