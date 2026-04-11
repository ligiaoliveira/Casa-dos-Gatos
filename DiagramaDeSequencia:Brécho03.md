**DiagramaDeSequencia:Brécho**
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
