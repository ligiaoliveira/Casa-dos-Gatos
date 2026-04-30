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

*(Essa parte pode ser ajustada conforme o projeto evoluir)*

* HTML
* CSS
* JavaScript
* BootStrap
* MySql


---


## 👨‍💻 Equipe

Projeto desenvolvido por estudantes da FATEC Araraquara:

* Carlos Eduardo Fagian Filho
* João Pedro de Oliveira
* Ligia Cristina de Oliveira
* Manoela Zanin Zanardi
* Walisson Rodrigues Dos Santos

---

## 🚀 Status do Projeto

🟡 Em desenvolvimento

---

## 💡 Considerações Finais

Esse projeto foi pensado não só como atividade acadêmica, mas também como uma forma de contribuir com uma causa importante. Esperamos que o sistema ajude a ONG a alcançar mais pessoas e, principalmente, encontrar lares para muitos gatinhos ❤️🐱

---
## Diagramas de Sequencia
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
### 💸 Doar [(LinkRaw)](https://raw.githubusercontent.com/ligiaoliveira/Casa-dos-Gatos/refs/heads/main/docs/diagramas/sequencia_doacao.md)
```mermaid
sequenceDiagram
participant U as Usuario
participant S as Site
participant B as BancoDeDados
U->>S:Escolhe Menu "Doar"
S-->>U:Exibe Aba "Insira Valor Da Doação"
U->>S:Insere Valor Em R$
S->>B:Guarda valor e Pede ID da Conta Bancaria Da ONG
B-->>S: Envia ID Em Forma De QRcode Para Envio Do Valor
S-->>U:Exibe QRcode Na Tela Com Mensagem "Escaneie o QRcode Para Enviar a Doação"
U->>S:Escaneia QRcode
S->>B: Envia a Transação
B-->>B:Guarda o Valor No Banco
S-->>U: Envia Mensagem "Doação Realizada Com Sucesso!"
```
### 🛍 Brécho [(LinkRaw)](https://raw.githubusercontent.com/ligiaoliveira/Casa-dos-Gatos/refs/heads/main/docs/diagramas/sequencia_brecho.md)
```mermaid
sequenceDiagram
participant U as Usuario
participant S as Site
participant B as BancoDeDados
U->>S:Seleciona Menu "Brécho"
S->>B:Procura itens disponiveis à venda
B-->>S:Envia itens
S-->>U:Exibe itens
U->>S:Escolhe item
S->>B:Procura Horario de Atendimento Disponivel
B-->>S: Envia Horarios De Atendimento
S-->>U: Mostra Horarios Disponiveis Para Atendimento
U->>S: Escolhe Horario
S-->>U: Envia Mensagem "Data Marcada! Até Logo"
```
## Diagramas de Caso de Uso

### 👤 Visitante [(LinkRaw)](https://raw.githubusercontent.com/ligiaoliveira/Casa-dos-Gatos/refs/heads/main/docs/diagramas/casos_visitante.md)
```mermaid
flowchart LR
    Visitante((Visitante))

    subgraph Área Pública
        UC1((Ver gatos para adoção))
        UC2((Ver mostruário do brechó))
        UC3((Fazer doação))
        UC4((Se voluntariar))
        UC5((Entrar em contato))
        UC6((Ver voluntários))
        UC7((Ver transparência))

        UC8((Filtrar gatos))
        UC9((Ver detalhes do gato))
        UC10((Ver detalhes do produto))
        UC11((Contato via WhatsApp))
        UC12((Formulário voluntário))
        UC13((Doação financeira))
        UC14((Enviar mensagem))
        UC15((Doação de itens))
        UC16((Lista de itens aceitos))
        UC17((Dados bancários para doar))
    end

    Visitante --> UC1
    Visitante --> UC2
    Visitante --> UC3
    Visitante --> UC4
    Visitante --> UC5
    Visitante --> UC6
    Visitante --> UC7

    UC1 --> UC8
    UC1 --> UC9
    UC2 --> UC10
    UC2 --> UC11
    UC3 --> UC13
    UC3 --> UC15
    UC4 --> UC12
    UC5 --> UC14
    UC13 --> UC17
    UC15 --> UC16
```
---

### 🙋 Voluntário [(LinkRaw)](https://raw.githubusercontent.com/ligiaoliveira/Casa-dos-Gatos/refs/heads/main/docs/diagramas/casos_voluntario.md)

```mermaid
flowchart LR
    Voluntário((Voluntário))

    subgraph Área do Voluntário
        UC1((Ver voluntários))
        UC2((Mídias sociais e contato))
        UC3((Fazer doação))

        UC4((Enviar mensagem))
        UC5((Doação financeira))
        UC6((Doação de itens))
        UC7((Lista de itens aceitos))
        UC8((Dados bancários para doar))
    end

    Voluntário --> UC1
    Voluntário --> UC2
    Voluntário --> UC3

    UC2 --> UC4
    UC3 --> UC5
    UC3 --> UC6
    UC5 --> UC8
    UC6 --> UC7
    
```
---

### 🔐 Administrador [(LinkRaw)](https://github.com/ligiaoliveira/Casa-dos-Gatos/raw/refs/heads/main/docs/diagramas/casos_admin.md)

```mermaid
flowchart LR
  Administrador((Administrador))

  subgraph Área do Administrador
      UC1((Gerenciar gatos))
      UC2((Gerenciar produtos do brechó))
      UC3((Gerenciar voluntários))
      UC4((Gerenciar doações))
      UC5((Publlicar transparência))
      UC6((Responder mensagens))
  end

  Administrador --> UC1
  Administrador --> UC2
  Administrador --> UC3
  Administrador --> UC4
  Administrador --> UC5
  Administrador --> UC6

```
---

## Diagrama de Estados

### 👤 Visitante [(LinkRaw)](https://github.com/ligiaoliveira/Casa-dos-Gatos/raw/refs/heads/main/docs/diagramas/estados_visitante.md)

```mermaid
stateDiagram-v2

  [*] --> VisitandoSite

  VisitandoSite --> VisualizandoGatos : Acessar adoção
  VisitandoSite --> VisualizandoBrechó : Acessar brechó
  VisitandoSite --> VisualizandoDoação : Acessar doações
  VisitandoSite --> Voluntariado : Acessar voluntariado
  VisitandoSite --> Contato : Acessar contato

  %% Gatos
  VisualizandoGatos --> FiltrandoGatos : Aplicar filtro
  FiltrandoGatos --> VisualizandoGatos
  VisualizandoGatos --> DetalhesGato : Ver detalhes
  DetalhesGato --> Contato : Interesse no gato

  %% Brechó
  VisualizandoBrechó --> DetalhesProduto : Ver produto
  DetalhesProduto --> WhatsApp : Ir para o contato
  WhatsApp --> [*]

  %% Doação
  VisualizandoDoação --> VisualizandoDadosBancários : Ver dados para doação
  VisualizandoDadosBancários --> [*]

  %% Voluntariado
  Voluntariado --> PreenchendoFormulário
  PreenchendoFormulário --> Enviado
  Enviado --> AguardandoAprovação
  AguardandoAprovação --> Aprovado
  AguardandoAprovação --> Rejeitado
  Aprovado --> [*]
  Rejeitado --> [*]

  %% Contato
  Contato --> EnviandoMensagem
  EnviandoMensagem --> MensagemEnviada
  MensagemEnviada --> [*]
```
---

### 🙋 Voluntário [(LinkRaw)](https://www.google.com/search?q=https://raw.githubusercontent.com/ligiaoliveira/Casa-dos-Gatos/main/docs/diagramas/estados_voluntario.md)

```mermaid
stateDiagram-v2

  [*] --> AcessandoSite

  AcessandoSite --> VisualizandoInformações
  VisualizandoInformações --> VisualizandoVoluntários
  VisualizandoInformações --> EntrandoEmContato

  %% Contato
  EntrandoEmContato --> EnviandoMensagem
  EnviandoMensagem --> MensagemEnviada
  MensagemEnviada --> [*]

  %% Visualização
  VisualizandoVoluntários --> [*]
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
  PainelAdmin --> GerenciandoDoações
  PainelAdmin --> PublicandoTransparência
  PainelAdmin --> RespondendoMensagens

  %% Retornos
  GerenciandoGatos --> PainelAdmin
  GerenciandoProdutos --> PainelAdmin
  GerenciandoVoluntários --> PainelAdmin
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
## 📁Diagrama de Entidade/Relacionamento [(LinkRaw)](https://github.com/ligiaoliveira/Casa-dos-Gatos/raw/refs/heads/main/docs/diagramas/diagrama_er.md)
```mermaid
erDiagram
    USUARIO ||--o{ VOLUNTARIO : "se_cadastra"
    USUARIO ||--o{ ADOCAO_INTERESSE : "tem_interesse"
    USUARIO ||--o{ PEDIDO_BRECHO : "compra"
    
    CATALOGO_GATOS ||--o{ ADOCAO_INTERESSE : "recebe"
    PRODUTO_BRECHO ||--o{ PEDIDO_BRECHO : "esta_no"

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
```
---
## 🪪Diagrama De Classe [(LinkRaw)](https://github.com/ligiaoliveira/Casa-dos-Gatos/raw/refs/heads/main/docs/diagramas/diagrama_classe.md)
```mermaid 
classDiagram
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

    class Financeiro {
        TipoMovimentacao
        Valor
        Data
        gerarRelatorio()
    }

    Usuario "1" -- "0..1" Voluntario : se torna
    Usuario "1" -- "0..*" Gato : consulta/adota
    Usuario "1" -- "0..*" Brecho : compra em
    Financeiro "1" -- "*" Usuario : presta contas
```
---

## 📝 Projeto Interface

<img width="1341" height="598" alt="Screenshot_1" src="https://github.com/user-attachments/assets/573e8152-10b5-44c2-ba41-4da30eb212a5" />

<img width="1346" height="530" alt="Screenshot_2" src="https://github.com/user-attachments/assets/9ae98ed7-c66b-4bc1-b688-2cdba6f7b37e" />

<img width="1348" height="598" alt="Screenshot_3" src="https://github.com/user-attachments/assets/f5ab5674-6c2b-47ad-a62a-61f985708f4d" />

<img width="1345" height="610" alt="Screenshot_4" src="https://github.com/user-attachments/assets/ca1ce9ca-f30c-4581-afe3-86521a79a4cd" />

<img width="1440" height="1932" alt="Frame 1 (1)" src="https://github.com/user-attachments/assets/ed289e2d-e8f6-46f6-95d2-bc62e5c4834b" />

<img width="1343" height="582" alt="Screenshot_5" src="https://github.com/user-attachments/assets/9d2732b8-6639-40a3-8561-bd3e7a3bf8a7" />

<img width="1348" height="611" alt="Screenshot_6" src="https://github.com/user-attachments/assets/c75ea18d-7b3e-45f7-83d2-1346843e4876" />

<img width="372" height="549" alt="Screenshot_7" src="https://github.com/user-attachments/assets/feb291d1-edc0-46dc-acb5-cc15887435a2" />

---

## 📊 Tabela de Dados
### Gatos
<img width="1138" height="453" alt="Screenshot_8" src="https://github.com/user-attachments/assets/b6610c5c-956d-44d1-97c0-57ad5bd22e21" />

### Voluntários
<img width="790" height="452" alt="Screenshot_9" src="https://github.com/user-attachments/assets/4fff794a-a16a-432b-8e67-abd3163e3434" />

### Brechó
<img width="948" height="450" alt="Screenshot_10" src="https://github.com/user-attachments/assets/e06c7321-edaf-4eb9-a586-cc5bed0532a6" />

### Doações
<img width="790" height="450" alt="Screenshot_11" src="https://github.com/user-attachments/assets/494e0817-0296-4851-99d8-b6d6140484d5" />

### Transparência
<img width="644" height="449" alt="Screenshot_12" src="https://github.com/user-attachments/assets/263dd9ed-0878-4b78-8cba-9fa27ce47426" />

---
> Projeto acadêmico desenvolvido na FATEC Araraquara.
> 
