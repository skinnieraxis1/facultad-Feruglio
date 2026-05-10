## Estrategias

### Estrategia afuera hacia adentro

alCuadrado (3+1)

3+1 = 4
4*4
16

### Estrategia adentro hacia afuera

alCuadrado (3+1)

(3+1)*(3+1)
4*(3+1)
4*4
16

## Sharing

Proceso interno de haskell que evalua la Transparencia referencial llamando varias veces a una misma función para comprobar que de lo mismo 

## Evaluación perezosa
Solo lo evalúa si lo utilizamos, usa la estrategia de afuera hacia adentro utilizando Sharing

```
fst::(a,b) -> a
snd::(a,b) -> b

fst(x,-)=x
snd(-,x)=x
```

# Ejemplos

````
take 3 . map (*2) . filter even $[1..]
```