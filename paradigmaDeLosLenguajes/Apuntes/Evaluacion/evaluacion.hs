type Barrio = String
type Mail = String
type Requisito = Depto -> Bool
type Busqueda = [Requisito]

data Depto = Depto {
    ambientes :: Number,
    superficie :: Number,
    precio :: Number,
    barrio :: Barrio
} deriving (Show, Eq)

data Persona = Persona {
    mail :: Mail,
    busquedas :: [Busqueda]
}

ordenarSegun :: (a -> a -> Bool)->[a]->[a]
ordenarSegun _ [] = []
ordenarSegun criterio(x:xs) =
    --                     filter :: (a -> Bool) -> a
    (ordenarSegun criterio.filter(not.criterio x)) xs 
    ++[x]++
    (ordenarSegun criterio.filter(criterio x)) xs

between :: Number -> Number -> Number -> Bool
between cotaInferior cotaSuperior valor = 
    valor <= cotaSuperior && valor >= cotaInferior

deptosDeEjemplo = [
    Depto 3 80 7500 "Palermo",
    Depto 1 45 3500 "Villa Urquiza",
    Depto 2 80 5000 "Palermo",
    Depto 1 45 5500 "Recoleta"
]

mayor :: Ord a => (b -> a) -> b -> b -> Bool
mayor ponderacion x y = ponderacion x > ponderacion y

menor :: Ord a => (b -> a) -> b -> b -> Bool
mayor ponderacion x y = ponderacion x < ponderacion y

--              (b -> a) ...
--            ::(b -> b -> Bool) -> [a]
-- ordernSegun  (mayor length)     [...]

ubicadoEn :: [Barrios] -> Requisito
ubicadoEn barrios = (`elem` barrios).barrio

cumpleRango :: (Depto -> Number) -> Number -> Number -> Requisito
cumpleRango ponderacion min max = between min max . ponderacion

cumpleBusqueda :: Busqueda -> Depto -> Bool
cumpleBusqueda busqueda depto = all ($depto) requisito
cumpleBusqueda busqueda depto = all (\req -> req depto) requisito
cumpleBusqueda busqueda depto = all (cumpleRequisito depto) requisito

cumpleRequisito :: Depto -> Requisito -> Bool
cumpleRequisito depto requisito = requisito depto
cumpleRequisito = flip($)

-- Estudiar lo anterior

buscar :: Busqueda -> (Depto -> Depto -> Bool) -> [Depto] -> [Depto]
-- Point freak
--     Busqueda -> (Depto -> Depto -> Bool) -> ([Depto] -> [Depto])
buscar busqueda filtro = ordernarSegun . filtro . filter (cumpleBusqueda busqueda)

mailsDePersonasInteresadas :: Departamento [persona]