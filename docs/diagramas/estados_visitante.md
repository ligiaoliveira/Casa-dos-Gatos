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
