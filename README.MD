```markdown
# Terraform Learning Projects 🏗️

Repositorio con proyectos prácticos para aprender Terraform. Cada proyecto implementa infraestructura como código (IaC) en AWS/Azure/GCP* (*personalizable) con diferentes niveles de complejidad.

## 📂 Estructura del Repositorio

```
TERRAFORM_TEST/
├── PROYECTO1/
│   ├── terraform/
│   │   ├── main.tf          - Configuración principal de recursos
│   │   ├── variables.tf     - Variables declaradas
│   │   ├── outputs.tf       - Valores de salida
│   │   ├── security_group.tf - Reglas de seguridad específicas
│   │   └── terraform.tfvars - Valores de variables (ignorado en .gitignore)
│   └── README.md           - Documentación específica del proyecto
├── PROYECTO2/
│   └── (estructura similar)
└── ...
```

## 🚀 Cómo Usar

### Requisitos Previos
- Terraform instalado ([Guía de instalación](https://learn.hashicorp.com/tutorials/terraform/install-cli))
- CLI de AWS/Azure/GCP configurada
- Editor de código (VS Code recomendado)

### Comandos Básicos
```bash
# Inicializar Terraform
terraform init

# Validar configuración
terraform validate

# Plan de ejecución
terraform plan -var-file="terraform.tfvars"

# Aplicar cambios
terraform apply -var-file="terraform.tfvars"

# Destruir infraestructura
terraform destroy
```

## ⚠️ Importante
- **Nunca commits archivos .tfstate** - Agrega esto a tu .gitignore:
  ```
  *.tfstate
  *.tfstate.backup
  *.tfvars
  .terraform/
  ```

## 📚 Proyectos Disponibles
1. **PROYECTO1**: Descripción breve (ej: "EC2 básico con Security Group")
2. **PROYECTO2**: Descripción breve (ej: "VPC con subnets públicas y privadas")
3. ... (agregar según crezca el repositorio)

## 🔧 Configuración
1. Copiar plantilla de variables:
   ```bash
   cp terraform.tfvars.example terraform.tfvars
   ```
2. Editar `terraform.tfvars` con tus credenciales:
   ```hcl
   aws_access_key = "TU_ACCESS_KEY"
   aws_secret_key = "TU_SECRET_KEY"
   region = "us-east-1"
   ```

## 🛡️ Buenas Prácticas
- Usa siempre `terraform fmt` para formatear archivos
- Versiona todos los cambios mediante tags semánticos
- Utiliza módulos para componentes reutilizables
- Prueba siempre con `terraform plan` antes de aplicar

## 🤝 Cómo Contribuir
1. Haz fork del repositorio
2. Crea una rama: `git checkout -b mi-proyecto`
3. Commitea tus cambios
4. Haz push a la rama
5. Abre un Pull Request

## 📄 Licencia
[MIT](https://choosealicense.com/licenses/mit/) - Ver archivo LICENSE.md

---

✨ **Sugerencia**: Crea un directorio `modules/` para componentes reutilizables entre proyectos!
```

### Características clave:
1. **Advertencia sobre archivos sensibles** (.tfstate y .tfvars)
2. **Guía rápida de comandos** esenciales de Terraform
3. **Estructura escalable** para múltiples proyectos
4. **Instrucciones claras** para nuevos contribuidores
5. **Personalizable** según tu proveedor cloud (AWS, Azure, GCP)

### Para personalizar:
- Cambia los nombres de proyectos (PROYECTO1, PROYECTO2)
- Añade descripciones específicas de cada proyecto
- Modifica las variables en la sección de Configuración según tu proveedor cloud
- Agrega badges de build status si implementas CI/CD