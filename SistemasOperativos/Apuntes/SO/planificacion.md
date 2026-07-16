# Planificación

## Problemas de la multiprogramación

A la hora de implementar la multiprogramación, encontraremos ciertos casos que degradaran el rendimiento del CPU. Los principales casos son:
- Si un proceso tarda mucho tiempo y no le deja tiempo al resto
- Un proceso que nunca llegue a ejecutarse, ya sea por temas de tiempo o por temas de que queda abajo en el orden jerarquico
- Que se llene la RAM y no se utilice el CPU. Devuelta puede ser porque tarde mucho tiempo uno de los programas y entre las peticiones se llene la RAM
- Que baje el rendimiento del sistema, porque no le da para el nivel de multiprogramación

### Tipos de procesos (Segun el tiempo necesario y el porque):

- Alto nivel de procesamiento, bajo de E/S
- Bajo nivel de procesamiento pero requiere constantemente de una E/S

## Planifiación

Bien el panificador es el que se encarga de la distribución de programas hacia el CPU
- Asignación de los procesos
- Rendimiento y optimización
- Optimización de procesos extra

Existen 3 tipos de planificadores, el cual se nombran según su uso dentro del ciclo:
1. Largo plazo: Es el que controla el nivel de programación, ya que es el que decide quienes entran y salen del sistema (Pueden salir del sistema por razones externas, pero este puede sacarlos si así lo decide). En esencia lo que hace es meter y sacar procesos del ciclo de vida del proceso, osea decide quienes entran en el *ready* y puede mandar procesos al *exit*
2. Mediano plazo: Este también maneja el grado de multiprogramción, pero lo hace desde dentro del ciclo, recordemos que teniamos los suspended, estos sacan al proceso del ciclo y los mete en el disco, pero su PCB sigue cargado en la RAM por lo que solo es para liberar la RAM más no para finalizar el proceso. Otra cosa a aclarar es que los suspend no funcionan como sus versiones normales, osea, no puedo pasar de suspend blocked a suspend ready, solo de suspend blocked a blocked y de suspend ready a ready. Para esto tiene 2 acciones principales:
    - Swap In: Sube el nivel de programación, volviendo a poner el proceso en la RAM y asociandolo con el PCB
    - Swap Out: Baja el nivel de programación, saca el proceso de la RAM poniendolos en el estado de suspended, en la RAM solo quedará el PCB, el resto se irá al disco
3. Corto plazo: Este es el que elige la parte del proceso en si, osea quienes están en ready, running o blocked (Ready -> Running; Running -> Ready; Running -> Blocked; Blocked -> Ready). Tiene que minimizar el overhead(tiempo entre un proceso y otro, mientras menos tengas que cambiar de proceso, menos overhead vas a tener), controlando a su ves el dispatch y el timeout. La idea es que siempre que vea un hueco en el procesado seleccione el proceso con mayor prioridad
    - Con Desalojo: Va a tener en cuenta todos los procesos que tiene en ready y si hay uno con mayor prioridad lo podrá ejecutar interrumpiendo aquel que está corriendo actualmente. Lo bueno de esto es que un proceso super largo no se va a apoderar del CPU hasta el timeout si no que puede cortar antes, lo malo es que genera más overhead ya que va a haber mas cambios de procesos 
    - Sin desalojo: No va a interrumpir aquel que está ejecutando actualmente y recién eligirá otro cuando termine el actual, por más que el otro tenga más prioridad

