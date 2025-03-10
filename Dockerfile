# Usar una imagen oficial de Python como imagen base
FROM python:3.10

# Exponer puerto indicado
EXPOSE 8090

# Establecer el directorio de trabajo en el contenedor
WORKDIR /usr/src

# Copiar el contenido del directorio actual en el contenedor en /usr/src/app
COPY . .

# Instalar PyTorch, torchvision y torchaudio
# Se especifica la URL del índice para descargar desde un sitio específico
RUN pip install --upgrade pip
#RUN pip3 install torch torchvision torchaudio

# Instalar cualquier otro paquete necesario especificado en requirements.txt
# Se usa --no-cache-dir para no almacenar los archivos de caché de pip, reduciendo el tamaño de la imagen
RUN pip install --no-cache-dir -r requirements.txt