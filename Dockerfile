#Esto es un dockerfile configurado para entorno de prodiuccion

#Seleccionamos e indicamos la version de la imagen base 
FROM python:3.10

#Indicamos quien es el responsable del contenedor
LABEL Maintainer="JaviScript"

#Creamos el directorio de nuestra aplicacion
RUN mkdir -p /home/app/

#Establecemos el espacio de trabajo
WORKDIR /home/app

#Copiamos los archivos de la aplicacion
COPY . /home/app/

#Instalamos las dependencias necesarias para correr el programa
RUN pip install --no-cache-dir -r /home/app/requirements.txt

#Definimos el comando para correr el programa 
CMD [ "python","src/app" ]