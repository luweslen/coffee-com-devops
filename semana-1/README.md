# CI/CD com GitHub Actions

## Roteiro

- [CI/CD](#ci-cd)
  - [Continuous Integration](#ci-cd-continuous-integration)
  - [Continuous Delivery](#ci-cd-continuous-delivery)
  - [Continuous Deployment](#ci-cd-continuous-deployment)
  - [Exemplos de Ferramentas](#ci-cd-ferramentas)
- [GitHub Actions](#github-actions)
  - [Workflows / Fluxo de Trabalho](#github-actions-workflows)
  - [Events / Eventos](#github-actions-events)
  - [Jobs / Trabalhos](#github-actions-jobs)
  - [Actions / Ações](#github-actions-actions)
  - [Runners / Executores](#github-actions-runners)
  - [Exemplo](#github-actions-example)
- [Exercício Prático](#exercise)
- [Links/Referências](#links)

## CI/CD <a name="ci-cd"></a>

### Continuous Integration <a name="ci-cd-continuous-integration"></a>

Continuous Integration (CI), em português Integração Continua, é uma prática de desenvolvimento de software na qual os membros de uma equipe integram seu trabalho frequentemente, geralmente várias vezes por dia. Cada integração é verificada por meio de uma compilação automatizada (compilação de código, execução de testes automatizados, etc.) para detectar erros o mais rápido possível. Isso permite detectar e corrigir problemas de integração rapidamente, melhorando a qualidade do software e reduzindo o tempo e os custos associados à resolução de problemas de integração mais tarde no ciclo de desenvolvimento. O uso de ferramentas de automação é fundamental no processo de CI para tornar as integrações contínuas eficientes e confiáveis.

### Continuous Delivery <a name="ci-cd-continuous-delivery"></a>

Continuous Delivery (Entrega Contínua) é uma abordagem de desenvolvimento de software na qual os times produzem software em ciclos curtos e garantem que o código esteja sempre em um estado pronto para ser implantado em produção. A ideia principal é automatizar o processo de implantação para que a entrega de novas funcionalidades, correções de bugs e melhorias seja rápida, confiável e repetível.

Nesse modelo, o código passa por uma série de etapas automatizadas, incluindo testes automatizados, análise estática de código, geração de artefatos de implantação e implantação automatizada em ambientes de teste e, eventualmente, em produção. Cada alteração no código é potencialmente implantável e pode ser entregue aos usuários finais a qualquer momento, sem a necessidade de longos períodos de preparação ou integração manual.

Continuous Delivery é frequentemente combinado com Continuous Integration (Integração Contínua), formando um processo conhecido como CI/CD, onde a integração contínua garante que todas as alterações de código sejam testadas e integradas automaticamente, enquanto a entrega contínua automatiza a implantação dessas alterações em diferentes ambientes. Essa abordagem ajuda as equipes a reduzir o tempo de lançamento, minimizar riscos e aumentar a confiabilidade do software entregue aos usuários.

### Continuous Deployment <a name="ci-cd-continuous-deployment"></a>

Continuous Deployment (Implantação Contínua) é uma prática de desenvolvimento de software que vai além da Continuous Delivery (Entrega Contínua). Enquanto na Continuous Delivery as alterações de código são automaticamente preparadas para implantação em produção, na Continuous Deployment, essas alterações são implantadas automaticamente em produção sem intervenção humana adicional.

Na Continuous Deployment, cada alteração de código que passa com sucesso pelos estágios de teste e integração é automaticamente implantada nos ambientes de produção. Isso significa que as atualizações de software são entregues aos usuários finais assim que estiverem prontas, sem atrasos ou espera por uma implantação manual.

Essa prática exige um alto nível de automação em todo o processo de desenvolvimento e implantação, incluindo testes automatizados abrangentes, monitoramento contínuo de desempenho e confiabilidade, e estratégias robustas de reversão automática em caso de problemas.

Continuous Deployment é especialmente comum em organizações que buscam ciclos de feedback rápidos e desejam entregar valor aos usuários com a maior frequência possível, mantendo alta qualidade e confiabilidade no software. No entanto, é importante garantir que a automação seja cuidadosamente configurada e monitorada para evitar interrupções indesejadas nos serviços em produção.

### Exemplos de Ferramentas <a name="ci-cd-ferramentas"></a>

- GitHub Actions
- GitLab CI
- Bitbucket Pipelines
- Atlassian Bamboo
- Codebuild / Codepipeline (AWS)
- Azure pipelines
- Cloud build (GCP)
- TeamCity (JetBrains)
- Jenkins
- Travis
- Codeship
- Circle CI
- Spinnaker
- GoCD
- Concourse
- Screwdriver

## GitHub Actions <a name="github-actions"></a>

O GitHub Actions é uma plataforma de automação oferecida pelo GitHub, que permite automatizar fluxos de trabalho dentro do ambiente do GitHub. Com ele, você pode criar workflows personalizados para automatizar tarefas como teste, build, implantação e outras etapas do ciclo de vida de desenvolvimento de software.

### Workflows / Fluxo de Trabalho <a name="github-actions-workflows"></a>

Um "workflow" é uma automação personalizada que você define para o seu repositório do GitHub. Um workflow é composto por uma série de "ações" que são executadas sequencial ou paralelamente em resposta a eventos específicos no repositório. Esses eventos podem incluir coisas como push de código, criação de pull requests, lançamentos de novas versões, entre outros. Os workflows são definidos em arquivos YAML armazenados no diretório .github/workflows do seu repositório. Esses arquivos contêm instruções sobre quais ações devem ser executadas, em que ordem e sob quais condições.

### Events / Eventos <a name="github-actions-events"></a>

Os "events" (eventos) são gatilhos que acionam a execução de um workflow. Esses eventos podem ser desencadeados por ações específicas que ocorrem no seu repositório do GitHub, como push de código, criação de pull requests, criação ou exclusão de branches, lançamentos de novas versões, entre outros. Cada evento é associado a um workflow específico e define quando esse workflow deve ser executado. Por exemplo, você pode configurar um workflow para ser acionado automaticamente sempre que houver um push de código para o branch master, ou quando uma nova release é publicada, ou ainda quando um novo pull request é aberto.

### Jobs / Trabalhos <a name="github-actions-jobs"></a>

Os "jobs" (trabalhos) são unidades de execução dentro de um workflow. Cada workflow pode conter um ou mais jobs, que são executados em paralelo (por padrão) ou em sequência, dependendo da sua configuração. São compostos por uma ou mais etapas ("steps") que representam as tarefas individuais que devem ser executadas dentro desse job. Por exemplo, um job pode consistir em etapas para configurar o ambiente de build, compilar o código, executar testes, empacotar o aplicativo, e assim por diante. Os jobs podem ter dependências entre si, o que significa que um job só será executado após a conclusão bem-sucedida de outro job específico. Isso permite criar fluxos de trabalho mais complexos e controlados, onde diferentes etapas são executadas em sequência e condicionalmente, dependendo do resultado das etapas anteriores.

### Actions / Ações <a name="github-actions-actions"></a>

As "actions" (ações) são os componentes individuais que compõem os workflows. As actions são unidades de trabalho reutilizáveis que podem ser combinadas para criar fluxos de trabalho personalizados e automatizados para o seu repositório do GitHub.

As actions podem ser de dois tipos principais:

- **Actions da comunidade:** São ações pré-definidas e compartilhadas pela comunidade do GitHub. Elas estão disponíveis no GitHub Marketplace e abrangem uma ampla variedade de casos de uso, como construção de aplicativos, testes, implantação, notificações, entre outros.
- **Actions personalizadas:** São ações criadas por você ou pela sua equipe para atender a necessidades específicas do seu projeto. Elas podem ser escritas em qualquer linguagem de programação e podem executar praticamente qualquer tarefa que você possa imaginar. As actions personalizadas são armazenadas no seu repositório do GitHub ou em um repositório público para que possam ser reutilizadas em diferentes workflows.

Cada action é executada em um ambiente isolado, garantindo que todas as dependências necessárias estejam disponíveis durante a execução. Elas podem interagir com o código, com o ambiente de execução e com outros serviços externos, conforme necessário para realizar suas tarefas.

### Runners / Executores <a name="github-actions-runners"></a>

Os "runners" (executores) são máquinas virtuais ou contêineres que executam os jobs dos workflows. Eles fornecem o ambiente de execução no qual as ações do GitHub Actions são executadas.

Existem dois tipos principais de runners:
- **GitHub-hosted runners**: São executores gerenciados pelo GitHub e disponíveis gratuitamente para uso em workflows públicos e privados. O GitHub oferece uma variedade de imagens de sistema operacional e ambientes de execução para suportar diferentes linguagens de programação e tecnologias. Esses runners são provisionados automaticamente pelo GitHub conforme necessário e oferecem escalabilidade e confiabilidade para executar os jobs dos workflows.
- **Self-hosted runners**: São executores que você configura e gerencia em seu próprio ambiente, seja em suas próprias máquinas físicas, máquinas virtuais ou contêineres. Com os self-hosted runners, você tem mais controle sobre o ambiente de execução e pode personalizá-lo conforme necessário para atender aos requisitos específicos do seu projeto. Eles são úteis quando você precisa acessar recursos específicos que não estão disponíveis nos runners hospedados pelo GitHub ou quando deseja integrar os workflows com sua infraestrutura existente.

Os runners são responsáveis por executar as ações definidas nos jobs dos workflows, garantindo que todas as dependências e configurações necessárias estejam disponíveis durante a execução. Cada job é executado em um runner separado, garantindo isolamento e segurança entre os diferentes processos de execução.

### Exemplo <a name="github-actions-example"></a>

```yaml
name: learn-github-actions

run-name: ${{ github.actor }} is learning GitHub Actions

on: [push]

jobs:
  check-bats-version:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v4
      - uses: actions/setup-node@v3
    with:
      node-version: '14'
        - run: npm install
```

## Exercício Prático <a name="exercise"></a>

Escrever um Workflow reutilizável
  - Projeto base: https://github.com/luweslen/luweslen.com

## Links/Referências <a name="link"></a>

- [GitHub Actions](https://docs.github.com/pt/actions)
- [O que é CI/CD?](https://www.redhat.com/pt-br/topics/devops/what-is-ci-cd)
- [Continuous integration vs. delivery vs. deployment](https://www.atlassian.com/continuous-delivery/principles/continuous-integration-vs-delivery-vs-deployment)