# Ciclos de vida de un sistema de información

Los sistemas no son eternos, suelen tener una vida útil que respeta ciertos parametros, para estudiarlos se los divide en 4 tipos de ciclo diferentes.

- En cascada
- En espiral
- Prototipado
- Iterativo Incremental ágil

## En Cascada

Este ciclo de vida se basa en su forma secuencial. No puedo empezar el paso siguiente hasta no terminar el anterior, una ves que paso de este no puedo volver, debo terminar el proyecto o comenzar desde el principio.

La idea es hacer proyectos mas bien chicos, que desde el inicio sepas bien a que problemas te podes enfrentar y planificarlo alrededor de ello. Obvio que para los proyectos actuales no es eficiente ni el mejor, por esto se suele utilizar para desarrollar pequeñas demos, cosa de ver si gusta el proyecto o la idea.

En el esquema que nos presentan, el ciclo tiene los siguientes componentes:
1. Requisitos
2. Diseño
3. Implementación
4. Pruebas
5. Mantenimiento

## Prototipado

Este ciclo se da cuando el cliente no tiene muy clara la solución, pero si su problema. En este caso se junta el cliente con el analista y le plantea sus problemáticas, el analista buscará cual es la mejor solución para su problema en terminos de software y realiza un pequeño boceto o prototipo. Este se llevará a cabo en un pequeño ciclo de prototipado, el cual consta de:
1. Inicialización
2. Iteración
3. Control

La idea es que realicen el prototipo lo pruebe el cliente y vea si le parece una solución adecuada o no. En ambos casos remarca que cambios se realizan y volvemos a empezar. 

Acá tenemos 2 casos principales, en el que el prototipo es desechable, solo va a buscar mostrar la idea y ya está. O que el prototipo se quede para el proyecto final, haciendo que este solo necesite ser mejorado a través de las iteraciones

### Ventajas

- Si el cliente conoce el problema pero desconoce de que forma se podría llevar a cabo
- Si el cliente no está seguro si la implementación le gusta o tiene miedo de esta

### Desventajas

- Requiere un participación activa del cliente
- Requiere que el analista entienda del software y no solo de la planificación

## En Espiral

Este ciclo se basa en la iteración. La idea es que se encaren una serie de problemáticas y se solucionen, luego de esto probaría el cliente, daría feedback y agregaría cosas para el analisis, se vuelven a ver las problemáticas, se solucionan y así una y otra ves.

Para realizar este ciclo, se separa en 4 partes por espiral (El nombre que se le da a cada iteración), cada una de estas partes se realizarán multiples veces dependiendo la cantidad de veces que hagamos el espiral. Estas partes son:
1. Planificación
    - Recoger requerimientos
2. Analisis de riesgos
    - Analizar riesgos
    - Crear prototipo 
3. Implementación
    - Codificar
    - Pruebas
4. Evaluación
    - Evaluación del cliente

Con esto en mente, deberemos entender que es un ciclo sumamente costoso, puesto que puede involurar multiples espirales y el sistema puede cambiar a su ves multiples veces. Esto claramente involucrará mucho costo y tiempo, por lo que sabremos cuando dejar de iterar cuando el costo y tiempo nos sea mayor que el beneficio dado.

Sabiendo ya lo que involucra, este ciclo se suele dar cuando:
- Son inexpertos los devs
- No se tiene la problemática muy desarrollada
- Los requerimientos pueden cambiar multiples veces
- Se tiene mucho dinero



## Iteración incremental ágil

Viniendo un poco de la iteraión del ciclo de espiral, se crean 2 fundamentos principales para la creación de este nuevo ciclo. La idea es que el cliente esté en contacto constantemente con el proyecto, descubriendo en mayor o menor medida su solución mientras esta se realiza. Los principios de los que hablaba son:
1. Deberemos tener un flujo constante de software de valor hacia el cliente
2. El cliente podrá realizar cambios de requerimientos hasta el último momento. Esta será la ventaja estratégica que les dará el ciclo

Ya teniendo en cuenta estos principios, la forma que tiene de trabajar este metodo es similar al de esprial, pero dividiendo en 2 etapas grandes, la de planificación y la de desarrollo, la gracia es que vas a ir haciendo entregas por "sprints" entonces mientras que estás desarrollando una entrega, ya se está haciendo la planificación y requerimientos de la próxima.

Esta forma de realizar el ciclo es para mantener un flujo de desarrollo constante y perder el menor tiempo posible. Paralelizando todas las etapas de nuestro ciclo.

