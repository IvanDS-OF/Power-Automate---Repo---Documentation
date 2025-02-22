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


## Códigos en VBA, Python y PowerShell

### VBA 

Para correr un código de VBA, es necesario primero tener una **INSTANCIA** con su respectiva extención **.XLSM**

La instancia puede ser visible o no. 

``` java
Recordar que dentro de las macros es necesario colocar un OnError sentence para no mostrar algún PopUp y que el programa en general tenga alguna falla inesperada o se detenga por algún motivo no deseado.
```

Primero tenemos que incializar la instancia y luego utilizamos el bloque de Excel en PAD para ejecutar la macro, en donde solamente se nos pide el nombre de nuestra instancia y el nombre de la macro tal cual está escrito después del **Sub**

Recordar las limitaciones que tienen los programas de VBA. Ej: No pueden crear una carpeta dos veces en el mismo lugar

### Códigos d Python

Existen dos maneras de ejecutar un código de Python, una es utilizando la sentencia propia de PAD en donde colocamos nuestro cpodigo y listo, el tema es que solo tenemos habilitado Python 2.7 y 2.4, pero si queremos ejecutar un programa con una versión más actual, se recomienda hacer uso de Power Shell. 

Para eso, podemos hacer uso de mandar comando a Power Shell, pero en lo personal noo funciona tan bien. 

Otra forma es de forma "manual", se abre la aplicación desde su ruta de almacenamiento, nos dirigimos a la carpeta base con comandos bash [cd ..] y finalmente corremos el programa con la dirección del código [py 'C:Doc\Programa.py'] y cerramos la aplicación, puede llegar a ser un poco tedioso, pero funciona. Solamente tenemos que ver cómo generamos un Log de los procesos de cada uno de los pasos del proceso de los códigos. 


## CONEXION CON SQL

Primero que nada es necesario tener acceso a la base de datos. Tenemos que tener al menos las CONSULTAS ya probadas dentro de SQL Management Studio (El cual igualmente ya lo tenemos que tener instalado en el equipo), 

Comenzamos con la conexión: El bloque de función dentro de PAD se llama **Abrir Conexion SQL**

Para hacer correctamente la conexión a nuestra base de datos tenemos dos formas, una que es dde forma automática en donde la información se nos dda por el proveedor de la base de datos en donde solo necesitamos :

+ Server name - Nombre el servidor
+ Método de autentiación
+ Seleccionar la base de datos del servidor

Rn caso de que tengamos tanto la base de datos como el motor de la base de datos dentro de local, podemos ingresar el comando correspondiente dentro del apartaddo **Cadena de conexión** en donde solamente necesitamos:

+ Driver
+ Server
+ integrated security=true
+ Database

El driver lo podmeos dejar con **SQL Server**, el Server lo podemos encontrar dando click en secundario en SQL Server en el lado izquierddo en Connect para obtener toda la información del servidor, y en DataBase solamente colocamos la bse de datos a la cual nos queremos conectar.

``` java
Recordar: El texto solo debe ddde estar en una sola linea

Driver={SQL Server};Server={};integrated security=true;Database=dbDataBase
```


## Recorddatorio con el uso de Formulas FX dentro del programa

Es importante conocer el alcance y procedimientos del BOT ya que en la creación del proyecto, de un nuevo .PAD se nos pregunta si deseamos habilitar las **funciones FX**, es importante conocer el proceso del bot y si SERA NECESARIO HACER USO DE FX. Ya que algunas operaciones o manipulacion de datos NO van a ser posibles con los comandos FX activados. 

Un ejemplo que nos trabó el desarrollo fue querer obtener de forma individual los valores de una columna de una tabla haciendo uso de sus indices. 

La tabla era la siguiente: 

| Nombre | Apellido | Edad |
| --- | --- | --- |
| Ivan | Duran | 24 |
| Liliana | Sanchez | 25 |
| Javier | Salome | 25 |

Con los comandos FX **Desactivados** la forma más sencilla de iterar entre ellos es metiendo la matriz en un ciclo FOR obteniendo sus filas y luego mandar a llamar el argumento generado con un valor de indice

``` python
For Persona in Matriz
    Print -> Persona[0]
    Print -> Persona[1]
    Print -> Persona[2]
End for
```

Pero con FX no es posible esto. Por eso es necesario evaluar desde un inicio los requerimientos así como una idea general e los procesos a prograar para el robot antes de crearlo y activar los comandos FX.


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


