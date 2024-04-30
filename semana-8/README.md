# Amazon Elastic Compute Cloud (EC2)

## Roteiro

- [Descrição](#description)
- [Recursos](#resources)
- [Formas de Acesso](#access)
- [Exercício Prático](#exercise)
- [Links/Referências](#links)

## Descrição <a name="description"></a>

O Amazon Elastic Compute Cloud (EC2) é um serviço da AWS que fornece capacidade computacional segura e redimensionável na nuvem.  Imagine que é como um gigantesco data center virtual que permite que você alugue computadores virtuais (chamados de instâncias) para executar qualquer tipo de workload.

Veja algumas das vantagens do EC2:

- **Escalabilidade:** Você pode facilmente aumentar ou diminuir a capacidade de computação conforme a sua necessidade, sem precisar se preocupar com a compra e manutenção de hardware físico.
- **Custo-efetividade:** Você só paga pelos recursos de computação que utiliza, o que torna o EC2 uma opção econômica para workloads com picos de demanda.
- **Variedade de opções:** O EC2 oferece uma ampla variedade de tipos de instâncias para atender a diferentes necessidades de computação, memória, armazenamento e rede.
- **Controle total:** Você tem controle total sobre as instâncias do EC2, podendo configurar o sistema operacional, instalar softwares e gerenciar a segurança.
- **Fácil de usar:** O EC2 é um serviço fácil de usar, com uma interface web intuitiva e uma API poderosa para automação.

## Recursos <a name="resources"></a>

O Amazon EC2 oferece uma ampla gama de recursos para atender às suas necessidades de computação em nuvem. Os principais recursos incluem:

- **Tipos de instância:** O EC2 oferece uma variedade de tipos de instância com diferentes combinações de CPU, memória, armazenamento e capacidade de rede. Você pode escolher o tipo de instância ideal para suas cargas de trabalho específicas.
- **Imagens da máquina Amazon (AMIs):** As AMIs são modelos pré-configurados que contêm o sistema operacional, os aplicativos e outros softwares necessários para executar suas cargas de trabalho. Você pode usar AMIs públicas pré-criadas ou criar suas próprias AMIs personalizadas.
- **Armazenamento:** O EC2 oferece várias opções de armazenamento para seus dados, incluindo:
  - **Amazon Elastic Block Store (EBS):** O EBS é um serviço de armazenamento em bloco durável e escalável que fornece volumes de armazenamento persistentes para suas instâncias do EC2.
  - **Amazon S3:** O S3 é um serviço de armazenamento de objetos de grande escala que oferece armazenamento seguro e durável para grandes quantidades de dados não estruturados.
  - **Amazon Elastic File System (EFS):** O EFS é um sistema de arquivos de rede escalável e de alto desempenho que permite que várias instâncias do EC2 acessem um sistema de arquivos compartilhado.
- **Rede:** O EC2 oferece recursos de rede robustos e flexíveis, incluindo:
  - **Amazon Virtual Private Cloud (VPC):** O VPC permite que você crie sua própria rede privada na nuvem e configure seus próprios recursos de rede, como sub-redes, gateways e tabelas de roteamento.
  - **Amazon Elastic Load Balancing (ELB):** O ELB distribui o tráfego de rede para suas instâncias do EC2 para melhorar a disponibilidade e o desempenho de seus aplicativos.
  - **Amazon Route 53:** O Route 53 é um serviço de DNS que permite que você roteie o tráfego para seus aplicativos na AWS e na internet.
- **Segurança:** O EC2 oferece uma variedade de recursos de segurança para proteger seus recursos na nuvem, incluindo:
  - **Grupos de segurança:** Os grupos de segurança permitem que você controle o tráfego de rede de entrada e saída para suas instâncias do EC2.
  - **Instâncias protegidas:** As instâncias protegidas fornecem uma camada adicional de segurança para suas instâncias do EC2 criptografando seus discos de inicialização e armazenando suas chaves de criptografia no AWS Key Management Service (KMS).
  - **AWS Identity and Access Management (IAM):** O IAM permite que você controle quem pode acessar seus recursos da AWS e o que eles podem fazer com esses recursos.
- **Escalabilidade:** O EC2 pode ser facilmente escalonado para cima ou para baixo para atender às suas necessidades de mudança de carga de trabalho. Você pode adicionar ou remover instâncias do EC2 com apenas alguns cliques e o EC2 cuidará automaticamente do balanceamento de carga entre as instâncias.
- **Custo:** O EC2 é um serviço de pagamento por uso, o que significa que você só paga pelos recursos que usa. Você não precisa investir em hardware ou software de front-end e não há custos de contrato ou cancelamento.

Além desses recursos principais, o EC2 também oferece uma variedade de recursos adicionais, como:

- **Auto Scaling:** O Auto Scaling permite que você automatize o processo de dimensionamento de suas instâncias do EC2 para cima ou para baixo com base em suas necessidades de carga de trabalho.
- **Spot Instances:** Spot Instances são instâncias do EC2 com preços com desconto que você pode usar para executar cargas de trabalho tolerantes a falhas.
- **AWS Lambda:** O Lambda é uma plataforma de computação sem servidor que permite executar código sem precisar provisionar ou gerenciar servidores.
- **Amazon Container Services:** O Amazon Container Services oferece vários serviços para gerenciar contêineres Docker na AWS, como Amazon Elastic Container Service (ECS) e Amazon Elastic Kubernetes Service (EKS).

## Formas de acesso <a name="access"></a>

Existem diversas maneiras de acessar sua instância EC2, cada uma com suas vantagens e desvantagens. A melhor opção para você dependerá de suas necessidades e preferências específicas.

**1. Console do Amazon EC2:**

* **Vantagens:**
    * Interface gráfica intuitiva.
    * Permite visualizar e gerenciar várias instâncias simultaneamente.
    * Oferece acesso a uma ampla gama de recursos do EC2, como iniciar, parar e dimensionar instâncias, gerenciar armazenamento e configurar redes.

* **Desvantagens:**
    * Pode ser menos eficiente para usuários experientes que desejam executar tarefas rapidamente.
    * Requer um navegador web.

**2. Amazon EC2 CLI (Command Line Interface):**

* **Vantagens:**
    * Permite automatizar tarefas usando scripts.
    * Ideal para usuários experientes que desejam executar tarefas rapidamente e com eficiência.
    * Acessível a partir de qualquer terminal.

* **Desvantagens:**
    * Requer conhecimento da sintaxe da CLI.
    * Pode ser menos intuitivo para usuários iniciantes.

**3. Cliente SSH:**

* **Vantagens:**
    * Oferece acesso seguro à sua instância EC2 por meio de uma conexão SSH.
    * Permite executar comandos Linux remotamente na sua instância.
    * Flexível e personalizável.

* **Desvantagens:**
    * Requer conhecimento de comandos SSH.
    * Pode ser menos intuitivo para usuários iniciantes.

**4. EC2 Instance Connect:**

* **Vantagens:**
    * Permite conectar-se à sua instância EC2 diretamente do seu navegador web, sem a necessidade de instalar nenhum software adicional.
    * Oferece uma sessão de terminal segura e baseada em navegador.
    * Fácil de usar e ideal para usuários iniciantes.

* **Desvantagens:**
    * Funcionalidade limitada em comparação com outras opções, como CLI ou SSH.
    * Requer uma conexão de internet ativa.

**5. Ferramentas de terceiros:**

* **Vantagens:**
    * Diversas ferramentas de terceiros oferecem recursos adicionais para gerenciar suas instâncias EC2, como monitoramento, provisionamento automatizado e backup.
    * Podem integrar-se com outras ferramentas e serviços de gerenciamento em nuvem.

* **Desvantagens:**
    * Podem ter custos adicionais.
    * Requerem familiarização com a ferramenta específica.

**Recomendação:**

Para iniciantes, o **Console do Amazon EC2** ou o **EC2 Instance Connect** são boas opções devido à sua interface intuitiva e facilidade de uso. Usuários experientes que desejem mais eficiência podem preferir a **Amazon EC2 CLI** ou um **cliente SSH**. Ferramentas de terceiros podem ser úteis para usuários que precisam de recursos adicionais, mas é importante pesquisar e escolher uma ferramenta que atenda às suas necessidades específicas.

## Exercício Prático <a name="exercise"></a>

Criar uma EC2, acessar via SSH utilizando uma chave .pem criada pela AWS e se conectar com o banco criado na Aula 7 utilizando psql .

## Links/Referências <a name="link"></a>

- [Amazon EC2](https://aws.amazon.com/pt/ec2)
- [O que é o Amazon EC2?](https://docs.aws.amazon.com/pt_br/AWSEC2/latest/UserGuide/concepts.html)

