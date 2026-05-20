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
