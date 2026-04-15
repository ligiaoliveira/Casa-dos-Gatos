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
