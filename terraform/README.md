# MentoriOps - Terraform

Esta pasta contém os arquivos de configuração do Terraform para o projeto de mentoria DevOps.

## Conteúdo

### Configuração

- `provider.tf`: O arquivo de configuração principal do Terraform.
- `variables.tf`: As variáveis usadas na configuração do Terraform.
- `outputs.tf`: As saídas da configuração do Terraform.

### Recursos

- `iam.tf`: Gerencia recursos relacionados a permissionamento e gestão de acesso

## Como fazer

Para fazer alterações na configuração do Terraform e aplicá-las usando o GitHub Actions, siga estes passos:

1. Clone o repositório para sua máquina local:

2. Realize alterações nos aquivos da pasta `terraform`

3. Registre as alterações com git e faça o push para o repositório

4. Aguarde a execução da CI terminar e em seguida confira se o planejamento do Terraform reflete as alterações feitas em código

5. Crie uma tag no repositório que siga o formato `terraform_vX.X.X` onde `X.X.X` é a versão que está sendo aplicada

    > Para determinar qual versão utilizar se baseie na última tag criada e no escopo das mudanças feitas
