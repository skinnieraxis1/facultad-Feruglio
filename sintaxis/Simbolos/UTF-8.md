

```cpp
assert('A' != 'B');
assert('A' == 'A');
assert('A' != 'a');

assert('A' == 65 && 'A' == 0x41);

assert('A' + 1 == 'B' && 'A' + 1 == 66);
```

## ToLower

### toLower: Σ -> Σ / toLower(c) = ?
> Σ -> Conjunto de símolos
``` cpp
char toLower(char c){
    return C+32;
}
```

***

# UTF-8

## Características
### Descripcion:
- Ancho variable
- Codificación de Longitud variable, entre 1 y 6 bytes
- Con cuatro es suficiente para Unicode
### Ventajas: 
- No se extiende para el caso mas común


