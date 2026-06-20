# Terraform for Docker Container App

Deploy the MySampleApp Docker image to Azure Container Apps using Terraform.

## Prerequisites

- Terraform installed
- Azure CLI authenticated
- Service Principal created (if running in CI/CD)

## Files

- `main.tf` - Main infrastructure resources
- `variables.tf` - Input variables
- `outputs.tf` - Output values
- `terraform.tfvars` - Variable values
- `provider.tf` - Provider configuration

## Usage

### 1. Initialize Terraform

```bash
terraform init
```

### 2. Plan the Deployment

```bash
terraform plan
```

### 3. Apply the Configuration

```bash
terraform apply
```

### 4. Get the App URL

```bash
terraform output container_app_url
```

### 5. Destroy Resources (if needed)

```bash
terraform destroy
```

## Authentication

### Local Development

```bash
az login
```

### CI/CD (Service Principal)

Set environment variables:

```bash
export ARM_CLIENT_ID="<app-id>"
export ARM_CLIENT_SECRET="<password>"
export ARM_SUBSCRIPTION_ID="<subscription-id>"
export ARM_TENANT_ID="<tenant-id>"
```

## Customize

Edit `terraform.tfvars` to change:

- Resource group name
- Location
- App name
- Docker image
