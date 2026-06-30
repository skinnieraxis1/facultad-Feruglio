# Make

## Introducción
### Que es Make?

Una herramienta para la creación de programas, lo que hace es generar archivos ejecutables. Se utiliza principalmente para archivos con muchas dependencias

### Que sintaxis tiene??

Makefile -> Archivo con las dependencia de nuestro sistema

Este tendrá todo lo necesario para la creación y se escribe en su propio lenguaje:

```makefile
objetivo ... : prerequisitos ...
    comandos
    ...
    ...
```

### Que significan las reglas de Make? Cual es su semántica?

```makefile
A.o: A.c A.h
    cc -c A.c -o A.o
```

Ejemplo

```makefile
hello: hello.o
cc hello.o -o hello

hello.o: hello.c
cc -c hello.c -o hello.o
```

```makefile
.PHONY: run clean

run: hello
 ./hello

clean:
 rm hello hello.0

hello: hello.o
 cc hello.o -o hello

hello.o: hello.c
 cc -c hello.c -o hello.o
```

#### Recetas por Defecto
```
.PHONY: run clear

run: hello.o
 ./hello 

clear:
 rm hello hello.o

hello: hello.o

hello.o: hello.c
```

#### Reglas por Defecto
```Make
.PHONY: run clean

run: hello
 ./hello

clean:
 rm hello hello.o
```

#### Sin makefile
```bash
make hello
```