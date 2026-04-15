```mermaid
flowchart LR
    Voluntário((Voluntário))
    subgraph Área do Voluntário
        UC1((Ver voluntários))
        UC2((Mídias sociais e contato))
        UC3((Fazer doação))
    end
    Voluntário --> UC1
    Voluntário --> UC2
    Voluntário --> UC3
