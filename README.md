Despliegue de una aplicación en AWS ECS con CodePipeline
Este proyecto demuestra cómo desplegar automáticamente una aplicación Docker en AWS utilizando:

AWS Elastic Container Service (ECS) con Fargate
AWS CodePipeline para CI/CD
Amazon Elastic Container Registry (ECR) para almacenamiento de imágenes Docker
 Tecnologías utilizadas
🐳 Docker
☁️ AWS ECS (Fargate)
🔄 AWS CodePipeline
🏗️ AWS ECR
⚙️ GitHub Actions
🟢 Node.js
 Pasos de implementación
1️⃣ Configurar AWS ECR
Crear un repositorio en Amazon ECR
Subir la imagen del contenedor a ECR
2️⃣ Autenticarse en ECR y subir la imagen
Ejecuta los siguientes comandos en la terminal:

bash
Copiar
Editar
aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin <ECR_URI>
docker build -t mi-app .
docker tag mi-app:latest <ECR_URI>:latest
docker push <ECR_URI>:latest
3️⃣ Configurar AWS ECS con Fargate
Crear un Cluster ECS
Definir una tarea ECS con la imagen almacenada en ECR
Configurar un servicio ECS con Fargate
4️⃣ Configurar AWS CodePipeline
Integrar GitHub Actions para disparar el despliegue
Configurar AWS CodePipeline para actualizar ECS con cada cambio
 Contribuciones
Si deseas mejorar este proyecto, siéntete libre de hacer un fork y enviar un pull request.

 Licencia
Este proyecto está bajo la licencia MIT.
