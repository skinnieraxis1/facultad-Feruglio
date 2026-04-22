## Funciones en la estructura funcional
# Funciones en mátematica
¿Qué características tiene la función matemática?
- Unicidad
- Existencia
`F: Dom -> Img`
`F(x) = 2x`
# Funciones en Haskell
Las funciones en Haskell tienen lo llamado Transparencia Referencial:
- Independientes(Depende solo de lo que le estás pasando)
- Determinísticas(Siempre da el mismo resultado)
- Sin efecto(No produce ningún efecto externo solo devuelve un valor)
`F :: Number -> Number`
`F x = 2 * x`
Funciones parciales -> Sirven para acotar el dominio de la función

## Maneras de definir funciones

# Función 
`take :: Number -> String -> String`
`take 2 "Hola"` Aplicamos take con 2 y hola `"Ho`

`take 2` -> Una función
`f = take 2`
`f "Hola"` -> `Ho`
No podremos hacer `f = take "Hola"`
(`take` "Hola")