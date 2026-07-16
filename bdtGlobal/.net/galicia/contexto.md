# Contexto Actual

## Objetivos

### Prolema
Galicia tiene tres sistemas para la digitalización y traspaso de sus documentos. Estos sistemas son Galicia Seguros, Sura y HSBC

### Solución
Galicia quiere unificar estas soluciones, para esto quiere utilizar una solución heredada de Sura, la cual se llama "Gestión Documental"

## Flujos

### GS
- Realizan la digitalización a través de Ricoh
- Ya se está migrando a **Gestión Documental**
- Ya está la comunicación entre el Middleware de GS y el APIM 
- La migración de los templates se hace por producto, van aproximandamente por un 40%

**Middleware**: Es un software conectado entre dos sistemas ayuda a su comunicación con procesos intermedios entre las dos partes. En este caso sirve para poder realizar esta migración entre GS y APIM

### Ex-Sura

- Tiene 2 flujos dentro, uno sirve para las polizas de GuideWire y otra para la de SISE. GuideWire utiliza el sistema de **Gestión Documental** es el que se utiliza de base para la comunicación de Galicia Seguros
- Los 2 tipos de polizas usan Responsys par el envio de correos, Oracle Cloud Storage para el almacenamiento y Power BI para la visualización y el análisis de datos (PODRÍA SER TRASPASADO A UN SISTEMA?)
- La comunicación de nuevas emisiones tamién se realizan a través de Responsys y ¿Se concentran en campañas unificadas de correo electrónico para mejorar la eficiencia?
- 