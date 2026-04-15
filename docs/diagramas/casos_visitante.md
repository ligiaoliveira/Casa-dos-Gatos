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
    end
    Visitante --> UC1
    Visitante --> UC2
    Visitante --> UC3
    Visitante --> UC4
    Visitante --> UC5
    Visitante --> UC6
    Visitante --> UC7
