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


