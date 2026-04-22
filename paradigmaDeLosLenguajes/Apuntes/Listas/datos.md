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

