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
1- Configurar AWS ECR
-  crear un repositorio en Amazon ECR
-  subir la imagen del contendor a ECR
-  Bash
-  aws ecr get-login-password
-  region us-east-1 | docker login
-  --username AWS -- password-stdin
-  <ECR_URI>
docker build -t mi-app .
docker tag mi-app:latest
<ECR_URI>:latest
docker push <ECR_URI>:latest
2- configurar AWS ECS
- Crear un Cluster ECS con Fargate
- crear una Task Definition apuntando a la imagen en ECR
- crear un Servicio ECS para ejecutar la tarea
3- Configurar AWS CodePipeline
  - crear una pipeline en CodePipeline
  - configurar: fuente Amazon ECR(mi-app:latest)
  - Deploy Amazon ECS (Fargate) con la Task Definition creada
  - Ejecutar la pipeline y validar el despliegue

 Eliminacion de la infraestructura

 Para evitar costos eliminaos:
 ECS(CLuster Task Definition, service).
 CodePipeline y CodeBuild
 ECR (Repositorio e imagen)
 CloudFOrmation IAM Role Security Groups

 Proximos pasos 
 -Mejorar el proceso con Terraform
 -Implementar monitorizacion con AWS Cloudwatch
 -Optiizar costos usando Spot Instance en ECS
