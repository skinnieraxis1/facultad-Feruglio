## Flujos (Strams) y Archivos

### stdout / Salida
No necesariamente tiene que imprimirse en pantalla podremos mostrarlo a través de un txt u otro tipo de archivo

Stdin > Proceso: Programa en ejecución > Stdout 

```c
//// FLUJOS DE SALIDA ////

// f de format
int printf(Formato, ...);

// f de file/flujo
int fprintf(stream,   formato   , ...);
//          FILE*   const char *
// Flujo == Stream

stdout();
stdr();

//// FLUJOS DE ENTADA ////

// Puede estar conectado a un escaner, teclado, file, tarjeta de red
stdin();

```

Lo que llamamos stream similar a un VIVO o Directo entendemos que es un flujo de, en este caso, video constante que no sabremos cuando terminará. Entendamos que termina cuando decimos que termina el "directo" o más bien flujo, haciendo que sea una secuencia infinita de datos.
Hay cosas finitas que a comparación parecen infinitas, cuando comparamos archivos de muchos GB con un procesador que tiene apenas KB la comparación hace parecer el procesamiento de los GB infinitos, haciendo que tengamos que manejarla en paquetes.

### Primitivas para operar con flujos

*Char e Int son las primitivas por defecto para operar con flujos*

Un char no devuelve solo un char, si no un INT que tiene un char adentro.
A la computadora le es más facil tratar una palabra más que un caracter de la mísma. Lo que hace que le pase mejor una palabra entera y luego la separe.
```c
// Extraer del flujo tanto char como int
getChar();
getInt();

// copy input to output; 1st version
int main(){
    int c;
    c = getchar();
    while(c != EOF){
        putchar(c);
        c=getchar();
    }
}

int main(){
    // Declaración destructiva, teniendo un efecto en c y en el puntero de getchar gracias a este
    // La asignación es una expresión
    // for(c;expresion1;expresion2)
    // for(;_;) = while(_)
    for(int c; (c=getchar()) != EOF;)
        putchar(c);
}

```

El int que devuelve es solo números positivos, que representan cada char. En caso de que retorne un número negativo se entiende que no pudo leer, por definición va a ser un valor négativo que no entre en un byte.
Este valor se lo llama como *'EOF'* y suele ser el numero *-1*

### Arbol de expresión

Es la forma en la que evalúa el código

```c
int main(){
    // Declaración destructiva, teniendo un efecto en c y en el puntero de getchar gracias a este
    // La asignación es una expresión
    // for(c;expresion1;expresion2)
    // Primero hará la función (getchar), luego la asignación (c=getchar) y por último la comparación (.. != EOF)
    // arbol de expresión
    // gráfico = https://excalidraw.com/#json=_KI_mYr9x0sSqPv0pJCxF,zDuvUx6THkHheC05dm9t9Q
    for(int c; (c=getchar()) != EOF;)
        putchar(c);
}
```

Gráfico del arbol
https://excalidraw.com/#json=_KI_mYr9x0sSqPv0pJCxF,zDuvUx6THkHheC05dm9t9Q

### Maquina de estado

Dispositivo de software que recibe estimulos y reacciona en torno a esto, cambiando de estados. Ej: Cajero automático, sistemas sociales, seres vivos, etc 
Puede ser casi cuaquier cosa pero no suele ser eficiencia

```c
int main(){
    for(int c; (c=getchar()) != EOF;)
        putchar(c);
}
```

Esta función recibe y devuelve, pudiendo recibir estos estímulos, siendo el caso más simple ya que solo repite y tiene un único estado.
Recive evento c / Devuelve evento c

### Suma de bytes

```c
#include <stdio.h>

// Sumador de bytes
int main(){
    int suma = 0;
    for(int c; (c = getchar()) != EOF; suma += c);
    putchar(suma); // Funciona?? puede haber overflow
    printf("%d\n", suma);
}
```

> La consola está **buffereada** en cada linea, el enter separa el buffer, pero a la hora de contabilizas los bytes de entrada las suma igual. Sin el enter no podemos hacer que nos devuelva lo que sumó, pero si le ponemos el enter lo va a sumar

```bash
$ suma
 Hola
 Hola
$ suma
 Hola
$
```