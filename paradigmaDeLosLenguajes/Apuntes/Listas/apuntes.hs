data Objetivo = UnOjetivo {
    nombre :: String
    vida :: Number
} deriving (Show)

gatito :: Objetivo
Gatito = UnObjetivo nombre="Gato" vida=20

alf :: Objetivo
alf = UnObjetivo nombre="Afl" vida=99

## map nombre [gatito, alf]

## filter (\objetivo => vida objetivo > 50) [gatito, alf]
## filter ((>50).vida) [gatito, alf]