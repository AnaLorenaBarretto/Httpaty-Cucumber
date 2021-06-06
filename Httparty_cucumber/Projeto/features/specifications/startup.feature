#language: pt
@startup

    Funcionalidade: Manter dados de startup através de API
    Como um usuário do sistema
    Eu quero realizar as requisições na API
    A fim de manipular as informações de cadastro de startup

    Cenário: Cadastrar uma Startup
        Dado o endereço da API para manter o cadastro de startup
        Quando realizar uma requisição para cadastrar uma startup
        Então a API irá retornar os dados do cadastro da startup respondendo o codigo 201

    Cenário: Consultar uma Startup
        Dado o endereço da API para manter o cadastro de startup
        Quando realizar uma requisição passando o ID uma startup
        Então a API irá retornar os dados da startup correspondente respondendo o codigo 200

    Cenário: Alterar uma Startup
        Dado o endereço da API para manter o cadastro de startup
        Quando realizar uma requisição para alterar uma startup
        Então a API irá retornar os dados da startup alterados respondendo o codigo 200

    Cenário: Deletar uma Startup
        Dado o endereço da API para manter o cadastro de startup
        Quando realizar uma requisição para excluir uma startup
        Então a API irá retornar os dados da exclusão respondendo o codigo 200            
