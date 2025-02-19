#Hola, este código sencillo sirve para crear algunas carpetas utilizando python
#Posteriormente se hará el mismo código pero usando Java Script. o al menos se hará el intento

import os


def CrearCarpetas(indice = str):
    print("Creating folder", indice)

    folderPath = "C:\\Users\\ivan_\\OneDrive\\Documentos\\Power Automate\\Repo\\Proyecto\\Junior - UNO\\Input\\"

    FinalFolder = os.path.join(folderPath, f"CarpetaConPython{indice}")
    os.mkdir(FinalFolder)

    return 0


try:
    CrearCarpetas("1")
    CrearCarpetas("2")
    CrearCarpetas("3")
    CrearCarpetas("4")
except:
    pass







