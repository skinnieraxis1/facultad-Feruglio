# Jerarquía de Memoria
## Definición
Le llamamos jerarquía de memoria a el orden implicito que existen entre los distintos medios de almacenamiento de los que dispone una computadora.

Estos dispositivos de almacenamiento van desde la RAM de nuestra computadora hasta nuestro dísco. Pero.. ¿Cual es la diferencia entre estas? ¿Porque usamos mas de un almacenamiento?

## Memoria volatil
El primer concepto que se genera a la hora de hablar de memoria es el de memoria volatil y no volatil, esta es la clasificación más grande entre estas.

### ¿Qué significa que una memoria sea volatil?
A la hora de hablar de memoria volatil hablamos de memoria cuyo contenido será eliminado una ves se apague la memoria.

Seguramente te estés preguntando ¿para que sirve almacenar algo si despues se va a borrar?

La razón es que esta memoria no se utiliza para guardar datos a largo plazo, si no que su fuerte es la **velocidad de sus transferencias**, velocidad que ayuda al CPU a que le lleguen las instrucciones en una velocidad acorde a la velocidad en la que este resuelve los problemas. <br>
Su gran desventaja es que suelen tener un **almacenamiento mucho menor**, este afectará la cantidad de procesos que pueda correr nuestra computadora, o llamandolo de otra manera, el nivel de multiprogramación.<br>
La razón por la que su memoria suele ser menor es que la tecnología que soporta esa velocidad de transferencia es muy cara para realizar mas almacenamiento, por lo que no es rentable ni necesario utilizarla para almacenar.

## Orden jerárquico
Con esto en mente ordenaremos las memorias de manera descendente. Empezando con las veloces, costosas y de poco almacenamiento, hasta las menos veloces, por ende menos costosas pero de mayor almacenamiento.

Memorias Volátiles

1. Registro CPU (La memoria dentro del CPU)
2. Memoria cache
3. Memoria RAM

Memorias no volátiles

4. Disco de estado sólido
5. Disco Magnético
6. Discos ópticos (CD/DVD)
7. Almacenamiento fuera de linea (Cintas)

## Suspender la computadora

Suspender la PC consta de a la hora de apagarla dejar un poco de energía para mover los datos de memoria volatil a no volatil y no olvidar cual hay que cambiar.

A la hora de volver a prender la computadora gracias a esta "memoria" que le quedó puede volver a poner los archivos volatiles en donde estaban. 