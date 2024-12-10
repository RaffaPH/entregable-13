# Terraform + GitHub Actions PoC

Este proyecto implementa una prueba de concepto (PoC) para demostrar cómo automatizar el aprovisionamiento de infraestructura en AWS utilizando Terraform Cloud y GitHub Actions.

## Estructura del Proyecto

- `main.tf`: Define la infraestructura en AWS.
- `variables.tf`: Define las variables del proyecto.
- `outputs.tf`: Muestra los resultados del aprovisionamiento.
- `.github/workflows/terraform.yml`: Configuración del pipeline de GitHub Actions.

## Configuración

1. Clona este repositorio.
2. Configura un Workspace en Terraform Cloud.
3. Agrega los secretos necesarios en GitHub:
   - `AWS_ACCESS_KEY_ID`
   - `AWS_SECRET_ACCESS_KEY`
   - `TF_API_TOKEN`

## Pipeline

El pipeline realiza las siguientes acciones:
1. Inicializa Terraform.
2. Realiza un plan de ejecución.
3. Aplica los cambios automáticamente al hacer un push en la rama `main`.