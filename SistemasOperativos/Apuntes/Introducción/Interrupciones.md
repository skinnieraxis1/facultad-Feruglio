# Interrupciones

## Definición

Las interrupciones, son avisos que da el hardware que, como su nombre indíca, interrupen el [ciclo de instrucciones](./Instrucciones.md#Ciclo-de-instrucciones). 

Esto lo que provoca es que se frene lo que esté haciendo y ejecute un ciclo especificado para la interrupcion que haya pasado. Un poco lo que nos ayuda esto es a tratar de forma correcta la interrupción. Este proceso, al necesitar ejecutar procesos hace cambiar automáticamente al modo kernell.

Si bien el nombre nos puede parecer que es algo malo, aveces no es una interrupción por un error, si no simplemente por IO, o por una cancelación de la ejecución. Por lo que es importante identificar el tipo de interrupción.

## Clasificación de interrupciones

