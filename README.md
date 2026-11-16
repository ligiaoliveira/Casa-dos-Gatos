# 🐱 Casa dos Gatos - Projeto Web

## 📌 Sobre o Projeto

Este projeto foi desenvolvido por um grupo de 5 estudantes do curso de Análise e Desenvolvimento de Sistemas da FATEC Araraquara, com o objetivo de criar um site para a ONG **Casa dos Gatos**.

A ideia principal é ajudar a ONG a ter mais visibilidade, mostrando o trabalho que eles fazem no resgate, cuidado e adoção de gatos, além de facilitar a comunicação com voluntários e apoiadores.

---

## 🎯 Objetivo

Criar uma plataforma simples, organizada e acessível para:

* Divulgar o trabalho da ONG
* Aumentar o número de adoções
* Atrair voluntários
* Facilitar doações e apoio financeiro

---

## 🧩 Funcionalidades do Site

O site contará com as seguintes páginas:

* **Sobre Nós**
  Informações sobre a ONG, sua história e missão.

* **Voluntários**
  Apresentação das pessoas que já ajudam o projeto.

* **Voluntarie-se**
  Formulário para novos interessados participarem como voluntários.

* **Como Ajudar**
  Explicação de formas de contribuição (doações, serviços, etc).

* **Portal da Transparência**
  Informações financeiras e prestação de contas da ONG.

* **Gatos para Adoção** 🐾
  Lista de gatos disponíveis, com fotos e informações.

* **Brechó Online** 🛍️
  Venda de produtos para arrecadar fundos para a ONG.

  ---

## 🛠️ Tecnologias Utilizadas

![HTML5](https://img.shields.io/badge/html5-%23E34F26.svg?style=for-the-badge&logo=html5&logoColor=white)
![CSS3](https://img.shields.io/badge/css3-%231572B6.svg?style=for-the-badge&logo=css3&logoColor=white)
![JavaScript](https://img.shields.io/badge/javascript-%23323330.svg?style=for-the-badge&logo=javascript&logoColor=%23F7DF1E)
![React](https://img.shields.io/badge/react-%2320232a.svg?style=for-the-badge&logo=react&logoColor=%2361DAFB)
![NodeJS](https://img.shields.io/badge/node.js-6DA55F?style=for-the-badge&logo=node.js&logoColor=white)
![TypeScript](https://img.shields.io/badge/typescript-%23007ACC.svg?style=for-the-badge&logo=typescript&logoColor=white)
![Postgres](https://img.shields.io/badge/postgres-%23316192.svg?style=for-the-badge&logo=postgresql&logoColor=white)
![Git](https://img.shields.io/badge/git-%23F05033.svg?style=for-the-badge&logo=git&logoColor=white)
![GitHub](https://img.shields.io/badge/github-%23121011.svg?style=for-the-badge&logo=github&logoColor=white)
![Figma](https://img.shields.io/badge/figma-%23F24E1E.svg?style=for-the-badge&logo=figma&logoColor=white)
![VS Code](https://img.shields.io/badge/VS%20Code-0078d7.svg?style=for-the-badge&logo=visual-studio-code&logoColor=white)

---

## 👨‍💻 Equipe

Projeto desenvolvido por estudantes da FATEC Araraquara:

* Carlos Eduardo Fagian Filho
* João Pedro de Oliveira
* Ligia Cristina de Oliveira
* Manoela Zanin Parcesepe Zanardi
* Pedro Cecilio Cano

---

## 🚀 Status do Projeto

🟡 Em desenvolvimento

---

## 📆 Cronograma de Entrega

Conograma de Springs

<img width="986" height="144" alt="Captura de tela 2026-06-12 212954" src="https://github.com/user-attachments/assets/3064b4e2-304e-40bd-a632-08253254d4d4" />

Conograma de Milestones

<img width="1047" height="146" alt="Captura de tela 2026-06-12 211848" src="https://github.com/user-attachments/assets/9235a4de-f5b1-44d7-ac7d-915025527bfe" />

---

## 💡 Considerações Finais

Esse projeto foi pensado não só como atividade acadêmica, mas também como uma forma de contribuir com uma causa importante. Esperamos que o sistema ajude a ONG a alcançar mais pessoas e, principalmente, encontrar lares para muitos gatinhos ❤️🐱

---

## Diagramas de Caso de Uso

### 👤 Visitante [(LinkRaw)](https://raw.githubusercontent.com/ligiaoliveira/Casa-dos-Gatos/refs/heads/main/docs/diagramas/casos_visitante.md)
```mermaid
flowchart TD
    %% Estilo para melhorar nitidez e visual UML
    classDef ator fill:#e0e7ff,stroke:#4f46e5,stroke-width:2px,color:#1e1b4b,font-weight:bold;
    classDef caso fill:#f3f4f6,stroke:#6366f1,stroke-width:1.5px,color:#111827;
    classDef subcaso fill:#ffffff,stroke:#9ca3af,stroke-width:1px,color:#374151;

    Visitante([👤 Visitante]):::ator

    subgraph AreaPublica ["Área Pública"]
        direction TB

        %% Coluna 1: Adoção
        UC1([Ver gatos para adoção]):::caso
        UC1_1([Filtrar gatos]):::subcaso
        UC1_2([Ver detalhes do gato]):::subcaso
        UC1 --> UC1_1
        UC1 --> UC1_2

        %% Coluna 2: Brechó
        UC2([Ver mostruário do brechó]):::caso
        UC2_1([Ver detalhes do produto]):::subcaso
        UC2_2([Contato via WhatsApp]):::subcaso
        UC2 --> UC2_1
        UC2 --> UC2_2

        %% Coluna 3: Doação
        UC3([Fazer doação]):::caso
        UC3_1([Doação financeira]):::subcaso
        UC3_1_1([Dados bancários para doar]):::subcaso
        UC3_2([Doação de item]):::subcaso
        UC3_2_1([Lista de itens aceitos]):::subcaso
        UC3 --> UC3_1 --> UC3_1_1
        UC3 --> UC3_2 --> UC3_2_1

        %% Coluna 4: Voluntariado
        UC4([Se voluntariar]):::caso
        UC4_1([Formulário voluntário]):::subcaso
        UC4 --> UC4_1

        %% Coluna 5: Contato
        UC5([Entrar em contato]):::caso
        UC5_1([Enviar mensagem]):::subcaso
        UC5 --> UC5_1

        %% Coluna 6: Empresa Parceira
        UC6([Se tornar empresa parceira]):::caso
        UC6_1([Inserir informações]):::subcaso
        UC6_2([Enviar contato]):::subcaso
        UC6 --> UC6_1 --> UC6_2

        %% Coluna 7: Consultas Simples
        UC7([Ver voluntários]):::caso
        UC8([Ver transparência]):::caso
    end

    %% Conexões do Visitante espalhadas horizontalmente
    Visitante --> UC1
    Visitante --> UC2
    Visitante --> UC3
    Visitante --> UC4
    Visitante --> UC5
    Visitante --> UC6
    Visitante --> UC7
    Visitante --> UC8

    %% Estilo da caixa Área Pública
    style AreaPublica fill:#fefce8,stroke:#eab308,stroke-width:1.5px,color:#713f12
```

---

### 🙋 Voluntário [(LinkRaw)](https://raw.githubusercontent.com/ligiaoliveira/Casa-dos-Gatos/refs/heads/main/docs/diagramas/casos_voluntario.md)

```mermaid
flowchart TD
    %% Estilo para melhorar nitidez e visual UML
    classDef ator fill:#e0e7ff,stroke:#4f46e5,stroke-width:2px,color:#1e1b4b,font-weight:bold;
    classDef caso fill:#f3f4f6,stroke:#6366f1,stroke-width:1.5px,color:#111827;
    classDef subcaso fill:#ffffff,stroke:#9ca3af,stroke-width:1px,color:#374151;

    Voluntario([🙋 Voluntário]):::ator

    subgraph AreaVoluntario ["Área do Voluntário"]
        direction TB

        %% Coluna 1: Consulta Simples
        UC1([Ver voluntários]):::caso

        %% Coluna 2: Contato
        UC2([Mídias sociais e contato]):::caso
        UC2_1([Enviar mensagem]):::subcaso
        UC2 --> UC2_1

        %% Coluna 3: Doação
        UC3([Fazer doação]):::caso
        UC3_1([Doação financeira]):::subcaso
        UC3_1_1([Dados bancários para doar]):::subcaso
        UC3_2([Doação de itens]):::subcaso
        UC3_2_1([Lista de itens aceitos]):::subcaso
        UC3 --> UC3_1 --> UC3_1_1
        UC3 --> UC3_2 --> UC3_2_1

        %% Coluna 4: Consulta Simples
        UC4([Ver empresas parceiras]):::caso
    end

    %% Conexões do Voluntário espalhadas horizontalmente
    Voluntario --> UC1
    Voluntario --> UC2
    Voluntario --> UC3
    Voluntario --> UC4

    %% Estilo da caixa Área do Voluntário
    style AreaVoluntario fill:#fefce8,stroke:#eab308,stroke-width:1.5px,color:#713f12
```

---

### 🔐 Administrador [(LinkRaw)](https://github.com/ligiaoliveira/Casa-dos-Gatos/raw/refs/heads/main/docs/diagramas/casos_admin.md)

```mermaid
flowchart TD
    %% Estilo para melhorar nitidez e visual UML
    classDef ator fill:#e0e7ff,stroke:#4f46e5,stroke-width:2px,color:#1e1b4b,font-weight:bold;
    classDef caso fill:#f3f4f6,stroke:#6366f1,stroke-width:1.5px,color:#111827;

    Administrador([🔐 Administrador]):::ator

    subgraph AreaAdministrador ["Área do Administrador"]
        direction TB

        UC1([Gerenciar gatos]):::caso
        UC2([Gerenciar produtos do brechó]):::caso
        UC3([Gerenciar voluntários]):::caso
        UC4([Gerenciar doações]):::caso
        UC5([Publicar transparência]):::caso
        UC6([Responder mensagens]):::caso
        UC7([Gerenciar empresas parceiras]):::caso
    end

    %% Conexões do Administrador espalhadas horizontalmente
    Administrador --> UC1
    Administrador --> UC2
    Administrador --> UC3
    Administrador --> UC4
    Administrador --> UC5
    Administrador --> UC6
    Administrador --> UC7

    %% Estilo da caixa Área do Administrador
    style AreaAdministrador fill:#fefce8,stroke:#eab308,stroke-width:1.5px,color:#713f12
```

---

## Diagrama de Estados

### 👤 Visitante [(LinkRaw)](https://github.com/ligiaoliveira/Casa-dos-Gatos/raw/refs/heads/main/docs/diagramas/estados_visitante.md)
```mermaid
%%{init: {'theme': 'base', 'themeVariables': {'fontSize': '14px', 'primaryColor': '#eef2ff', 'primaryBorderColor': '#4f46e5', 'primaryTextColor': '#1e1b4b', 'lineColor': '#475569'}, 'flowchart': {'nodeSpacing': 50, 'rankSpacing': 65}}}%%
stateDiagram-v2
    direction TB

    %% Estados Principais
    state "Visitando Site" as VisitandoSite
    state "Visualizando Transparência" as VisualizandoTransparencia
    state "Visualizando Voluntários" as VisualizandoVoluntarios

    %% 1. Estados de Adoção
    state "Visualizando Gatos" as VisualizandoGatos
    state "Filtrando Gatos" as FiltrandoGatos
    state "Detalhes do Gato" as DetalhesGato
    state "Escolhendo Horário de Atendimento" as EscolhendoHorario
    state "Visita Agendada" as VisitaAgendada

    %% 2. Estados de Brechó
    state "Visualizando Brechó" as VisualizandoBrecho
    state "Detalhes do Produto" as DetalhesProduto
    state "Carrinho de Compras" as CarrinhoCompras
    state "Selecionando Pagamento (PIX, Boleto, Cartão)" as SelecionandoPagamentoBrecho
    state "Processando / Aguardando Pagamento" as AguardandoPagamentoBrecho
    state "Pagamento Confirmado" as PagamentoConfirmado
    state "Pagamento Recusado / Expirado" as PagamentoFalhouBrecho
    state "Contato via WhatsApp" as WhatsApp

    %% 3. Estados de Doação
    state "Visualizando Doação" as VisualizandoDoacao
    state "Inserindo Valor e Método (PIX, Boleto, Cartão)" as MetodoDoacao
    state "Processando / Aguardando Doação" as AguardandoDoacao
    state "Doação Realizada" as DoacaoRealizada
    state "Visualizando Lista de Itens Aceitos" as ListaItens

    %% 4. Estados de Voluntariado
    state "Visualizando Voluntariado" as Voluntariado
    state "Preenchendo Formulário Voluntário" as FormVoluntario
    state "Candidatura Enviada" as CandidaturaVolEnviada
    state "Aguardando Aprovação (Voluntário)" as AguardandoVol
    state "Voluntário Aprovado" as VolAprovado
    state "Voluntário Rejeitado" as VolRejeitado

    %% 5. Estados de Empresa Parceira
    state "Visualizando Empresas Parceiras" as VisualizandoEmpresas
    state "Preenchendo Formulário Parceiro" as FormEmpresa
    state "Validando Dados da Empresa" as ValidandoEmpresa
    state "Solicitação Enviada" as SolicitacaoEmpresaEnviada
    state "Erro de Validação" as ErroEmpresa

    %% 6. Estados de Contato
    state "Contato" as Contato
    state "Enviando Mensagem" as EnviandoMensagem
    state "Mensagem Enviada" as MensagemEnviada

    %% Início
    [*] --> VisitandoSite

    %% Navegação a partir da Página Inicial
    VisitandoSite --> VisualizandoGatos : Acessar adoção
    VisitandoSite --> VisualizandoBrecho : Acessar brechó
    VisitandoSite --> VisualizandoDoacao : Acessar doações
    VisitandoSite --> Voluntariado : Acessar voluntariado
    VisitandoSite --> VisualizandoEmpresas : Acessar empresas parceiras
    VisitandoSite --> Contato : Acessar contato
    VisitandoSite --> VisualizandoTransparencia : Acessar transparência
    VisitandoSite --> VisualizandoVoluntarios : Ver voluntários

    %% Fluxo 1: Adoção
    VisualizandoGatos --> FiltrandoGatos : Aplicar filtro
    FiltrandoGatos --> VisualizandoGatos
    VisualizandoGatos --> DetalhesGato : Ver detalhes
    DetalhesGato --> EscolhendoHorario : Escolher gato para adotar
    EscolhendoHorario --> VisitaAgendada : Confirmar horário ("Data Marcada!")
    DetalhesGato --> Contato : Tirar dúvidas sobre o gato
    VisitaAgendada --> [*]

    %% Fluxo 2: Brechó (PIX, Boleto ou Cartão de Débito/Crédito)
    VisualizandoBrecho --> DetalhesProduto : Ver produto
    DetalhesProduto --> CarrinhoCompras : Adicionar ao carrinho
    DetalhesProduto --> WhatsApp : Tirar dúvida via WhatsApp
    CarrinhoCompras --> VisualizandoBrecho : Continuar comprando
    CarrinhoCompras --> SelecionandoPagamentoBrecho : Finalizar compra
    SelecionandoPagamentoBrecho --> CarrinhoCompras : Voltar ao carrinho
    SelecionandoPagamentoBrecho --> AguardandoPagamentoBrecho : Gerar PIX/Boleto ou inserir Cartão
    AguardandoPagamentoBrecho --> PagamentoConfirmado : Pagamento aprovado / compensado
    AguardandoPagamentoBrecho --> PagamentoFalhouBrecho : Cartão recusado ou Boleto/PIX expirado
    PagamentoFalhouBrecho --> SelecionandoPagamentoBrecho : Tentar outro método
    PagamentoConfirmado --> [*]
    WhatsApp --> [*]

    %% Fluxo 3: Doações (PIX, Boleto, Cartão ou Itens)
    VisualizandoDoacao --> MetodoDoacao : Doação financeira
    MetodoDoacao --> AguardandoDoacao : Informar valor e escolher PIX, Boleto ou Cartão
    AguardandoDoacao --> DoacaoRealizada : Transação confirmada
    AguardandoDoacao --> MetodoDoacao : Falha / tentar novamente
    VisualizandoDoacao --> ListaItens : Doação de itens
    DoacaoRealizada --> [*]
    ListaItens --> [*]

    %% Fluxo 4: Voluntariado
    Voluntariado --> FormVoluntario : Se voluntariar
    FormVoluntario --> CandidaturaVolEnviada : Enviar formulário
    CandidaturaVolEnviada --> AguardandoVol
    AguardandoVol --> VolAprovado
    AguardandoVol --> VolRejeitado
    VolAprovado --> [*]
    VolRejeitado --> [*]

    %% Fluxo 5: Empresa Parceira
    VisualizandoEmpresas --> FormEmpresa : Se tornar empresa parceira
    FormEmpresa --> ValidandoEmpresa : Clicar em "Enviar contato"
    ValidandoEmpresa --> SolicitacaoEmpresaEnviada : Dados válidos
    ValidandoEmpresa --> ErroEmpresa : Dados inválidos
    ErroEmpresa --> FormEmpresa : Corrigir dados
    SolicitacaoEmpresaEnviada --> [*]
    VisualizandoEmpresas --> [*]

    %% Fluxo 6: Contato e Consultas Públicas
    Contato --> EnviandoMensagem
    EnviandoMensagem --> MensagemEnviada
    MensagemEnviada --> [*]
    VisualizandoTransparencia --> [*]
    VisualizandoVoluntarios --> [*]
```

---

### 🙋 Voluntário [(LinkRaw)](https://www.google.com/search?q=https://raw.githubusercontent.com/ligiaoliveira/Casa-dos-Gatos/main/docs/diagramas/estados_voluntario.md)

```mermaid
stateDiagram-v2

  [*] --> AcessandoSite

  AcessandoSite --> VisualizandoInformações
  VisualizandoInformações --> VisualizandoVoluntários
  VisualizandoInformações --> EntrandoEmContato
  VisualizandoInformações --> VisualizandoEmpresasPaceiras

  %% Contato
  EntrandoEmContato --> EnviandoMensagem
  EnviandoMensagem --> MensagemEnviada
  MensagemEnviada --> [*]

  %% Visualização
  VisualizandoVoluntários --> [*]
  VisualizandoEmpresasPaceiras --> [*]
```
  
---

### 🔐 Administrador [(LinkRaw)](https://github.com/ligiaoliveira/Casa-dos-Gatos/raw/refs/heads/main/docs/diagramas/estados_admin.md)

```mermaid
stateDiagram-v2

  [*] --> Login
  Login --> PainelAdmin : Login válido
  Login --> [*] : login inválido

  %% HUB CENTRAL
  state PainelAdmin
  
  %% Distribuição equilibrada
  PainelAdmin --> GerenciandoGatos
  PainelAdmin --> GerenciandoProdutos
  PainelAdmin --> GerenciandoVoluntários
  PainelAdmin --> GerenciandoEmpresasParceiras
  PainelAdmin --> GerenciandoDoações
  PainelAdmin --> PublicandoTransparência
  PainelAdmin --> RespondendoMensagens

  %% Retornos
  GerenciandoGatos --> PainelAdmin
  GerenciandoProdutos --> PainelAdmin
  GerenciandoVoluntários --> PainelAdmin
  GerenciandoEmpresasParceiras --> PainelAdmin
  GerenciandoDoações --> PainelAdmin
  PublicandoTransparência --> PainelAdmin
  RespondendoMensagens --> PainelAdmin

  %% Gatos
  GerenciandoGatos --> CadastrandoGato
  GerenciandoGatos --> EditandoGato
  GerenciandoGatos --> RemovendoGato
  CadastrandoGato --> GerenciandoGatos
  EditandoGato --> GerenciandoGatos
  RemovendoGato --> GerenciandoGatos

  %% Produtos
  GerenciandoProdutos --> CadastrandoProduto
  GerenciandoProdutos --> EditandoProduto
  GerenciandoProdutos --> RemovendoProduto
  CadastrandoProduto --> GerenciandoProdutos
  EditandoProduto --> GerenciandoProdutos
  RemovendoProduto --> GerenciandoProdutos

  %% Voluntários
  GerenciandoVoluntários --> AnalisandoCadastro
  AnalisandoCadastro --> Aprovado
  AnalisandoCadastro --> Rejeitado
  Aprovado --> GerenciandoVoluntários
  Rejeitado --> GerenciandoVoluntários

  %% Empresas Parceiras
  GerenciandoEmpresasParceiras --> AnalisandoCadastro
  AnalisandoCadastro --> Aprovado
  AnalisandoCadastro --> Rejeitado
  Aprovado --> GerenciandoEmpresasParceiras
  Rejeitado --> GerenciandoEmpresasParceiras

  %% Doações
  GerenciandoDoações --> VisualizandoDoações
  VisualizandoDoações --> GerenciandoDoações

  %% Transparência
  PublicandoTransparência --> PublicaçãoRealizada
  PublicaçãoRealizada --> PainelAdmin

  %% Mensagens
  RespondendoMensagens --> MensagemRespondida
  MensagemRespondida --> PainelAdmin

  PainelAdmin --> [*] : logout
```

---

## Diagramas de Sequência [(LinkRaw)](https://raw.githubusercontent.com/ligiaoliveira/Casa-dos-Gatos/refs/heads/main/docs/diagramas/sequencia_adocao.md)

### 🐈 Adotar [(LinkRaw)](https://raw.githubusercontent.com/ligiaoliveira/Casa-dos-Gatos/refs/heads/main/docs/diagramas/sequencia_adocao.md)
```mermaid
sequenceDiagram
participant U as Usuario
participant S as Site
participant B as BancoDeDados
U->>S:Escolhe o Menu "Adoção"
S->>B:Procura Gatos Disponiveis
B-->>S:Envia ID Dos Gatos(Idade, Cor, Raça, Foto)
S-->>U:Repassa ID Para a Pagina Do Usuario
U->>S:Escolhe o Gato
S->>B:Procura Horario de Atendimento Disponivel
B-->>S: Envia Horarios De Atendimento
S-->>U: Mostra Horarios Disponiveis Para Atendimento
U->>S: Escolhe Horario
S-->>U: Envia Mensagem "Data Marcada! Até Logo"
```
---

### 💸 Doar [(LinkRaw)](https://raw.githubusercontent.com/ligiaoliveira/Casa-dos-Gatos/refs/heads/main/docs/diagramas/sequencia_doacao.md)
```mermaid
sequenceDiagram
participant U as Usuario
participant S as Site
participant B as BancoDeDados
U->>S:Escolhe Menu "Doação"
S-->>U:Exibe Aba "Faça uma Doação"
S->>B:Pede ID da Conta Bancaria Da ONG
B-->>S: Envia ID Em Forma De QRcode Para Envio Do Valor que Desejar
S-->>U:Exibe QRcode Na Tela Com Mensagem "Escaneie o QRcode Para Enviar a Doação"
U->>S:Escaneia QRcode
U->>S:Insere o Valor Desejado
S->>B: Envia a Transação
B-->>B:Guarda o Valor No Banco
S-->>U: Envia Mensagem "Doação Realizada Com Sucesso!"
```
---

### 🛍 Brécho [(LinkRaw)](https://raw.githubusercontent.com/ligiaoliveira/Casa-dos-Gatos/refs/heads/main/docs/diagramas/sequencia_brecho.md)
```mermaid
sequenceDiagram
    participant U as Usuário 
    participant S as Site
    participant B as Banco de Dados
    participant P as PIX

U->>S: Seleciona Menu "Brechó"
S-->>U: Exibe Produtos
U->>S: Adiciona Produto ao Carrinho
S->>B: Atualiza Carrinho
B-->>S: Carrinho Atualizado

alt Usuário continua comprando
U->>S: Fecha Sacola e Continua Comprando
S-->>U: Exibe Catálogo Novamente

else Usuário finaliza compra
U->>S: Finaliza Compra
S->>B: Solicita Resumo do Pedido
B-->>S: Retorna Resumo do Pedido e Valor Total
U->>S:Escolhe Método de Pagamento
B->>P: Gera Pagamento de Acordo com o Método Escolhido
P-->>B: Retorna Forma de Pagamento
B-->>S: Envia Forma de Pagamento
S-->>U: Mostra Forma de Pagamento e Valor
U->>P: Realiza Pagamento
U->>S: Clica em "Já paguei"
S->>B: Verifica Pagamento
B->>P: Consulta Status do Pagamento
P-->>B: Pagamento Confirmado
B-->>S: Libera Confirmação
S-->>U: Exibe página de Pagamento Confirmado

else Usuário volta ao carrinho
U->>S: Clica em "Voltar ao carrinho"
S-->>U: Exibe Carrinho Novamente
end
```
---
### Empresa Parceira 🏢
```mermaid
sequenceDiagram
    participant E as Empresa
    participant F as Formulário
    participant S as Sistema
    participant B as Banco de Dados

    E->>F: Preenche Dados da Empresa
    E->>F: Informa Contato e Mensagem
    E->>F: Clica em "Enviar contato"
    F->>S: Envia informações
    S->>S: Validar dados

    alt Dados válidos
        S->>B: Salvar Solicitação
        B->>S: Confirma Salvamento
        S->>E: Contato Enviado com Sucesso
        
    else Dados inválidos
        S ->> E: Exibir Mensagem de Erro
    end
```
---

## 📁Diagrama de Entidade/Relacionamento [(LinkRaw)](https://github.com/ligiaoliveira/Casa-dos-Gatos/raw/refs/heads/main/docs/diagramas/diagrama_er.md)
```mermaid
erDiagram
    USUARIO ||--o{ VOLUNTARIO : "se cadastra"
    USUARIO ||--o{ ADOCAO_INTERESSE : "tem interesse"
    USUARIO ||--o{ PEDIDO_BRECHO : "tem interesse"
    USUARIO ||--o{ FINANCEIRO : "acessa informações"
    USUARIO ||--o{ CONTEUDO_ONG : "acessa informações"
    USUARIO ||--o{ EMPRESA_PARCEIRA : "se cadastra"
    
    CATALOGO_GATOS ||--o{ ADOCAO_INTERESSE : "recebe"
    PRODUTO_BRECHO ||--o{ PEDIDO_BRECHO : "recebe"

    USUARIO {
        info Nome
        info CPF
        info Email
        info Telefone
        info Endereco
        info Nascimento
    }

    VOLUNTARIO {
        info Contato_Emergencia
        info Dias_Disponiveis
        info Habilidades
        info Experiencia
        info Disposto_a_Aprender
    }

    CATALOGO_GATOS {
        info Nome_Gato
        info Idade
        info Descricao
        info Foto
        info Status
    }

    PRODUTO_BRECHO {
        info Nome_Item
        info Preco
        info Descricao
        info Imagem
    }

    FINANCEIRO {
        info Tipo_Movimentacao
        info Valor
        info Data
    }

    CONTEUDO_ONG {
        info Historia
        info Objetivos
    }
    
    EMPRESA_PARCEIRA {
        info Nome_da_Empresa
        info Pessoa_de_Contato
        info E-mail
        info Telefone
        info Como_Gostaria_de_Ajudar
    }
```
---

## 📁Diagrama De Classe [(LinkRaw)](https://github.com/ligiaoliveira/Casa-dos-Gatos/raw/refs/heads/main/docs/diagramas/diagrama_classe.md)
```mermaid 
classDiagram
    direction LR

    class Financeiro {
        TipoMovimentacao
        Valor
        Data
        gerarRelatorio()
    }

    class Usuario {
        Nome
        CPF
        Email
        Telefone
        Endereco
        DataNascimento
        cadastrar()
        fazerLogin()
    }

    class Voluntario {
        ContatoEmergencia
        DiasDisponiveis
        Habilidades
        ExperienciaPrevia
        enviarFormulario()
    }

    class EmpresaParceira {
        NomeDaEmpresa
        PessoaDeContato
        E-mail
        Telefone
        ComoGostariaDeAjudar
        enviarFormulario()
    }

    class Gato {
        Nome
        Idade
        Descricao
        Foto
        Status
        exibirCard()
    }

    class Brecho {
        NomeItem
        Preco
        Descricao
        Imagem
        listarProdutos()
        comprar()
    }

    Financeiro "1" -- "*" Usuario : presta contas
    Usuario "1" -- "0..1" Voluntario : se candidata
    Usuario "1" -- "0..1" EmpresaParceira : se candidata
    Usuario "1" -- "0..*" Gato : consulta/adota
    Usuario "1" -- "0..*" Brecho : compra em
```

---

## 📝 Projeto Interface

<img width="670" height="787" alt="Screenshot_1" src="https://github.com/user-attachments/assets/8129ff9b-3ff7-4044-a2a5-c7e597696cb0" />

<img width="673" height="505" alt="Screenshot_2" src="https://github.com/user-attachments/assets/363229e5-3a2e-4359-9975-744a5b2ef40f" />

<img width="671" height="542" alt="Screenshot_3" src="https://github.com/user-attachments/assets/52224ef6-01d1-4ffa-b3c6-92ba851b5cc2" />

<img width="345" height="529" alt="Screenshot_6" src="https://github.com/user-attachments/assets/4a112c96-11cd-41ae-874c-e2122f7b92ff" />

<img width="754" height="756" alt="Screenshot_13" src="https://github.com/user-attachments/assets/fd18554b-95da-4c7a-9902-e98d94680b11" />

<img width="752" height="361" alt="Screenshot_14" src="https://github.com/user-attachments/assets/cf33b6d0-cc7d-4e52-abc2-2089b948732b" />

<img width="694" height="618" alt="Screenshot_10" src="https://github.com/user-attachments/assets/89198d73-f685-4e8a-b34c-d4180ad2d97b" />

<img width="701" height="562" alt="Screenshot_11" src="https://github.com/user-attachments/assets/1911021f-7582-4a07-b73a-977913d73589" />

<img width="697" height="414" alt="Screenshot_12" src="https://github.com/user-attachments/assets/853066ea-4729-49c4-aa63-2e38ddc405ee" />

<img width="516" height="443" alt="Screenshot_7" src="https://github.com/user-attachments/assets/85f6a07e-6c10-40da-ac66-83a8a268ef38" />

<img width="395" height="420" alt="Screenshot_8" src="https://github.com/user-attachments/assets/c0847a6c-89f8-45dc-991d-5a37b786747c" />

<img width="516" height="443" alt="Screenshot_9" src="https://github.com/user-attachments/assets/9c3b1a28-397d-4b5e-bc3e-cf8e9f0827be" />

<img width="670" height="453" alt="Screenshot_4" src="https://github.com/user-attachments/assets/093a5df6-ec29-420f-8c1c-395b73618a35" />

<img width="672" height="830" alt="Screenshot_5" src="https://github.com/user-attachments/assets/40b52a46-d9cd-45a9-9537-5a33dd33f54e" />

---

## 📈 Modelos do Banco de Dados
### Conceitual
<img width="1388" height="805" alt="Modelo-Conceitual" src="https://github.com/user-attachments/assets/7581c985-6dc6-4785-ae49-82701d770940" />

### Lógico
<img width="1499" height="858" alt="Modelo-Lógico" src="https://github.com/user-attachments/assets/a7923e12-d133-4735-92b0-4663ee1595ef" />

---

## 📊 Tabela de Dados
### Usuários (Administradores, Voluntários e Comuns)
<img width="1732" height="221" alt="Screenshot_2-1" src="https://github.com/user-attachments/assets/9123db50-8786-4018-8346-56f14829dc02" />

### Catálogo de Gatos
<img width="1252" height="184" alt="Screenshot_1" src="https://github.com/user-attachments/assets/cc161eed-9762-4658-902b-7bb7fe6dc050" />

### Produtos do Brechó
<img width="1117" height="166" alt="Screenshot_2" src="https://github.com/user-attachments/assets/40eaeb32-42c3-4076-90b1-02d453e86216" />

### Voluntários
<img width="1367" height="94" alt="Screenshot_3" src="https://github.com/user-attachments/assets/ba7af8a2-d07b-472a-bf3a-36c29eedab15" />

### Empresas Parceiras
<img width="1358" height="112" alt="Screenshot_4" src="https://github.com/user-attachments/assets/20b56878-9068-4d2d-b674-c8f40e3e5dfc" />

### Solicitações de Adoção e Visitas
<img width="1243" height="130" alt="Screenshot_5" src="https://github.com/user-attachments/assets/eee4f1b0-28a2-4af0-abd1-4c15dced48cf" />

### Pedidos do Brechó
<img width="1448" height="149" alt="Screenshot_6" src="https://github.com/user-attachments/assets/7676b5bf-9c9d-4346-8463-8f13e393a50c" />

### Transparência Financeira
<img width="921" height="238" alt="Screenshot_7" src="https://github.com/user-attachments/assets/1d0dfabc-7782-4f4a-a14d-104e31947f40" />

---

> Projeto acadêmico desenvolvido na FATEC Araraquara.
> 
