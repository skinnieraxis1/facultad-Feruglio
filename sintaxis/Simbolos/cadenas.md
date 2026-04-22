# Cadenas Especiales
Cadena vacía
- ()
- 
- Símbolos
    - Épsilon
    - Lambda

## String ó Cadena
Secuencia Finita
- ``Σ = {a,b}``
- aab

Pares ordenados, generado por productos cartesianos
- ((a,a), b)
- ΣxΣxΣ = (ΣxΣ)xΣ

Aplanar: N-Tupla
- (a,a,b)

Sin paréntesis ni comas:
- aab
- aab Σ^3

```
length: Cadena -> N

s = Σ / length(s) = 0
s = h*t / length(h*t) = 1 + length(t) 

```
> Aplicamos la recursividad para generar un contador, llegará a su tope cuando quede la cadena vacia (Σ) como t. Esto hará que el último número lo de la única situación exacta | ``length(Σ) = 0``