# Datos
## Caracteristicas de los datos

Number:
- Valores: [1, 2, 3, 45, ...]
- Operaciones: [+, *]

String:
- Valores: ["Hola", "Si", ...]
- Operaciones: [++, take]

Boolean: 
- Valores: [true, false]
- Operaciones: [||, &&, not]

Funcion:
- Valores: [doble, lengthm ,,,]
- operaciones: [aplicar, ., ...]

# Listas 
<sup>Tipo de dato compuesto</sup>

### Listas como tipo de dato
```bash
[1,2]
length [1,2] -> 2

:t "Hola" -> String
type String = [char]

:t [] -> []t
```
```
Length: []t -> Numer
```
Listas de Listas
```bash
ghci: 1:[2, 3]
> [1,2,3]
ghci: "h": [2,3]
> ERROR!!
ghci: []:[2, 3]
> [[2,3]]
```
Diferencia entre "" y ''
```
:t "h" -> String
:t 'h' -> char
```

## Operaciones
### Filter

```haskell
filter::(Number->Bool)->[]Number->[]Number
Filter cien [1..10]

filter (<"o") ["a", "b", "p", "q"]
> ["a", "b"]
```

### sum
```
sum [1,2,3]
> 6
sum [1..10]
> 55
```

### All
```
ALL:: (t->t) -> []t -> Bool
ALL (<8)[1, 2] -> TRUE
ALL (>8)[1, 9] -> FALSE
ALL (>8)[] -> TRUE
```

### Any
```
ANY:: (t->t) -> []t -> Bool
ANY (>8)[1, 2] -> FALSE
ANY (>8)[1, 9] -> TRUE
ANY (>8)[] -> FALSE
```

### Even
```
ANY:: (t->t) -> []t -> Bool
ANY (>8)[1, 2] -> FALSE
ANY (>8)[1, 9] -> TRUE
ANY (>8)[] -> FALSE
```


### Reduce
#### Ejemplo MARIO
Iteramos en *comer* para que el mario (modificado) vaya "creciendo"
```
Comer::Mario->Comida->Mario
```
> No existe el **efecto**, es solo input output, a misma entrada misma salida

### Foldl
Pone el primer valor, *raiz*, al principio
```
foldl (+) 10 [1, 2, 3]
> 16

foldl (+) 0 [1, 2, 3]
> 6

foldl (++) " " ["hola", "mundo"]
> " holamundo"

foldl (--) 10 [1,2,3]
> 4
```
> 0 al ser el neutro de la suma funciona como si empezaramos solo ocn la lista

### Foldr
Pone el primer valor, *raiz*, al final
```
foldr (++) " " ["hola", "mundo"]
> "holamundo "

foldr (--) 10 [1, 2, 3]
> -8
```
## Composición
### ORDEN SUPERIOR
Funciones que reciben funciones y devuelven funciones
### Aplicación parcial
Funciones que reciben funciones para ejecutar la función que devuelven y devolver la propia variable

```
(.) :: (b->c)->(a->b)->a->c --|
       (b->c)->(a->b)->(a->c) |-->Son lo mismo
```
> Todas las funciones son de 1 parametro, por lo que los últimos parametros siempre seran a despues c, no importa si aclaramos que es una función o no. <br> 
> ``a->b->c == a->(b->c) == (a->b)->c``

### EJemplo

-- Lista de numeros -> la sumatoria DE los dobles DE los pares
```
floca :: [Number] -> Number
floca = sum . map (*2) . filter even
```
> (.) -> Compone entre funciones

```
:t [even, odd]
[even, odd] :: [Numer -> Bool]
```
> - Funcion es un tipo con tipos adentro typeA -> typeB <br>
> - Lista es un tipo con tipos adentro [typeA]

## Data

```


```



