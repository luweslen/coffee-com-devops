# S3 e Cloudfront

## Roteiro

- [Simple Storage Service (AWS)](#s3)
  - [Componentes](#componentes)
- [Content Delivery Network (CDN)](#cdn)
- [CloudFront (AWS)](#cloudFront)
- [Exercício Prático](#exercise)
- [Links/Referências](#links)

## Simple Storage Service (AWS) <a name="s3"></a>

O Amazon Simple Storage Service (Amazon S3) é um serviço de armazenamento de objetos oferecido pela Amazon Web Services (AWS). Ele fornece uma maneira simples e escalável de armazenar e recuperar grandes quantidades de dados de forma segura pela internet.

O Amazon S3 é projetado para oferecer durabilidade, disponibilidade e escalabilidade. Ele é amplamente utilizado por empresas de todos os tamanhos para uma variedade de casos de uso, incluindo armazenamento de backups, hospedagem de conteúdo estático para sites, distribuição de arquivos de mídia, armazenamento de dados para análise e muito mais.

Alguns dos principais recursos do Amazon S3 incluem:

- **Durabilidade e disponibilidade:** O Amazon S3 é projetado para oferecer 99,999999999% (onze noves) de durabilidade dos dados e 99,99% de disponibilidade dos objetos ao longo de um ano.
- **Escalabilidade:** O S3 pode armazenar uma quantidade ilimitada de dados e escalar automaticamente para atender às demandas de armazenamento crescentes.
- **Segurança:** O Amazon S3 oferece recursos avançados de segurança, incluindo criptografia de dados em repouso e em trânsito, controle de acesso granular, autenticação multifator e integração com outros serviços de segurança da AWS.
- **Gerenciamento de ciclo de vida:** O S3 permite definir políticas de ciclo de vida para seus objetos, automatizando a transição de objetos para classes de armazenamento mais econômicas ou excluindo objetos automaticamente após um determinado período de tempo.
- **Recursos de análise e gerenciamento de acesso:** O Amazon S3 oferece recursos avançados para analisar dados armazenados e gerenciar o acesso a esses dados por meio de logs de acesso, políticas de acesso e integração com serviços de análise da AWS.

## Componentes <a name="componentes"></a>

O Amazon S3 (Simple Storage Service) é composto por vários elementos que juntos fornecem um serviço de armazenamento de objetos altamente escalável, seguro e durável. Aqui estão os principais componentes do Amazon S3:

- **Buckets:** Os buckets são contêineres de nível superior no Amazon S3, onde os objetos são armazenados. Cada objeto é armazenado em um bucket e os nomes dos buckets devem ser únicos globalmente na AWS.
- **Objetos:** Objetos são os principais elementos armazenados no Amazon S3. Eles consistem em dados (arquivos) e metadados associados. Um objeto pode ser qualquer tipo de arquivo digital, como documentos, imagens, vídeos, arquivos de áudio, backups de banco de dados, entre outros.
- **Chaves de objeto:** As chaves de objeto são os nomes únicos atribuídos a cada objeto dentro de um bucket. Elas são usadas para identificar e acessar objetos no Amazon S3. As chaves de objeto devem ser exclusivas dentro de um bucket, mas podem ser repetidas em diferentes buckets.
- **Regiões:** O Amazon S3 é distribuído globalmente em várias regiões geográficas em todo o mundo. Cada região consiste em várias zonas de disponibilidade que são fisicamente separadas dentro de uma área geográfica. Os clientes podem escolher em qual região desejam armazenar seus dados para otimizar o desempenho e a conformidade.
- **Classes de armazenamento:** O Amazon S3 oferece diferentes classes de armazenamento para atender às necessidades específicas de desempenho, disponibilidade e custo dos dados. Isso inclui o S3 Standard, S3 Standard-IA (Infrequent Access), S3 One Zone-IA, S3 Intelligent-Tiering, S3 Glacier, S3 Glacier Deep Archive, entre outros.
- **Políticas de acesso:** As políticas de acesso definem quem pode acessar e manipular os objetos dentro de um bucket do Amazon S3. Elas podem ser aplicadas tanto a nível de bucket quanto a nível de objeto e permitem configurar permissões granulares com base em identidades de usuário, grupos ou outras condições.

## Content Delivery Network (CDN) <a name="cdn"></a>

CDN significa Content Delivery Network, em português, Rede de Distribuição de Conteúdo. É uma rede de servidores distribuídos geograficamente que trabalham juntos para fornecer conteúdo digital, como páginas da web, imagens, vídeos, arquivos de áudio e outros tipos de mídia, aos usuários de forma rápida e eficiente.

Quando um usuário solicita conteúdo, como acessar um site ou fazer download de um arquivo, o CDN redireciona essa solicitação para o servidor mais próximo geograficamente do usuário, em vez de enviar a solicitação diretamente ao servidor de origem onde o conteúdo está hospedado. Isso ajuda a reduzir a latência e o tempo de carregamento, melhorando a experiência do usuário.

Principais características e benefícios de uma CDN:

- **Redução de latência:** Ao servir conteúdo a partir de servidores localizados mais próximos dos usuários, uma CDN reduz a latência e melhora o tempo de resposta, proporcionando uma experiência mais rápida de navegação na web.
- **Maior escalabilidade:** Uma CDN distribui a carga entre vários servidores, o que ajuda a evitar sobrecargas em servidores individuais e permite lidar com picos de tráfego de forma mais eficaz.
- **Aprimoramento da segurança:** Alguns CDNs oferecem recursos avançados de segurança, como proteção contra ataques DDoS (Distributed Denial of Service) e mitigação de ameaças à segurança da rede.
- **Otimização de entrega de mídia:** CDNs são especialmente eficazes na entrega de conteúdo de mídia, como vídeos e transmissões ao vivo, pois otimizam a distribuição de conteúdo de alta largura de banda.
- **Acesso global:** Com servidores distribuídos em várias regiões geográficas ao redor do mundo, uma CDN oferece acesso rápido e confiável ao conteúdo digital em qualquer lugar do globo.

## CloudFront (AWS) <a name="cloudFront"></a>

O Amazon CloudFront é um serviço de CDN (Content Delivery Network) oferecido pela Amazon Web Services (AWS). Ele fornece uma maneira rápida, segura e escalável de distribuir conteúdo estático, dinâmico, de streaming e interativo para usuários finais em todo o mundo.

O CloudFront utiliza uma rede global de servidores distribuídos chamados de pontos de presença (PoPs), localizados em várias regiões geográficas. Quando um usuário solicita conteúdo, como uma página da web, imagem ou vídeo, o CloudFront roteia a solicitação para o ponto de presença mais próximo do usuário, em vez de enviar a solicitação diretamente ao servidor de origem onde o conteúdo está hospedado. Isso ajuda a reduzir a latência e o tempo de carregamento, proporcionando uma experiência de usuário mais rápida e eficiente.

Principais recursos e benefícios do Amazon CloudFront:

- **Distribuição global:** Com pontos de presença em todo o mundo, o CloudFront oferece acesso rápido e confiável ao conteúdo para usuários em qualquer região geográfica.
- **Redução de latência:** Ao distribuir conteúdo a partir de servidores próximos aos usuários, o CloudFront reduz a latência e melhora o tempo de resposta, proporcionando uma experiência de usuário mais rápida.
- **Segurança avançada:** O CloudFront oferece recursos de segurança avançados, incluindo criptografia de dados em trânsito, autenticação de usuário, proteção contra ataques DDoS e integração com outros serviços de segurança da AWS.
- **Integração com outros serviços da AWS:** O CloudFront integra-se perfeitamente com outros serviços da AWS, como o Amazon S3, Amazon EC2, AWS Lambda, AWS Shield e AWS WAF, permitindo uma integração fácil e flexível com a infraestrutura existente na AWS.
- **Escalabilidade sob demanda:** O CloudFront é altamente escalável e pode lidar com picos de tráfego sem a necessidade de provisionamento ou dimensionamento manual dos recursos.
- **Análise detalhada de tráfego:** O CloudFront fornece métricas detalhadas de desempenho e uso, permitindo que os usuários monitorem e otimizem a entrega de conteúdo de forma eficaz.

## Exercício Prático <a name="exercise"></a>

Fazer deploy de uma página estática com arquivos armazenados na S3 sendo servidos pelo Cloudfront.

## Links/Referências <a name="link"></a>

- [Amazon S3](https://aws.amazon.com/pt/s3/)
- [O que é o Amazon S3?](https://docs.aws.amazon.com/pt_br/AmazonS3/latest/userguide/Welcome.html)
- [O que é rede de distribuição de conteúdo (CDN)? | Como a CDN funciona?](https://www.cloudflare.com/pt-br/learning/cdn/what-is-a-cdn)
- [Amazon CloudFront](https://aws.amazon.com/pt/cloudfront)
- [O que é a Amazon CloudFront?](https://docs.aws.amazon.com/pt_br/AmazonCloudFront/latest/DeveloperGuide/Introduction.html)

