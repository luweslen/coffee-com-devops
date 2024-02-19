# Configurações de ambiente

## Roteiro

- [YAML](#yaml)
  - [Sintaxe](#sintaxe)
- [Terminal](#terminal)
  - [ZSH](#zsh)
    - [Oh My ZSH](#oh-my-zsh)
    - [Starship](#starship)
    - [Plugins](#plugins)
  - [tmux](#tmux)
  - [vim](#vim)
    - [NeoVim](#neovim)
    - [LunarVim](#lunarvim)
- [Ferramental](#ferramental)
- [Exercício prático](#exercise)
- [Links/Referências](#links)

## YAML <a name="yaml"></a>

YAML não é uma linguagem de marcação. Consiste em uma linguagem legível para humanos para serialização de dados e facilmente interpretável por máquinas. Encontra-se muito em uso para arquivos de configuração. 

> Esta para JSON como Python esta para JavaScript - @gabrielclimaco

### Sintaxe <a name="sintaxe"></a>

- **Indentação:** YAML usa a indentação para estruturar os dados hierarquicamente. Os espaços devem ser usados em vez de tabulações, e a quantidade de espaços deve ser consistente em todo o documento.
- **Chave e Valor:** Os dados em YAML são representados como pares de chave-valor. As chaves são seguidas por dois pontos `:` e os valores podem ser de diferentes tipos, como strings, números, listas, dicionários ou valores booleanos.
- **Strings:** As strings podem ser representadas sem aspas (para strings simples) ou com aspas simples `'` ou duplas `"` quando contêm espaços ou caracteres especiais.
- **Comentários:** Linhas começando com `#` são consideradas comentários e são ignoradas pelo interpretador YAML.
- **Listas:** As listas são representadas por elementos com marcadores de traço `-` seguidos por um espaço. Os elementos da lista podem ser de qualquer tipo de dados YAML.
- **Dicionários/Objetos:** Dicionários ou objetos são representados como pares de chave-valor aninhados, onde as chaves são seguidas por dois pontos `:` e os valores podem ser de qualquer tipo YAML.
- **Referências e Âncoras:** YAML permite referenciar um valor definido anteriormente usando `&` para criar uma âncora e `*` para referenciar essa âncora em outro lugar no documento.

Exemplos:
```yaml
chave: valor
aspas: 'simples'
ou: "duplas \n"
inteiro: 42
quebrado: 3.14
data: 1977-05-25
# comentario
lista:
  - item 1
  - item 2
lista_compacta: [1, 2]
dicionario:
  atributo1: valor
  atributo2: outro valor
lista_objeto:
  - atributo1: valor
    atributo: outro valor
booleanos: true # ou false
mastambem: yes # ou no
eainda: on # ou off
stringona: |
  linha 1
  linha 2
emumalinha: > # minha string
  minha
  string
arquivo1: meu valor
--- # começo de documento
arquivo2: outro valor
... # fim de documento
placeholder: {{ vai.substituir }}
ambiente: $MINHA_VARIAVEL

atributo: &att valor
referencia: *att
```

## Terminal <a name="terminal"></a>

### Shell - ZSH <a name="zsh"></a>

O ZSH é uma sigla para "Z Shell". É um shell de linha de comando para sistemas operacionais baseados em Unix, como Linux e macOS. O ZSH é uma evolução do shell padrão Unix (sh) com recursos adicionais e melhorias em comparação com shells mais antigos, como o Bash (Bourne Again SHell) e o KornShell (ksh).

Algumas características e vantagens do ZSH incluem:
- **Autocompletar avançado:** O ZSH tem um recurso de autocompletar robusto e altamente configurável, que pode sugerir opções com base nos comandos, arquivos e diretórios disponíveis.
- **Personalização:** O ZSH é altamente personalizável, permitindo que os usuários configurem e ajustem facilmente a aparência e o comportamento do shell usando arquivos de configuração, como o `.zshrc`.
- **Plugins e extensões:** Existem muitos plugins e extensões disponíveis para o ZSH que adicionam funcionalidades extras, como atalhos de teclado, temas de prompt e integração com outras ferramentas e frameworks.
- **Correção ortográfica:** O ZSH inclui uma função de correção ortográfica que pode sugerir correções para comandos mal digitados ou nomes de arquivos incorretos.

[Link](https://www.zsh.org)

#### Oh My ZSH <a name="oh-my-zsh"></a>

Oh My ZSH é um framework de código aberto para gerenciar a configuração do ZSH (Z Shell). Ele foi criado para simplificar a configuração e personalização do ZSH, fornecendo uma série de recursos, temas, plugins e ferramentas que facilitam o uso e aprimoram a experiência do usuário com o shell de linha de comando.

[Link](https://ohmyz.sh)

#### Starship <a name="starship"></a>
Starship é um prompt de linha de comando altamente personalizável e rápido, desenvolvido em Rust. Ele é projetado para trabalhar com uma variedade de shells de linha de comando, incluindo o Zsh.

[Link](https://starship.rs/)

#### Plugins <a name="plugins"></a>

Plugins do ZSH são extensões que adicionam funcionalidades extras ao shell ZSH. Essas extensões podem variar desde pequenas melhorias na interface do usuário até recursos avançados de automação e personalização. Os plugins podem ser desenvolvidos pela comunidade de usuários do ZSH ou por mantenedores de projetos específicos.

Os plugins do ZSH geralmente oferecem uma ampla gama de funcionalidades, incluindo:
- **Completions automáticos:** Adicionam completions automáticos para comandos, argumentos e opções comuns, facilitando a digitação e reduzindo erros de sintaxe.
- **Atalhos de teclado:** Introduzem atalhos de teclado personalizados para executar tarefas comuns de forma mais rápida e eficiente.
- **Melhorias na interface do usuário:** Adicionam recursos visuais e melhorias na formatação da saída do terminal, tornando-a mais legível e esteticamente agradável.
- **Integração com outras ferramentas:** Oferecem integração com outras ferramentas e utilitários do sistema, como Git, Docker, AWS, entre outros, para facilitar a interação com essas ferramentas diretamente do Zsh.
- **Automação de tarefas:** Fornecem scripts e utilitários para automatizar tarefas comuns de desenvolvimento, administração de sistemas e outras atividades.

Alguns plugins que são interessantes ter:
- [x] ansible
- [x] aws
- [x] bgnotify
  - Notifica o usuário quando um comando em segundo plano (background) é concluído
- [x] docker
- [x] docker-compose
- [x] fzf
  - Ferramenta de linha de comando para pesquisa interativa e filtragem de listas no terminal
- [x] git
- [x] terraform
- [x] thefuck
  - Ferramenta de linha de comando para corrigir comandos incorretos ou mal digitados no terminal.
- [x] tmux: extensão que facilita a interação com o tmux
- [x] ubuntu (ou distro/package manager correspondente)
- [x] wd
  - Ferramenta de linha de comando que permite aos usuários definir atalhos para diretórios frequentemente 
- [x] zsh-autosuggestions
  - Plugin que fornece sugestões de auto-completar baseadas no histórico de comandos do terminal
- [x] zsh-syntax-highlighting
  - Plugin que realça a sintaxe dos comandos digitados no terminal

### tmux <a name="tmux"></a>

O Tmux é um terminal multiplexer, o que significa que ele permite que você tenha várias sessões e janelas de terminal dentro de uma única sessão de terminal. Ele é uma ferramenta muito útil para usuários que precisam trabalhar em várias tarefas ou ambientes ao mesmo tempo no terminal. Com o Tmux, você pode dividir a tela do terminal em várias áreas, cada uma contendo uma sessão de terminal separada, permitindo assim que você trabalhe de forma mais eficiente e organizada. Além disso, o Tmux permite que você desconecte e reconecte facilmente sessões de terminal, o que é especialmente útil para usuários que precisam trabalhar em servidores remotos ou em tarefas que precisam ser executadas por longos períodos de tempo.

### vim <a name="vim"></a>

O Vim é um editor de texto altamente configurável, poderoso e amplamente utilizado, especialmente em ambientes Unix e Linux. Ele é um clone aprimorado do editor de texto Vi, que foi criado originalmente por Bill Joy em 1976. Vim, que significa "Vi IMproved" (Vi melhorado), mantém muitas das funcionalidades do Vi original, mas também adiciona várias melhorias e recursos adicionais.

Algumas das características distintivas do Vim incluem:

- **Modo de comando e modo de edição:** No Vim, você pode alternar entre o modo de comando e o modo de edição. No modo de comando, você pode navegar, excluir, copiar, colar, entre outras operações, enquanto no modo de edição, você pode inserir ou modificar o texto.
- **Extensibilidade e personalização:** O Vim permite que os usuários personalizem e estendam suas funcionalidades através de plugins, scripts e configurações específicas. Isso permite que os usuários adaptem o editor às suas necessidades específicas.
- **Interface de usuário eficiente:** O Vim é projetado para ser controlado principalmente através do teclado, o que pode proporcionar uma experiência de edição mais rápida e eficiente para usuários experientes.
- **Suporte a várias linguagens e formatos de arquivo:** O Vim possui destaque de sintaxe para uma ampla variedade de linguagens de programação e pode editar uma variedade de formatos de arquivo, tornando-o popular entre desenvolvedores de software, administradores de sistemas e outros profissionais de TI.

No geral, o Vim é apreciado por sua eficiência, flexibilidade e capacidade de lidar com uma variedade de tarefas de edição de texto, desde pequenas edições até desenvolvimento de software de grande escala. No entanto, sua curva de aprendizado pode ser íngreme para iniciantes devido à sua interface baseada em texto e ao paradigma de edição de comando.

#### NeoVim <a name="neovim"></a>

O NeoVim é um fork do editor de texto Vim, que foi lançado com o objetivo de modernizar e melhorar o Vim original. Ele mantém muitas das características do Vim, mas também introduz várias melhorias e novos recursos. Alguns dos principais pontos que diferenciam o NeoVim do Vim incluem:
- **Arquitetura modular:** O NeoVim é projetado com uma arquitetura mais modular e extensível do que o Vim. Isso torna mais fácil para os desenvolvedores adicionarem novos recursos e funcionalidades ao editor.
- **Suporte a multithreading:** Enquanto o Vim original é single-threaded, o NeoVim oferece suporte a multithreading. Isso pode melhorar o desempenho em sistemas modernos, especialmente em tarefas que envolvem operações intensivas de CPU.
- **Suporte a GUI aprimorado:** O NeoVim oferece um suporte melhorado para interfaces gráficas de usuário (GUI), tornando-o mais atraente para usuários que preferem uma experiência de edição mais visual.
- **Integração com ferramentas modernas:** O NeoVim tem como objetivo integrar-se melhor com ferramentas modernas de desenvolvimento, como IDEs e sistemas de controle de versão, facilitando a integração do editor em fluxos de trabalho de desenvolvimento mais complexos.
- **Comunidade ativa:** Embora o NeoVim tenha sido inicialmente desenvolvido como um fork do Vim, ele rapidamente desenvolveu sua própria comunidade de desenvolvedores e usuários, que continuam a contribuir para o seu desenvolvimento e aprimoramento.

No geral, o NeoVim visa fornecer uma experiência de edição de texto mais moderna, rápida e extensível do que o Vim original, mantendo ao mesmo tempo a compatibilidade com o vasto ecossistema de plugins e configurações existentes do Vim. Ele é uma escolha popular entre muitos desenvolvedores e usuários que desejam um editor de texto poderoso e altamente configurável.

(Link)[https://neovim.io/]

#### LunarVim <a name="lunarvim"></a>

LunarVim é uma distribuição pré-configurada e altamente personalizável do editor de texto NeoVim. Ele foi projetado para simplificar a configuração e o uso do NeoVim, fornecendo uma configuração inicial robusta e uma série de plugins úteis, temas e configurações pré-definidas para uma experiência de edição de texto aprimorada.

A ideia por trás do LunarVim é facilitar para os usuários começarem a usar o NeoVim de forma produtiva, fornecendo uma configuração inicial que inclui:
- **Plugins úteis:** LunarVim inclui uma seleção de plugins populares e úteis para adicionar funcionalidades extras ao NeoVim, como gerenciamento de arquivos, realce de sintaxe avançado, integração com sistemas de controle de versão (como Git), entre outros.
- **Configurações otimizadas:** Várias configurações e opções do NeoVim são ajustadas e otimizadas para proporcionar uma experiência de edição mais suave e eficiente.
- **Tema visual atraente:** LunarVim geralmente inclui um tema visual atraente para tornar a experiência de edição mais agradável e personalizada.
- **Instalação simplificada:** LunarVim geralmente inclui scripts de instalação automatizados para facilitar a configuração inicial do NeoVim com todas as suas personalizações.
- **Facilidade de atualização:** LunarVim é frequentemente atualizado pela comunidade para incorporar as últimas melhorias, correções de bugs e novos recursos do NeoVim e de seus plugins.

No geral, LunarVim é uma opção popular para usuários que desejam começar a usar o NeoVim sem ter que passar pelo processo de configurá-lo manualmente, permitindo-lhes mergulhar rapidamente na edição de texto e personalizar a configuração de acordo com suas preferências individuais.

[Link](https://www.lunarvim.org/)

## Ferramental <a name="ferramental"></a>

Aqui neste tópico, há algumas ferramentas essenciais para o dia a dia do DevOps. São elas:

- [x] Ansible
- [x] AWS CLI
- [x] Docker
- [x] Github CLI
- [x] kubectl
- [x] Serverless framework
- [x] Terraform / Open Tofu

## Exercício prático <a name="exercise"></a>

- Instalar e configurar as ferramentas descritas anteriormente. 
- Configurar terminal

## Links/Referências <a name="link"></a>

- [YAML ORG](https://yaml.org)
- [you need to learn tmux RIGHT NOW!](https://www.youtube.com/watch?v=nTqu6w2wc68)
- [OhMyZSH Plugins](https://github.com/ohmyzsh/ohmyzsh/wiki/Plugins)
- [Seu terminal pode ser muito, muito mais produtivo 💻](https://ivanaugustobd.medium.com/seu-terminal-pode-ser-muito-muito-mais-produtivo-3159c8ef77b2)
- [DESCOMPLICANDO O YAML - APRENDA YAML DE UMA VEZ POR TODAS!](https://youtu.be/JOtIVGy1SgE?si=R1LU6BO8tluVORKn)
- [Kubernetes YAML File Explained](https://www.youtube.com/watch?si=b6yfALpnnlHPaPE_&v=qmDzcu5uY1I&feature=youtu.be)
- [LunarVim para iniciantes](https://dev.to/feministech/lunarvim-para-iniciantes-5829)
- [nvchad](https://nvchad.com)
- [astronvim](https://astronvim.com)
- [nyoom.nvim](https://github.com/nyoom-engineering/nyoom.nvim)
