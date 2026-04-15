algoritmo "P.I. ong gatos"

var
   opcao: inteiro
   cidade: caractere
   aprovado: caractere

inicio

   opcao <- -1

   enquanto opcao <> 0 faca

      escreval("=== ONG DE GATOS ===")
      escreval("1 - Como ajudar")
      escreval("2 - Ver voluntários")
      escreval("3 - Se voluntariar")
      escreval("4 - Adoção")
      escreval("5 - Brechó")
      escreval("6 - Transparência")
      escreval("0 - Sair")

      escreva("Escolha uma opção: ")
      leia(opcao)

      se opcao = 1 entao
         escreval("Dados bancários para doação")

      senao
         se opcao = 2 entao
            escreval("Lista de voluntários")

         senao
            se opcao = 3 entao

               escreva("Digite sua cidade: ")
               leia(cidade)

               se cidade <> "Araraquara" entao
                  escreval("Atendemos apenas Araraquara")
               senao
                  escreval("Cadastro enviado para análise")

                  escreva("Aprovado? (sim/nao): ")
                  leia(aprovado)

                  se aprovado = "sim" entao
                     escreval("Você foi aprovado!")
                  senao
                     escreval("Cadastro não aprovado")
                  fimse

               fimse

            senao
               se opcao = 4 entao
                  escreval("Mostruário de gatos")
                  escreval("Ver detalhes")
                  escreval("Entrar em contato")

               senao
                  se opcao = 5 entao
                     escreval("Mostruário do brechó")
                     escreval("Selecionar produto")
                     escreval("Abrir WhatsApp")

                  senao
                     se opcao = 6 entao
                        escreval("Relatórios de transparência")

                     senao
                        se opcao <> 0 entao
                           escreval("Opção inválida")
                        fimse
                     fimse
                  fimse
               fimse
            fimse
         fimse
      fimse

   fimenquanto

   escreval("Encerrando sistema...")

fimalgoritmo
