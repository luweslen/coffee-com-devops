# AWS | IAM

## Roteiro

- [O que é IAM?](#o-que-e-iam)
- [Identidades e gerenciamento de acesso](#identidades)
- [Boas práticas](#boas-praticas)
- [Exercício Prático](#exercicio)
- [Links/Referências](#links)

## O que é IAM? <a name="o-que-e-iam"></a>

O IAM (Identity and Access Management) da AWS é um serviço que permite gerenciar de forma centralizada o acesso aos recursos da Amazon Web Services (AWS). Com o IAM, você pode criar e gerenciar usuários e grupos de usuários, definir permissões granulares para acessar serviços e recursos da AWS, e controlar quem pode fazer o quê dentro da sua conta da AWS. Isso ajuda a garantir a segurança dos seus recursos, permitindo que você conceda acesso apenas às pessoas e sistemas que precisam dele, enquanto mantém o controle sobre as permissões e atividades.

![AWS IAM](./images//aws-iam.png)

## Identidades e gerenciamento de acesso <a name="recursos"></a>

O AWS IAM (Identity and Access Management) oferece uma variedade de recursos para ajudar a gerenciar identidades e acessos de forma segura na sua conta da AWS. Alguns dos recursos principais incluem:

- **Usuários:** Permite criar e gerenciar identidades individuais que podem interagir com a conta da AWS.
- **Grupos:** Permite agrupar usuários com permissões semelhantes para facilitar a atribuição e gerenciamento de políticas de acesso.
- **Funções:** Permite delegar temporariamente permissões aos usuários, aplicativos ou serviços para acessar recursos específicos da AWS.
- **Políticas:** Define as permissões exatas que são concedidas aos usuários, grupos ou funções. As políticas são documentos JSON que especificam as ações permitidas ou negadas em recursos específicos da AWS.
Credenciais de segurança: Permite gerenciar chaves de acesso (chave secreta e chave de acesso) para interagir com a API da AWS de forma programática.
- **Auditoria e monitoramento:** Fornece logs detalhados de atividade para rastrear quem fez o quê e quando dentro da conta da AWS.
- **Políticas de acesso condicional:** Permite definir políticas com base em condições específicas, como endereço IP, data/hora e tags de recursos, para controlar o acesso de maneira mais granular.
- **Integração com outros serviços da AWS:** O IAM é integrado com muitos outros serviços da AWS, permitindo o controle fino sobre quem pode acessar esses serviços e como podem interagir com eles.

Esses recursos combinados ajudam a garantir que apenas usuários autorizados tenham acesso aos recursos da AWS e que esse acesso seja concedido de acordo com os princípios de segurança e conformidade da sua organização.

![Identidades e gerenciamento de acesso](identidade.png)

## Boas práticas <a name="boas-praticas"></a>

- Exija que os usuários humanos usem a federação com um provedor de identidade para acessar a AWS
usando credenciais temporárias
- Exija que as workloads usem credenciais temporárias com perfis do IAM para acessar a AWS
- Exija autenticação multifator (MFA)
- Atualize as chaves de acesso quando necessário para casos de uso que exijam credenciais de longo
prazo
- Siga as melhores práticas para proteger as credenciais do usuário raiz
- Aplique permissões de privilégio mínimo
- Comece com as políticas gerenciadas pela AWS e avance para as permissões de privilégio mínimo.
- Use o IAM Access Analyzer para gerar políticas de privilégios mínimos com base na atividade de acesso
- Revise e remova regularmente usuários, funções, permissões, políticas e credenciais não utilizados
- Use condições nas políticas do IAM para restringir ainda mais o acesso
- Verifique o acesso entre contas e público aos recursos com o IAM Access Analyzer
- Estabeleça barreiras de proteção para permissões em várias contas
- Use limites de permissões para delegar o gerenciamento de permissões em uma conta
- Usuário raiz
  - Proteja suas credenciais de usuário raiz para evitar o uso não autorizado
  - Use uma senha de usuário raiz forte para ajudar a proteger o acesso
  - Proteja o acesso do seu usuário raiz com autenticação multifator (MFA)

## Exercício Prático <a name="exercicio"></a>

Criar usuário com permissão para visualizar recursos do IAM.

- [Repositório](https://github.com/luweslen/coffee-com-devops)

## Links/Referências <a name="link"></a>

- [AWS Identity and Access Management](https://aws.amazon.com/pt/iam/)
- [O que é o IAM?](https://docs.aws.amazon.com/pt_br/IAM/latest/UserGuide/introduction.html)
- [Eventual consistency](https://en.wikipedia.org/wiki/Eventual_consistency)
