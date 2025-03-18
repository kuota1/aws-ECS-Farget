# Usar la imagen oficial de Node 16 en Alpine (versión ligera)
FROM node:16-alpine

# Definir el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copiar los archivos de dependencias primero para aprovechar la caché de Docker
COPY package.json package-lock.json ./

# Copiar el archivo server.js al contenedor
COPY server.js .

# Instalar solo las dependencias necesarias para producción
RUN npm install --production

# Copiar el resto de la aplicación al contenedor (incluyendo index.html y server.js)
COPY . .

# Exponer el puerto 3000 (para apps que lo usen)
EXPOSE 80

# Comando de inicio de la aplicación
CMD ["node", "server.js"]
