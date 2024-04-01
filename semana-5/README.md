# Route53 e ACM

## Roteiro

- [DNS](#dns)
  - [DNS Record Request Sequence](#dns-record-request-sequence)
  - [Registros de DNS](#registros-dns)
- [Route 53 (AWS)](#route-53)
- [Certificate Manager | ACM (AWS)](#certificate-manager)
- [Exercício Prático](#exercise)
- [Links/Referências](#links)

## DNS <a name="dns"></a>

DNS (Domain Name System) é um sistema utilizado para traduzir nomes de domínio, como "zrp.com.br", em endereços IP, que são números que identificam computadores e dispositivos na internet. Basicamente, ele funciona como um grande diretório que permite que os usuários acessem sites e serviços digitando nomes de domínio em vez de terem que memorizar uma série de números. O DNS é essencial para a navegação na internet, pois permite que os computadores se comuniquem entre si usando nomes de fácil memorização em vez de endereços numéricos complexos.

### DNS Record Request Sequence <a name="dns-record-request-sequence"></a>

![alt text](images/dns-record.png.png)

- **Recursive:** O recursivo de DNS é um servidor projetado para receber consultas de máquinas clientes por meio de aplicações como navegadores web. De modo geral, o recursivo é responsável por fazer solicitações adicionais para atender à consulta de DNS do cliente.
- **Raiz:** Primeira etapa da tradução (resolução) de host names legíveis por humanos em endereços IP
- **Nameserver TLD (Top Level Domain):** Esse nameserver é o próximo passo na busca de um endereço de IP específico e hospeda a última parte de um hostname (em example.com, o servidor de TLD é "com")
- **Autoritativo:** O nameserver autoritativo é a última parada na consulta de um servidor de DNS. Se tiver acesso ao registro solicitado, o nameserver autoritativo retornará o endereço IP do hostname solicitado de volta ao recursor de DNS (o bibliotecário) que fez a solicitação inicial.

### Registros de DNS <a name="registros-dns"></a>

Registros de DNS (também conhecidos como arquivos de zona) são instruções que residem em servidores de DNS autoritativos e fornecem informações sobre um domínio, incluindo quais endereços de IP estão associados a esse domínio e como lidar com as solicitações para esse domínio.

- **Registro A:** Trata-se do registro que contém o endereço IP de um domínio.
- **Registro AAAA:** Registro que contém o endereço IPv6 para um domínio (ao contrário dos registros A, que listam o endereço IPv4).
- **Registro CNAME:** Encaminha um domínio ou subdomínio para um outro domínio. NÃO fornece um endereço IP.
- **Registro MX:** Direciona o e-mail para um servidor de e-mails. Saiba mais sobre o registro MX.
- **Registro TXT:** Permite que um administrador armazene notas de texto no registro. Esses registros são frequentemente usados para segurança de e-mail.
- **Registro NS:** Armazena o nameserver de uma entrada de DNS. Saiba mais sobre o registro NS.
- **Registro SOA:** Armazena informações de administrador sobre um domínio.
- **Registro SRV:** Especifica uma porta para serviços específicos.

## Route 53 (AWS) <a name="route-53"></a>

Route 53 é o serviço de DNS (Domain Name System) gerenciado da Amazon Web Services (AWS). Ele fornece um sistema altamente disponível e escalável para rotear o tráfego da internet para os recursos da AWS, como instâncias EC2, balanceadores de carga ELB, buckets do Amazon S3 e outros serviços da AWS.

Além de ser um serviço de DNS, o Route 53 oferece várias funcionalidades adicionais, incluindo:

- **Registro de domínio:** Permite registrar novos domínios diretamente através do Route 53.
- **Resolução de DNS privado:** Permite que instâncias EC2 dentro de uma rede virtual da AWS se comuniquem usando nomes de domínio personalizados, sem expor esses nomes publicamente na internet.
- **Roteamento de tráfego:** Permite controlar como o tráfego é distribuído entre diferentes recursos da AWS com base em regras de roteamento, como roteamento ponderado, roteamento de latência, roteamento geográfico e roteamento de failover.
- **Monitoramento de saúde:** Fornece monitoramento contínuo da integridade dos recursos da AWS e permite configurar ações automatizadas, como failover para um recurso de backup, caso o principal se torne indisponível.

## AWS Certificate Manager (ACM) <a name="certificate-manager"></a>

O AWS Certificate Manager (ACM) é um serviço da Amazon Web Services (AWS) que facilita a implantação, gerenciamento e renovação de certificados SSL/TLS para uso com serviços da AWS e aplicativos hospedados em outras infraestruturas.

O ACM permite que você obtenha facilmente certificados SSL/TLS gratuitos e automatize o processo de implantação e renovação desses certificados em serviços da AWS, como Elastic Load Balancers (ELBs), Amazon CloudFront, API Gateway, Elastic Beanstalk e outros. Ele também oferece suporte para a importação de certificados SSL/TLS existentes para uso com serviços da AWS.

Principais recursos do AWS Certificate Manager:

- **Provisionamento simplificado:** O ACM facilita a obtenção de certificados SSL/TLS gratuitos para uso com serviços da AWS.
- **Gerenciamento centralizado:** Todos os certificados SSL/TLS provisionados através do ACM são armazenados e gerenciados centralmente em uma única interface de usuário na AWS Management Console.
- **Renovação automática:** O ACM automatiza o processo de renovação de certificados SSL/TLS, eliminando a necessidade de acompanhar manualmente as datas de expiração dos certificados.
- **Integração com serviços da AWS:** Os certificados SSL/TLS provisionados através do ACM podem ser facilmente associados e gerenciados em serviços da AWS, simplificando a configuração de segurança para aplicativos e recursos hospedados na AWS.

## Exercício Prático <a name="exercise"></a>

Criar e validar certificado no ACM que seja válido tanto para a raiz do subdomínio
quanto para subdomínios subsequentes.

## Links/Referências <a name="link"></a>

- [CloudFlare](https://www.cloudflare.com/pt-br/learning)
- [O que é o Amazon Route 53?](https://docs.aws.amazon.com/pt_br/Route53/latest/DeveloperGuide/Welcome.html)
- [What Is AWS Certificate Manager?](https://docs.aws.amazon.com/acm/latest/userguide/acm-overview.html)
