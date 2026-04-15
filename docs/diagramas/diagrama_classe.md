
``` mermaid
classDiagram
    class Usuario {
        Nome
        CPF
        Email
        Telefone
        Endereco
        DataNascimento
        cadastrar()
        fazerLogin()
    }

    class Voluntario {
        ContatoEmergencia
        DiasDisponiveis
        Habilidades
        ExperienciaPrevia
        enviarFormulario()
    }

    class Gato {
        Nome
        Idade
        Descricao
        Foto
        Status
        exibirCard()
    }

    class Brecho {
        NomeItem
        Preco
        Descricao
        Imagem
        listarProdutos()
        comprar()
    }

    class Financeiro {
        TipoMovimentacao
        Valor
        Data
        gerarRelatorio()
    }

    Usuario "1" -- "0..1" Voluntario : se torna
    Usuario "1" -- "0..*" Gato : consulta/adota
    Usuario "1" -- "0..*" Brecho : compra em
    Financeiro "1" -- "*" Usuario : presta contas
