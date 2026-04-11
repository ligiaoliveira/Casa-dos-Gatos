**DiagramaDeSequencia:Doação**
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
