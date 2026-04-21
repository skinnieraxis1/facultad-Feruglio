## Preguntas de Repaso
1. Símbolo -> Representación gráfica de algo 
2. Alfabeto -> Conjunto de símbolos
3. ASCII -> Simbolos en computadora para representar el ingles
4. Unicode -> Extensión de ASCII para abarcar otros idiomas
5. Char -> Tipo de dato primitivo que representa un caracter, su tamaño está adaptado al tamaño de ASCII 
    - 0-127 como mínimo

### Conceptos
- **Glifo**: Representación pictórica del caracter
- **Unidad de código**: Unidad de almacenamiento de punto de código parcial o completo
- **Punto completo**: Valor de *UNICODE* para cada símbolo
- **Grupo de Grafema**: Grupo de caracteres para representar un caracter nuevo
- **Grafema**: Unidades para diferenciar palabras
- **Carácter o Símbolo**: Concepto abstracto
- **Cadena de texto**: Conjunto de caracteres o símbolos (*String*) 

``` cmd
$ cat StreamsFilesBytes.cpp
```
``` cpp
#include <iostream>
int main(){
    std::cout << "ABCDEFG\n0123456\n !\"#$%\a\n" ;
}
```
> **\\** -> Escapa de su significado normal al siguiente caracter \
> **\n** -> Salto de linea
``` cmd
$ c++ StreamsFilesBytes.cpp
$ ./a.out
```
``` 
ABCDEFG
0123456
 !"#$%
```
``` cmd
$ Hexdump -C output.txt
```
``` 
00000000 41 42 43 44 45 46 47 0a  30 31 32 33 34 35 36 0a |ABCDEFG.0123456.
00000010 20 21 22 23 24 25 07 0a                         | !"#$%..|
```



<br>

***