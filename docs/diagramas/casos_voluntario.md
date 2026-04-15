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

    UC2 --> UC4
    UC3 --> UC5
    UC3 --> UC6
    UC5 --> UC8
    UC6 --> UC7
