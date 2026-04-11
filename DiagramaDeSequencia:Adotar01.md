**DiagramaDeSequencia:Adotar**
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
