# Sistemas Operativos
## Definición
El Sistema Operativo es el sistema primario de una computadora, tiene 5 objetivos:
- **Administrar el hardware**: Con esto nos referimos a poder realizar a través del resto de sistemas los cambios pertinentes en el hardware. Logrando que funcione como debería según las funciones establecidas
- **Administrar el software**: Esto es el hecho de poder administrar la información dentro del sistema, como de proveer herramientas para utilizar el hardware a través de este 
- **Proveer una interfaz**: De alguna manera tiene que poder ver el USER lo que pasa en la PC no?
- **Proveer Seguridad**: Esto no es solo a nivel otras personas queriendo hacerle algo a nuestra PC, si no asegurar que todo lo que hagamos pase de forma adecuada y no tengan el poder de hacer mierda la maquina
- **Permitir la gestión de Usuarios**: Esta es la gestión de diferentes usuarios en una misma PC con diferentes permisos y programas especificos

## Funciones
Para cumplir con sus objetivos el SO tiene diferentes funciones que deberá cumplir si pretende hacer lo que se propone. Estas funciones son:
- Administrar la ejecución de los programas
- Administrar los recursos, tanto de HW como de SW
- Proveer una interfaz mediante la cual los usuarios puedan interactuar con las funciones del SO
- Administrar los archivos
- Administrar los dispositivos de E/S
- Administrar la comunicación entre los programas
- Administrar y asignar recursos
- Brindar protección y seguridad
- Administrar sus propias funciones
- Ser una interfaz para el dispositivo mismo

## Capas de una computadora
La computadora consta de diferentes partes que interactuan entre ellas para funcionar. No es solo cosa del core donde tendremos la conexión con el HW sin una forma concreta de poder comunicarse con el Usuario no se podría usar.

Para esto tenemos 2 sectores principales en los que administraremos esto:

1. **Kernell**: Este funciona como nucleo del sistema es aquel que tiene la comunicación con el Hardware, con sus operaciones y entre ellas mísmas 
2. **Distribuciones**: Son los SO asociados a los diferentes núcleos. Por ejemplo Ubuntu es un SO de distribución y linux es el SO de kernell o nucleo. La idea es tener software extra que agregue valor para el usuario. Estas aplicaciones tienen 2 tipos principales:
    - Aplicaciones: Orientadas al usuario final, no tocan el HW si no que se comunican con el SO para poder interactuar con esta, como cualquier programa
    - Utilidades: Son programas orientados a servir otros programas, estos si interactuan tanto con el SW como con el HW. Suelen ser terminales, debuggers, compiladores, etc

## Evolución de los SOs

### Monoprogramados

Son SO orientados a solo un programa a la vez, y dispone todos los recursos a este.
Sus caracteristicas son:
- Procesamiento en serie
- Sistemas de lotes sencillos: Podremos seleccionar una serie de programas y ordenarlos para que se corran en un orden especifico

## Multiprogramados

Estos tipos de SO, como dicen su nombre, puede ejecutar multiples programas de forma **concurrente**. En este caso la distribución de recursos deberá hacerla el SO con un rol de administrador, al tener más de un programa va a tener que saber que programas requieren más para que ninugno carezca de recursos.
- Sistemas en lotes multiprogramados: es un sistema que permite correr otros programas si el que se estaba corriendo está esperando una entrada de I/O
- Sistemas de tiempo compartido: Esto permite correr programas con 2 o más usuarios diferentes de forma concurrente. Esto complica la forma de distribuir recursos ya que cada usuario tiene diferentes recursos

