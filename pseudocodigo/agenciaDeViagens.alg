// Problema 
// Usando Pseudocódigo: 

// Usando conceitos de programação estruturada (Vetor), criar em pseudocódigo 
// um menu para simular um cadastro para uma agência de viagens com as seguintes funções: 
// cadastro de cliente e cadastro de destino, criar também uma consulta para cada estrutura de dados.


Algoritmo AgenciaDeViagens

    // Declaração dos vetores
    const MAX_CLIENTES = 300
    const MAX_DESTINOS = 60
    Tipo TCliente = Registro
        nome: String
        idade: Inteiro
    FimRegistro

    Tipo TDestino = Registro
        nomeDestino: String
        preco: Real
    FimRegistro

    // Vetores para armazenar os clientes e destinos
    clientes: Vetor [0..MAX_CLIENTES] de TCliente
    destinos: Vetor [0..MAX_DESTINOS] de TDestino

  

    // Função para cadastrar um cliente
    Funcao CadastrarCliente()
        Se totalClientes >= MAX_CLIENTES Então
            escreval("Limite máximo de clientes atingido.")
            Retorne
        FimSe

        escreval("Digite o nome do cliente: ")
        Leia(clientes[totalClientes].nome)

        escreval("Digite a idade do cliente: ")
        Leia(clientes[totalClientes].idade)

        totalClientes <- totalClientes + 1
    FimFuncao

    // Função para cadastrar um destino
    Funcao CadastrarDestino()
        Se totalDestinos >= MAX_DESTINOS Então
            escreval("Limite máximo de destinos atingido.")
            Retorne
        FimSe

        escreval("Digite o nome do destino: ")
        Leia(destinos[totalDestinos].nomeDestino)

        escreval("Digite o preço do destino: ")
        Leia(destinos[totalDestinos].preco)

        totalDestinos <- totalDestinos + 1
    FimFuncao

    // Função para consultar os clientes cadastrados
    Funcao ConsultarClientes()
        Se totalClientes = 0 Então
            Escreval("Nenhum cliente cadastrado.")
        Senão
            Escreval("Clientes cadastrados:")
            Para i <- 0 Até totalClientes - 1 Faça
                escreval(i + 1, ": ", clientes[i].nome, " (", clientes[i].idade, " anos)")
            FimPara
        FimSe
    FimFuncao

    // Função para consultar os destinos cadastrados
    Funcao ConsultarDestinos()
        Se totalDestinos = 0 Então
            Escrever("Nenhum destino cadastrado.")
        Senão
            Escreval("Destinos cadastrados:")
            Para i <- 0 Até totalDestinos - 1 Faça
                Escreval(i + 1, ": ", destinos[i].nomeDestino, " - Preço: R$", destinos[i].preco)
            FimPara
        FimSe
    FimFuncao

Inicio
    Repita
        escreval("--------- MENU ---------")
        escreval("1. Cadastrar cliente")
        escreval("2. Cadastrar destino")
        escreval("3. Consultar clientes")
        escreval("4. Consultar destinos")
        escreval("0. Sair")
        escreval("-------------------------")
        escreval("Digite a opção desejada: ")
        Leia(opcao)

        Escolha opcao
            Caso 1:
                CadastrarCliente()
            Caso 2:
                CadastrarDestino()
            Caso 3:
                ConsultarClientes()
            Caso 4:
                ConsultarDestinos()
            Caso 0:
                Escrever("Encerrando o programa...")
            OutroCaso:
                Escrever("Opção inválida. Tente novamente.")
        FimEscolha
    Até que opcao = 0
FimAlgoritmo
