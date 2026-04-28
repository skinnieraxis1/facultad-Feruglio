

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

## Forma de almacenaje

0xxxxxxx <br>
110xxxxx 10xxxxxx <br>
1110xxxx 10xxxxxx 10xxxxxx <br>

> 0 ->
> 110 

## Ejercicios

Unicode: A U+0041 = 0100 0001 = 65
UTF-8: **0**1000001 

Unicode: U+00A9 = 1010 1001 = 169
UTF-8: **110**00010 **10**101001

Unicode: U+2260 = 0010 0010 0110 0000 = 8800
UTF-8: **1110**0010 10001001 10100000