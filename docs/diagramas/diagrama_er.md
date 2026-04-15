```mermaid
erDiagram
    USUARIO ||--o{ VOLUNTARIO : "se_cadastra"
    USUARIO ||--o{ ADOCAO_INTERESSE : "tem_interesse"
    USUARIO ||--o{ PEDIDO_BRECHO : "compra"
    
    CATALOGO_GATOS ||--o{ ADOCAO_INTERESSE : "recebe"
    PRODUTO_BRECHO ||--o{ PEDIDO_BRECHO : "esta_no"

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
