   #language: pt

Funcionalidade: Tela de Cadastro - Checkout


    #Critério de aceitação 01: Deve ser cadastrado com todos os dados obrigatórios, marcados com asteriscos

    Como cliente da EBAC-SHOP
    Quero fazer concluir meu cadastro
    Para finalizar minha compra


    Contexto:
        Dado que eu faça o cadastro obrigatório

    Esquema do Cenario: Cadastro obrigatório
        Quando cadastrar meu <nome>
        E o <sobrenome>
        Entao meu cadastro deve ser concluído com sucesso

        Exemplos:
            | "nome"  | "sobrenome" | "pais"   | "endereco"        | "cidade"    | "cep"     | "telefone"    | "email"                    |
            | "Joao"  | "Silva"     | "Brasil" | "Av. Paulista"    | "São Paulo" | "0395501" | "11912345678" | "joao.silva@123.com.br"     |
            | "Maria" | "Oliveira"  | "Brasil" | "Av. Morumbi"     | "São Paulo" | "0395502" | "11912345679" | "mar_iaoliveira@123.com.br" |
    


    Cenario: Cadastro obrigatório
        Quando eu não cadastrar meu <nome>
        E o <sobrenome>
        Entao meu cadastro não deve ser concluído

        Exemplos:
            | "nome"  | "sobrenome" | "pais"   | "endereco"        | "cidade"    | "cep"     | "telefone"    | "email"                    |
            | " "     | "Silva"     | "Brasil" | "Av. Paulista"    | " "         | "0395501" | "11912345678" | "joao.silva@123.com.br"     |
            | "Maria" | " "         | "Brasil" | "Av. Morumbi"     | "São Paulo" | " "       | "11912345679" | "mar_iaoliveira@123.com.br" |



    #Critério de aceitação 02: Não deve permitir campo e-mail com formato inválido. Sistema deve inserir uma mensagem de erro


    Como cliente da EBAC-SHOP
    Quero fazer concluir meu cadastro
    Para finalizar minha compra

Cenario: E-mail inválido
Dado que esteja fazendo meu cadastrado
Quando cadstrar e-mail "teste.com@123.br"
Entao deve exibir a mensagem de erro "endereço de e-mail com formato inválido"




#Critério de aceitação 03: Ao tentar cadastrar com campos vazios, deve exibir mensagem de alerta

    Como cliente da EBAC-SHOP
    Quero fazer concluir meu cadastro
    Para finalizar minha compra



    Cenario: Cadastro em branco
        Dado que eu estaja fazendo meu cadastro
        Quando deixar um campo não preenchido
        Entao o sistema deve exibir uma mensagem de alerta "Campo obrigatório não preenchido"
 



