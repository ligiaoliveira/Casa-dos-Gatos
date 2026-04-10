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

## Diagramas de Caso de Uso

### 👤 Visitante

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

### 🙋 Voluntário

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

### 🔐 Administrador

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

### 👤 Visitante

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

### 🙋 Voluntário

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

### 🔐 Administrador

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

> Projeto acadêmico desenvolvido na FATEC Araraquara.
