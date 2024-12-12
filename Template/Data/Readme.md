# Readme of Data Folder

In this folder we must find the follow folder structure: 

| Type | Name | Notes |
| --- | --- | --- |
| Folder | input | Here goes all the input information, we can create _Excel Files, CSV Files, PDF Files, Images, etc_, This information comes from the subprocess **GetTransactionData**|
| Folder | Output | This folder is to save the processed information within the files to the respective destination. Usually created in the **Process** subflow |
| Folder | Temp | Means **Temporal**, this is where you can create a file with the purpose of process and analyze the information before to be sent to the output, this information is createn in the **Process** subflow usually |
| Excel File | ConfigFile.xlsx | This contains the **Settings**, **Constants** and **Assets** used in the project |
|  |  |  |




Config File: 

| Sheet | Items | Notes |
| --- | --- | --- |
| Settings | Name, Value, Description | Aquí van las URLs, Folder paths y nombres de credenciales. El programa leerá este archivo como un diccionario, tomando el **Value** que da **Name** |
|  | OrhcestratorQueName |  |
|  | OrchestratorQueFoder |  |
|  | **Server Project Folder Path** | Identifica la ubicación del robot en el servidor, puede servir para guardar la info |
| Constants | Name, Value, Description | Contiene información técnica para desarrollar,  |
|  | Max Retry Number |  |
|  | Max Consecutive Number Exceptions |  |
|  | ExScreenshots Folder Path |  |
| Assets | Name, Asset, OrchestratorAssetFolder, Description | Se almacenan las llaves de los valores que se encuentran en la nube. Dentro de PAD no es tan necesario ya que no tenemos un Orchestraor como UiPath, pero se puede crear uno |
|  |  |  |





