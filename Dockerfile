# Establecer la imagen base de Node.js
FROM node:18-alpine

# Definir directorio de trabajo
WORKDIR /app

# Copiar los archivos de requisitos del proyecto
COPY package*.json ./

# Instalar las dependencias del proyecto
RUN npm install

# Copiar el resto de los archivos del proyecto
COPY . .

# Exponer el puerto en el que el proyecto escuchará
EXPOSE 3000

# Iniciar el servidor del proyecto
CMD ["npm", "start"]