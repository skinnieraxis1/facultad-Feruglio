# Memoria Real / Física 
## Conceptos fundamentales
### Ejecución de un programa 
Todos los programas que se ejecutan se encuentran almacenados en la memoria RAM. Un detalle importante es que la memoria no sabe que tiene adentro, por lo que el SO se tiene que encargar de saber los espacios que ocupan los procesos. En algun lugar el SO dice *'El Proceso 1 está desde el byte x al byte x + dx'*

### Funciones del SO con la RAM

El SO tiene la responsabilidad de administrar de manera adecuada la RAM y los proceso que en ella residen, para esto el SO tiene las siguientes funciones:

1. **Reubicar:** Esto sucede mayoritariamente cuando se pasa a disco un proceso, ya sea porque se bloquea o porque se necesitan ejecutar otros procesos. Cuando vuelven a la RAM normalmente estarán ubicadas en otro lugar, por lo que decimos que se reubican.

2. **Protección:** Es una medida de seguridad para que los procesos solo accedan al espacio que se les tiene asignado. En caso de ir a un lugar no asignado se genera una interrupción que normalmente finaliza el proceso, esto ocurre porque dado el caso que el P1 modifique algo del P2 puede afectar en su funcionamiento

3. **Compartición:** Va a haber casos en los que queremos que los procesos puedan compartir memoria. Para estos casos el SO va a actuar de intermediario, dejando que puedan tocar partes que tengan permisos

4. **Memoria física y virtual:** Con esto nos referimos a la administración de una memoria corta y volatil y la parte virtual habla a las estrategias para mantener el almacenamiento, estrategias que iremos viendo en este paper

## Asignación de direcciones

A la hora de asignar direcciones de un programa, deberemos identificar los pasos por los que pasará el programa para entender en que instancia resolverían todo.

### Estapas de ejecución de un programa

1. programa.c: Esto es el propio código de nuestro programa
- Compilación: Este es la etapa en la que pasamos de un código a un assembler que entienda el CPU
2. programa.o: Este es el programa en assembler, esto ya podría entenderlo el CPU
- Enlazador: Muchas veces utilizaremos diferentes .c o bibliotecas en esta etapa dejamos de utilizar referencias y ya se unifica todo
3. programa.exe: Esto ya está en binario y lo entiende directamente la computadora. Acá ya están todas las referencias en el .exe
- Address Binding: Se reserva espacio en la RAM para ejecutar el programa

El address Binding no siempre es al final, se puede reservar espacio en diferentes etapas de la ejecución

#### En tiempo de compilación:

Acá seleccionamos las direcciones en el tiempo de compilación, el problema es que si queremos reasignarlo de lugar deberemos compilar todo devuelta

