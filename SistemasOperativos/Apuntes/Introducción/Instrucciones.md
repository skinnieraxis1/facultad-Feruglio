# Instrucciones

## Definición

Las instrucciones vienen siendo funciones del sistema operativo, estas solo las podrá hacer el kernel y si queremos que una aplicación las utilice deberá pedirselo a este para realizarlo.
Cada una de estas funciones cumple un propósito, pero solas no sirven para nada, si queremos realizar una acción deberemos agruparlas, en lo que llamamos una **sentencia**.

¿Que es una sentencia?

Una sentencia es un conjunto de instrucciones, que traajan en conjunto para realizar una operación, por ejemplo.
```c
i = i + 1
```
```
MOV AC, [100 Ah]
ADD AC, 1 
MOV [100 Ah], AC
```

## Tipos de Instrucciones

Algo fundamental de las instrucciones es que existen muchas de las mismas, pero solo están divididas en dos

### Instrucciones no privilegiadas

Estas podrán ser utilizadas por cualquier usuario y/o aplicación, sin necesidad de mucho permiso

### Instrucciones privilegiadas

Estas tendrán los permisos restringidos, solo podrán utilizarlas ciertos usuarios con permisos adecuados

## Ciclo de instrucciones (Sin contar interrupciones)

El ciclo de procesado de instrucciones, o más bien sentencias, consta de 3 pasos.
- **Fetch**: Para empezar el procesador, el que corre las instrucciones, debe saber cual es la próxima operación a correr. Para esto se fija cual es la siguiente y la pone en el ciclo
- **Decode**: En este proceso lo que haremos será 