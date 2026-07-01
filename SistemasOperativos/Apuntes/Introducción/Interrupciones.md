# Interrupciones

## Definición

Las interrupciones, son avisos que da el hardware que, como su nombre indíca, interrupen el [ciclo de instrucciones](./Instrucciones.md#Ciclo-de-instrucciones). 

Esto lo que provoca es que se frene lo que esté haciendo y ejecute un ciclo especificado para la interrupcion que haya pasado. Un poco lo que nos ayuda esto es a tratar de forma correcta la interrupción. Este proceso, al necesitar ejecutar procesos hace cambiar automáticamente al modo kernell.

Si bien el nombre nos puede parecer que es algo malo, aveces no es una interrupción por un error, si no simplemente por IO, o por una cancelación de la ejecución. Por lo que es importante identificar el tipo de interrupción.

## Clasificación de interrupciones

### Proveniencia
- **Hardware**: Son aquellas interrupciones que vienen de componentes diferentes que la CPU, esto lo que nos dice que es son producidas por fuera del proceso en sí mismo. A estas se les llama externas.
- **Software**: Estas si son producidas por el CPU, y son al momento de realizar el proceso, pero no son por errores si no por una instrucción específica como si llamaramos un SYSCALL, estas hacen que salte una interrupción aunque no sea un error. A estas se les llama internas

### Enmascarabilidad

- **Enmascarables**: Estas no son críticas, por lo que no hace falta tratarlas indmediatamente. Puede ser que no lo sean porque no son errores, o porque los errores no son críticos
- **No enmascarables**: Estas si son críticas por lo que no podremos ignorarlas y deberemos tratarlas inmediatamente. Estas se deben a errores que no pueden ser ignorados, suele tratarse de temas de hardware como errores con la placa o el dísco

### Sicronismo

- **Asincrónicas**: Se pueden dar en cualquier momento y obligatoriamente no están formadas por el CPU, esto es gracias a su definición lógica, como es un error que no tiene porque suceder en medio de un proceso, significa que es por algo externo. Siempre son de hardware
- **Sincrónicas**: Se producen en el medio del proceso, y pueden ser tanto de hardware como de software. De hardware en caso de que haya ocurrido un error con una ejecución y de software en caso de que sea una instrucción que la produzca 

## Tipos de interrupciones

### IO
Son interrupciones que avisan cuando finaliza una comunicación de IO, esto pasa porque deja de escuchar esa entrada por lo que se interrumpe ese proceso

### Fallas de hardware
Estas son como su nombre indíca fallas que puede tener nuestro HW que sean no enmascarables e interrupan de manera indefinida nuestro proceso

### De clock
Estos son los típicos timeout, se usan específicamente para la organización de procesos a la hora de utilizar multiprogramación. Es básicamente que estuvo mucho tiempo con un proceso entonces lo interrumpe y empieza otro.

### Excepciones
Estas son las de jerarquía más alta. Las mísmas las hay de tres tipos
- **Abort**: Son errores graves de fallo de HW
- **Fallos**: Son fallos que ocurren y se pueden ignorar o tratar. Luego podremos seguir con la ejecución
- **Traps**: Son puestos aposta para debuggear

## Ciclos de instrucciones con interrupciones

El ciclo de instrucciones con las interrupciones solo agrega un paso que verificará si hubieron interrupciones enmascarables o no enmascarables. Este paso se correra luego de la ejecución de la función, más las interrupciones pueden ocurrir en cualquier parte del ciclo

### Pasos cuando se generan las interrupciones
#### Hardware
1. Se genera la interrupción (Esto pasa sin que el CPU lo sepa)
2. Se finaliza la ejecución de la instrucción y se corre la parte del ciclo donde se detectan las interrupciones
3. Se detecta que hubo la interrupción del 1er paso y se determina de donde vino
4. Se guarda el PC y el PSW de la instrucción que se acaba de ejecutar 
5. Actualizamos el PC del CPU para que apunte al tratado de la interrupción en el SO

#### Sistema Operativo

6. Primero guarda toda la info que tenga el procesador (Variables, funciones, etc)
7. Desactivamos las interrupciones
8. Corremos la forma de tratar la interrupción
9. Devolvemos los datos que guardamos al procesador
10. Cargamos el PSW que habíamos guardado previamente y luego cargamos el PC, que apunta a la siguiente instrucción. Como la siguiente instrucción se ejecuta directamente despues de poner el PC, primer cargamos el PSW
11. Volvemos a activar las

### Múltiples interrupciones
Es algo muy común cuando se tratan las interrupciones, acá hay 3 caminos que seguir:
- Podemos tratarlas de forma secuencial, terminando el tratamiento de la actual para recien pasar a las siguiente
- Podemos definir previamente jerarquias entre las interrupciones, haciendo así que se traten primero las de rango más alto
- Podemos deshabilitar las interrupciones y olviarnos del problema, pero arriesgando que ocurran más errores
