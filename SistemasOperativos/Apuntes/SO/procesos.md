# Procesos
## Estructura de un proceso
- **Código**: Es la secuencia que contiene las instrucciones del proceso. Estas no pueden ser modificadas dentro de su ejecución y se encuentran (en lenguaje maquina) dentro del disco
- **Datos**: Es el almacenamiento para los datos globales
- **Stack (Memoria estática)**: Es el lugar donde se alojan las variables que se crean dentro del código. Esta tiene forma de pila y se borra al finalizar el proceso.
    - Variables locales: Las propias variables que se declaran, ocupan un lugar definido dependiendo el tipo de dato.
    - Funciones
        - Las variables que se declaran dentro. Se borran luego de terminar la función
        - La dirección a la próxima linea de código luego del llamado de la función
        - Los parametros de las funciones
        - Lo que retorna las funciones
- **Heap**: Es la memoria dinámica que reservamos en tiempo de ejecución. La idea es reservar espacio para variables cuyo tamaño desconocemos, ya sea por ser una lista con una cantidad de elementos o porque no sabemos el tipo. El problema que trae es que debemos recordar liberar este espacio luego o quedará el espacio reservado con o sin un puntero que le apunte. A este tipo de duración se le llama **Asignada**
- **PCB**: Es como una metadata del proceso que está pensada como un contexto de ella para cuando hacemos multiprogramación cosa de que si cambiamos de contexto la CPU sepa rápidamente que hacer con este o en que estado está por lo que está permanentemente en la RAM. Estos datos no puede modificarlos el proceso, y tiene los siguientes datos:
    - PSW: El estado del proceso
    - Identificador: 
        - PID: El ID del proceso
        - PPID: ID del padre del proceso
        - UID: ID del user que inició el proceso
    - IP/PC
    - Registros del procesador
    - Información de planificación de CPU (la prioridad de ejecución)
    - Información de entrada y salida E/S
    - Información contable

## Ciclo de vida del proceso

El proceso pasa por varias etapas y puede estar en varios estados a la hora de estar tratandose en el CPU. Dependiendo el tipo de ciclo cambian la cantidad de estados. Por ejemplo

New: Es el proceso previo a poder ser ejecutado, pero cuando ya esta en el CPU. Aca preparamos la estructura, iniciamos el PCB y esperamos la admisión 

Ready y susp/ready

Blocked y susp/blocked

Running

Exit: Es la parte final del ciclo, acá eliminamos los datos menos el PCB y dejamos el valor de retorno por si lo quiere otro proceso

