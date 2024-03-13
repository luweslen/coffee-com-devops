# Infrastructure as a Code | Ansible

## Roteiro

- [Descrição](#descricao)
- [Ansible vs Terraform](#ansible-vs-terraform)
- [Conceitos](#conceitos)
  - [Inventory](#inventory)
  - [Playbooks](#playbooks)
  - [Role](#role)
  - [Handlers](#handlers)
  - [Plugins](#plugins)
  - [Collections](#collections)
- [Exemplo](#exemplo)
- [Exercício Prático](#exercise)
- [Links/Referências](#links)

## Descrição <a name="descricao"></a>

O Ansible é uma ferramenta open-source usada para automatizar o provisionamento, configuração, gerenciamento e implantação de aplicativos e sistemas. Ele simplifica tarefas complexas de infraestrutura, permitindo que você automatize processos repetitivos e simplifique a administração de servidores, redes e serviços em grande escala. Com o Ansible, você pode definir as configurações do sistema em arquivos de texto simples, chamados de playbooks, e depois executar esses playbooks em hosts remotos para realizar as configurações desejadas de forma consistente e confiável. Ele usa uma abordagem baseada em SSH para se comunicar com os hosts e realizar as operações necessárias, sem a necessidade de instalar agentes em sistemas remotos. Isso o torna uma ferramenta poderosa e flexível para automação de infraestrutura.

## Ansible vs Terraform <a name="ansible-vs-terraform"></a>


Ansible e Terraform são duas ferramentas populares usadas para automação de infraestrutura, mas elas têm abordagens diferentes e são frequentemente usadas para fins diferentes. Aqui está uma comparação entre elas:

**Ansible:**

- **Abordagem de configuração:** O Ansible é principalmente uma ferramenta de automação de configuração. Ele permite definir e executar tarefas em hosts remotos usando playbooks escritos em YAML.
- **Agent-less:** O Ansible é "agent-less", o que significa que não requer a instalação de agentes nos hosts remotos. Ele se comunica com os hosts via SSH ou WinRM para executar as tarefas.
- **Linguagem de configuração:** Os playbooks do Ansible são escritos em YAML, que é fácil de ler e escrever. Isso torna o Ansible acessível mesmo para aqueles que não são programadores experientes.
- **Flexibilidade:** O Ansible é flexível e pode ser usado para automatizar uma ampla variedade de tarefas de infraestrutura, desde o provisionamento de servidores até a configuração de aplicativos e serviços.

**Terraform:**

- **Abordagem de infraestrutura como código:** O Terraform é uma ferramenta de infraestrutura como código (IaC) que permite definir e provisionar recursos de infraestrutura usando uma linguagem declarativa.
- **Provisionamento de infraestrutura:** O Terraform é projetado para provisionar e gerenciar recursos de infraestrutura, como servidores, redes e armazenamento, em vários provedores de nuvem e ambientes on-premise.
- **State Management:** O Terraform mantém um estado do ambiente de infraestrutura em um arquivo local. Isso permite que ele acompanhe as mudanças feitas na infraestrutura e planeje as alterações futuras de forma eficiente.
- **Multi-cloud:** O Terraform é frequentemente usado em ambientes de multi-cloud, permitindo que os usuários provisionem e gerenciem recursos em diferentes provedores de nuvem com a mesma configuração.

**Comparação:**

**Finalidade:** O Ansible é mais adequado para automação de configuração e gerenciamento de sistemas, enquanto o Terraform é melhor para provisionamento de infraestrutura e gerenciamento de recursos de nuvem.
**Abstração:** O Ansible opera em um nível mais alto, executando tarefas e configurações em sistemas existentes, enquanto o Terraform trabalha em um nível mais baixo, provisionando recursos de infraestrutura do zero.
**Complexidade:** O Ansible pode ser mais simples de aprender e usar para tarefas de automação de configuração simples, enquanto o Terraform pode ser mais complexo devido à sua abordagem de infraestrutura como código e à necessidade de entender os recursos específicos de cada provedor de nuvem.

Em resumo, enquanto o Ansible e o Terraform têm sobreposição em algumas áreas de automação de infraestrutura, eles são frequentemente usados em conjunto para abordar diferentes aspectos do ciclo de vida da infraestrutura de TI.

## Conceitos <a name="conceitos"></a>

### Inventory <a name="inventory"></a>

No Ansible, o "Inventory" é um arquivo ou conjunto de arquivos que contém informações sobre os hosts nos quais você deseja executar as tarefas de automação. O Inventory lista os hosts remotos por seus nomes ou endereços IP e os organiza em grupos lógicos para facilitar a execução de tarefas em conjuntos específicos de hosts.

O Inventory pode ser definido em vários formatos, incluindo arquivos de texto simples, arquivos INI, YAML ou até mesmo em fontes dinâmicas, como consultas a provedores de nuvem ou bancos de dados. Um exemplo de um arquivo de inventário básico em formato INI seria:

```ini
[web-servers]
web1.example.com
web2.example.com

[database-servers]
db1.example.com
db2.example.com
```

Neste exemplo, temos dois grupos de hosts: "web-servers" e "database-servers". Cada grupo contém uma lista de hosts associados a ele. Quando você executa tarefas com o Ansible, pode especificar em quais grupos de hosts deseja que as tarefas sejam executadas.

O Inventory é uma parte fundamental do Ansible, pois permite que você defina os hosts nos quais deseja gerenciar e automatizar a configuração, instalação de software, atualizações e outras operações de administração de sistemas. Ele fornece uma maneira flexível e poderosa de organizar e controlar seus ambientes de infraestrutura.


### Playbooks <a name="playbooks"></a>

No Ansible, os "playbooks" são arquivos YAML que contêm uma série de "plays", que por sua vez contêm uma lista de "tasks" a serem executadas em um ou mais hosts remotos. Os playbooks são usados para definir e executar automações de infraestrutura, permitindo que você especifique as configurações desejadas e as operações a serem realizadas em seus sistemas de forma clara e legível.

Um playbook pode conter uma ou mais "plays", que são unidades lógicas de configuração ou operações relacionadas. Cada "play" geralmente se aplica a um conjunto específico de hosts, definido no arquivo de inventário, e pode conter várias "tasks".

Aqui está um exemplo simples de um playbook Ansible em YAML:

```yaml
---
- name: Instalar e iniciar o serviço Apache
  hosts: web-servers
  become: yes
  
  tasks:
    - name: Instalar o Apache
      yum:
        name: httpd
        state: present

    - name: Iniciar o serviço Apache
      service:
        name: httpd
        state: started
```

Neste exemplo:
- **name:** é um rótulo descritivo para o play.
- **hosts:** especifica o grupo de hosts no qual este play será executado, conforme definido no inventário.
- **become:** indica que as tarefas dentro deste play serão executadas com privilégios de superusuário (geralmente root).
- **tasks:** é uma lista de tarefas a serem executadas. Cada tarefa tem um nome descritivo e uma ação a ser realizada, como instalar um pacote (yum) ou iniciar um serviço (service).

Os playbooks fornecem uma maneira poderosa e flexível de automatizar tarefas em ambientes de infraestrutura, permitindo que você defina facilmente as configurações desejadas e as ações a serem executadas em seus hosts remotos. Com o Ansible, os playbooks são uma ferramenta essencial para a automação de operações de TI.

### Role <a name="role"></a>

No Ansible, uma "role" é uma maneira de organizar e reutilizar partes comuns de configuração e automação. Uma role é uma coleção de arquivos YAML, incluindo playbooks, variáveis, tarefas e até mesmo outros diretórios com funcionalidades específicas, como handlers ou templates. Ela encapsula a funcionalidade necessária para realizar uma função específica em um sistema.

As roles são especialmente úteis para dividir uma configuração em partes menores e mais gerenciáveis, facilitando a manutenção e a reutilização de código. Por exemplo, você pode ter uma role para configurar um servidor web, outra para configurar um banco de dados e uma terceira para configurar um servidor de aplicativos. Cada role contém os playbooks, variáveis e tarefas necessárias para realizar sua função específica.

Para usar uma role em um playbook, você pode simplesmente incluí-la no arquivo YAML do playbook usando a diretiva roles. Por exemplo:

```yaml
---
- name: Configurar um servidor web
  hosts: web-servers
  become: yes

  roles:
    - web-server-role
```

Neste exemplo,`web-server-role` é o nome da role que será executada neste playbook.

As roles permitem uma abordagem modular e organizada para a automação de infraestrutura, tornando mais fácil compartilhar e reutilizar código, além de facilitar a manutenção e a escalabilidade dos seus playbooks do Ansible.

### Handlers <a name="handlers"></a>

No Ansible, "Handlers" são tarefas que são disparadas apenas quando notificadas por outras tarefas no playbook. Eles são úteis para realizar ações que devem ser executadas apenas quando uma mudança específica ocorre, como reiniciar um serviço após uma alteração de configuração.

Por exemplo, suponha que você tenha uma tarefa em um playbook para modificar um arquivo de configuração e deseje reiniciar o serviço associado a essa configuração apenas se o arquivo de configuração for alterado. Nesse caso, você pode definir um handler para reiniciar o serviço e notificá-lo para executar apenas se a tarefa de modificação do arquivo de configuração for bem-sucedida.

Aqui está um exemplo de como definir e usar um handler em um playbook do Ansible:

```yaml
---
- name: Exemplo de uso de handlers
  hosts: all
  become: yes

  tasks:
    - name: Modificar o arquivo de configuração
      template:
        src: arquivo_de_configuracao.j2
        dest: /etc/arquivo_de_configuracao.conf
      notify: Reiniciar serviço

  handlers:
    - name: Reiniciar serviço
      service:
        name: meu_servico
        state: restarted
```

Neste exemplo:

- A tarefa **Modificar o arquivo de configuração** utiliza o módulo **template** para copiar um arquivo de configuração (gerado a partir de um modelo Jinja2) para o destino **/etc/arquivo_de_configuracao.conf**. A notificação **notify: Reiniciar serviço** é adicionada a essa tarefa.
- O handler **Reiniciar serviço** é definido com a tarefa **service** para reiniciar o serviço meu_servico quando for notificado.

Assim, o handler Reiniciar serviço só será executado se a tarefa de modificação do arquivo de configuração for bem-sucedida e notificar a execução do handler.

Os handlers permitem que você mantenha a configuração do sistema consistente e automatize ações específicas em resposta a mudanças em seus hosts, adicionando uma camada adicional de controle e precisão às suas automações do Ansible.

### Plugins <a name="plugins"></a>

Os plugins no Ansible são componentes que estendem e personalizam a funcionalidade básica da ferramenta. Eles são usados para adicionar novos módulos, filtros, inventários dinâmicos, autenticação externa e muito mais ao Ansible. Os plugins são escritos em Python e podem ser criados tanto pela comunidade quanto pelos próprios usuários para atender às suas necessidades específicas de automação.

Aqui estão alguns tipos comuns de plugins no Ansible:

1. **Módulos:** Os módulos são scripts Python que executam as tarefas de automação em hosts remotos. Eles são usados para realizar uma ampla variedade de operações, como gerenciamento de pacotes, configuração de serviços, manipulação de arquivos e muito mais.
2. **Filtros:** Os filtros permitem manipular e transformar dados dentro de templates Jinja2. Eles são usados para realizar operações como formatação de strings, filtragem de listas e dicionários, e manipulação de datas.
3. **Inventários Dinâmicos:** Os inventários dinâmicos são plugins que permitem gerar dinamicamente a lista de hosts a serem gerenciados pelo Ansible. Eles podem consultar fontes de dados externas, como provedores de nuvem, bancos de dados ou APIs, para obter informações sobre os hosts.
4. **Callbacks:** Os callbacks são plugins que permitem personalizar a saída e o comportamento do Ansible durante a execução de playbooks. Eles podem ser usados para registrar informações adicionais, enviar notificações ou executar ações específicas em resposta a eventos durante a execução do playbook.
5. **Autenticação Externa:** Os plugins de autenticação externa permitem autenticar os usuários do Ansible usando sistemas externos, como LDAP, Active Directory ou provedores de autenticação baseados em SAML.

Esses são apenas alguns exemplos de plugins no Ansible. Eles fornecem uma maneira flexível e poderosa de estender a funcionalidade padrão do Ansible para atender às necessidades específicas de automação de infraestrutura de cada ambiente.

### Collections <a name="collections"></a>

As "Collections" no Ansible são uma maneira de organizar e distribuir conteúdo, como papéis, módulos, plugins, playbooks e documentação, de forma mais modular e gerenciável. As Collections são distribuídas como pacotes independentes, que podem ser instalados e gerenciados usando o gerenciador de pacotes do Ansible, o "Ansible Galaxy". Cada Collection pode conter vários papéis, módulos e outros recursos relacionados que são organizados em uma estrutura de diretórios específica.

As Collections oferecem os seguintes benefícios:

1. **Modularidade:** As Collections permitem dividir o conteúdo de automação em unidades mais granulares e reutilizáveis, facilitando a organização e a manutenção de grandes bibliotecas de automação.
2. **Gerenciamento simplificado:** O Ansible Galaxy fornece um mecanismo centralizado para descobrir, instalar e compartilhar Collections, simplificando o processo de gerenciamento de conteúdo de automação.
3. **Compatibilidade com versões:** As Collections são distribuídas como pacotes independentes, o que permite que os desenvolvedores controlem as dependências e as versões de cada componente de automação de forma mais eficaz.
4. **Evolução contínua:** As Collections são projetadas para facilitar a evolução contínua e o desenvolvimento colaborativo de automações, permitindo que os desenvolvedores publiquem atualizações e melhorias regularmente.

As Collections representam uma abordagem moderna e flexível para organizar e distribuir conteúdo de automação no Ansible, tornando mais fácil compartilhar e reutilizar automações entre equipes e comunidades. Elas são uma parte importante do ecossistema do Ansible, ajudando a impulsionar a adoção e a eficácia da automação de infraestrutura em organizações de todos os tamanhos.

## Exemplo <a name="example"></a>

[Learn Ansible Workshop](https://github.com/gabrielsclimaco/learn-ansible-workshop/tree/refactor)

## Exercício Prático <a name="exercise"></a>

Criar Playbook para instalar dependências na própria máquina após uma instalação recém feita do Linux.

[Using Ansible to automate your Laptop and Desktop configs!](https://www.youtube.com/watch?v=gIDywsGBqf4&t=185s&pp=ygUWbGVhcm4gbGludXggdHYgYW5zaWJsZQ==)

## Links/Referências <a name="link"></a>

- [Ansible Documentation](https://docs.ansible.com/ansible/latest/index.html)
- [Ansible vs. Terraform](https://www.redhat.com/en/topics/automation/ansible-vs-terraform)
