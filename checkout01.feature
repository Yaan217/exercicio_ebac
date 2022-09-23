Feature: Tela de Cadastro - Checkout


    #Critério de aceitação 01: Deve ser cadastrado com todos os dados obrigatórios, marcados com asteriscos

    Como cliente da EBAC-SHOP
    Quero fazer concluir meu cadastro
    Para finalizar minha compra


    Background:
        Given que eu faça o cadastro obrigatório

    Scenario Outline: Cadastro obrigatório
        When cadastrar meu <nome>
        And o <sobrenome>
        And o <pais>
        And o <endereco>
        And a <cidade>
        And o <cep>
        And o <telefone>
        And o <email>
        Then meu cadastro deve ser concluído com sucesso

        Examples:
            | "nome"  | "sobrenome" | "pais"   | "endereco"        | "cidade"    | "cep"     | "telefone"    | "email"                    |
            | "Joao"  | "Silva"     | "Brasil" | "Av. Paulista"    | "São Paulo" | "0395501" | "11912345678" | "joaosilva@123.com.br"     |
            | "Maria" | "Oliveira"  | "Brasil" | "Av. Morumbi"     | "São Paulo" | "0395502" | "11912345679" | "mariaoliveira@123.com.br" |
            | "Paulo" | "Roberto"   | "Brasil" | "Av. Santo Amaro" | "São Paulo" | "0395503" | "11912345670" | "pauloroberto@123.com.br"  |
            | "Ana"   | "Beatriz"   | "Brasil" | "Av. Berrini"     | "São Paulo" | "0395504" | "11912345671" | "anabeatriz@123.com.br"    |



    Scenario: Cadastro obrigatório
        When eu não cadastrar meu <nome>
        Or o <sobrenome>
        Or o <pais>
        Or o <endereco>
        Or a <cidade>
        Or o <cep>
        Or o <telefone>
        Or o <email>
        Or meu cadastro não deve ser concluído

        Examples:
            | "nome"  | "sobrenome" | "pais"   | "endereco"        | "cidade"    | "cep"     | "telefone"    | "email"                    |
            | " "     | "Silva"     | "Brasil" | "Av. Paulista"    | " "         | "0395501" | "11912345678" | "joaosilva@123.com.br"     |
            | "Maria" | " "         | "Brasil" | "Av. Morumbi"     | "São Paulo" | " "       | "11912345679" | "mariaoliveira@123.com.br" |
            | "Paulo" | "Roberto"   | " "      | "Av. Santo Amaro" | "São Paulo" | "0395503" | " "           | "pauloroberto@123.com.br"  |
            | "Ana"   | "Beatriz"   | "Brasil" | " "               | "São Paulo" | "0395504" | "11912345671" | " "                        |




