```mermaid
erDiagram
    USUARIO ||--o{ VOLUNTARIO : "se cadastra"
    USUARIO ||--o{ ADOCAO_INTERESSE : "tem interesse"
    USUARIO ||--o{ PEDIDO_BRECHO : "tem interesse"
    USUARIO ||--o{ FINANCEIRO : "acessa informações"
    USUARIO ||--o{ CONTEUDO_ONG : "acessa informações"
    USUARIO ||--o{ EMPRESA_PARCEIRA : "se cadastra"
    
    CATALOGO_GATOS ||--o{ ADOCAO_INTERESSE : "recebe"
    PRODUTO_BRECHO ||--o{ PEDIDO_BRECHO : "recebe"

    USUARIO {
        info Nome
        info CPF
        info Email
        info Telefone
        info Endereco
        info Nascimento
    }

    VOLUNTARIO {
        info Contato_Emergencia
        info Dias_Disponiveis
        info Habilidades
        info Experiencia
        info Disposto_a_Aprender
    }

    CATALOGO_GATOS {
        info Nome_Gato
        info Idade
        info Descricao
        info Foto
        info Status
    }

    PRODUTO_BRECHO {
        info Nome_Item
        info Preco
        info Descricao
        info Imagem
    }

    FINANCEIRO {
        info Tipo_Movimentacao
        info Valor
        info Data
    }

    CONTEUDO_ONG {
        info Historia
        info Objetivos
    }
    
    EMPRESA_PARCEIRA {
        info Nome_da_Empresa
        info Pessoa_de_Contato
        info E-mail
        info Telefone
        info Como_Gostaria_de_Ajudar
    }



    CONTEUDO_ONG {
        info Historia
        info Objetivos
    }
```
