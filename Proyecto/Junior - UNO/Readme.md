# Readme de Proyectos

# Notas


## Cuerpo General del Proyecto

**Descripción:** El bot va a llenar un formulario de Microsoft Forms desde una base de datos en Excel. 

**Excepciones:**

+ El documento no va a existir
+ La base de datos está imcompleta donde los campos del formulario son OBLIGATORIOS
+ La base de datos está vacía
+ MÁS


**Salidas:** 
+ Mensaje por correo con el Log del proceso del bot
+ Log File correcto. 
+ Screenshots de los errores [propuesta]


## Log Process - Log File

Primeros pasos para el proceso de Logging. 

Como sugerencia se puede hacer el proceso dentro de una REGION que simplemente encapsula una serie de pasos, en este caso, la información contenida será para hacer la modificación de nuestro registro al momento de llamarlo. Teniendo que cambiar los siguientes "argumentos"


| Timestamp | Nivel | Proceso | Accion | Mensaje | Estado | Duración |
| --- | --- | --- | --- | --- | --- | --- | 
| Automático | Manual | Manual | Manual | Manual | Manual | Automático |


```java
Por el momento no colocaremos el registro de duración
```

## Pasos para obtener info de Excel e iterar entre ella

Primero abrir la instanca de Excel.




## Errores

Error potencial 1 - No encuentra Selector Botón
 ``` java
Situación: Cuando el selector busca el botón no lo encuentra porque Inicialmente el botón tiene el label="Submit" pero luego lo encuentra como label="Enviar"
 ```

Formas de arreglar el problema.

+ Crear una variable llamada SelectorBoton e inicialmente definirlo como "Enviar"
+ En caso de encontrar error cambiaremos su difinición como "Submit"
+ Dentro del selector vamos a mandar a llamar la variable donde corresponde
+ On Error, cambiar la variable y Repetir acción

``` java
Tomar Captura de pantalla
```


Interesante observación sobre los errores dentro de las funciones. Existen dos fomas de realizar alguna acción cuando hay un error, una es encerrando un conjunto de acciones dentro de un bloque **On Error** y la otra que dentro de proceso activemos la opción On Error. 

De forma estructural es similar, tendermos:

| funcion | Applicacion | Aplicacion | Aplicacion |
| --- | --- | --- | --- |
| Directiva de reintentos |  |  |  |
|  | Ninguno | Fijo | Exponencial |
| Todos los Errores |  |  |  |
|  | Ejecución de flujo continúa |  |  |
|  |  | Ir a la acción siguiente |  |
|  |  | Repetir acción |  |
|  |  | Ir a la etiqueta |  |
|  | Iniciar error |  |  |
|  | **Nueva regla** |  |  |
|  |  | stablecer variable |  |
|  |  | Ejecutar subflujo |  |
| Avanzada |  |  |  |
|  | _Depende de el proceso_ |  |  |
|  |  |  |  |

Notas interesantes: Cuando ocurre un error, en ambos casos, las **las variables que establecemos no se van a establecer y luego van a reintentar los procesos** realmente es lo contrario **PRIMERO HACEN LAS OPERACIONES DE REINTENTO Y LUEGO ESTABLECEN LAS VARIABLES** o se dirigen a una Label o ejecutan un subflujo. 

Con respecto a los subflujos ejecutados dentro de las sentencia OnError. Después de que el error fue ejecutado y es mandado a llamar un subflujo, **el subflujo será ejecutado correctamente y luego regresará al error**, esto nos puede ayudar bastante a mandar a llamar a un subflujo en donde encontramos diversos setencias de correccion de errores dada una variable establecida correctamente un paso previo en los errores. Igulamente nos ayuda a obtener una captura de pantalla del equipo en caso de error. 


## SQL


## Códigos en VBA, Python y PowerShell




### Notas Generales

| Subflujos |  |  |  |  |  | 
| --- | --- | --- | --- | --- | --- | 
| Main |  |  |  |  |  | 
|  | InitAllSettings |  |  |  |  | 
|  |  | Iniciar Excel [ConfigFile] |  |  |  | 
|  |  | Declarar variables de proyecto |  |  |  | 
|  |  | Log Sequence |  |  |  | 
|  |  |  |  |  |  | 
|  | Initializaation |  |  |  |  | 
|  |  | Log Sequence |  |  |  | 
|  |  | Open Browser |  |  |  | 
|  |  | Open Excel |  |  |  | 
|  |  |  |  |  |  | 
|  | GetTransactionData |  |  |  |  | 
|  |  | Set sheet and range |  |  |  | 
|  |  | Creation of DataTable to iterate |  |  |  | 
|  |  |  |  |  |  | 
|  |  |  |  |  |  | 
|  | Process |  |  |  |  | 
|  |  |  |  |  |  | 
|  |  |  |  |  |  | 
|  |  |  |  |  |  | 
|  |  |  |  |  |  | 
|  |  |  |  |  |  | 
|  |  |  |  |  |  | 
|  |  |  |  |  |  | 
|  | CloseAllApplications |  |  |  |  | 
|  |  | Cerrar instancie Excel [ConfigFile] |  |  |  | 
|  |  | Cerrar Instancia Excel [ExcelInformationInstance] |  |  |  | 
|  |  | Cerrar Navegador |  |  |  | 
|  |  | Enviar Correo Elctrónico |  |  |  | 
|  |  |  |  |  |  | 
|  |  |  |  |  |  | 
|  |  |  |  |  |  | 
|  |  |  |  |  |  | 
|  |  |  |  |  |  | 
|  |  |  |  |  |  | 
|  |  |  |  |  |  | 
|  |  |  |  |  |  | 
|  |  |  |  |  |  | 
|  |  |  |  |  |  | 
|  |  |  |  |  |  | 
|  |  |  |  |  |  | 
|  |  |  |  |  |  | 
|  |  |  |  |  |  | 
|  |  |  |  |  |  | 
|  |  |  |  |  |  | 
|  |  |  |  |  |  | 
|  |  |  |  |  |  | 
|  |  |  |  |  |  | 
|  |  |  |  |  |  | 
|  |  |  |  |  |  | 
|  |  |  |  |  |  | 
|  |  |  |  |  |  | 


