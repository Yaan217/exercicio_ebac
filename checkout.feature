            #language: pt

        Funcionalidade: Tela de Cadastro - Checkout

            Como cliente da EBAC-SHOP
            Quero fazer concluir meu cadastro
            Para finalizar minha compra


            #Critério de aceitação 01: Deve ser cadastrado com todos os dados obrigatórios, marcados com asteriscos
            #Critério de aceitação 02: Não deve permitir campo e-mail com formato inválido. Sistema deve inserir uma mensagem de erro
            #Critério de aceitação 03: Ao tentar cadastrar com campos vazios, deve exibir mensagem de alerta



        Contexto:
            Dado que eu faça o cadastro obrigatório

            Esquema do Cenario: Cadastro válido
            Quando cadastrar meu <nome>
            E o <sobrenome>
            Entao deve exibir a <mensagem>

            Exemplos:
            | "nome"  | "sobrenome" | "pais"   | "endereco"     | "cidade"    | "cep"     | "telefone"    | "email"                     | "mensagem"           |
            | "Joao"  | "Silva"     | "Brasil" | "Av. Paulista" | "São Paulo" | "0395501" | "11912345678" | "joao.silva@123.com.br"     | "cadastro concluído" |
            | "Maria" | "Oliveira"  | "Brasil" | "Av. Morumbi"  | "São Paulo" | "0395502" | "11912345679" | "mar_iaoliveira@123.com.br" | "cadastro concluído" |



            Cenario: Cadastro inválido
            Quando eu não cadastrar meu <nome>
            E o <sobrenome>
            Entao deve exibir a <mensagem>

            Exemplos:
            | "nome"  | "sobrenome" | "pais"   | "endereco"     | "cidade"    | "cep"     | "telefone"    | "email"                     |
            | " "     | "Silva"     | "Brasil" | "Av. Paulista" | " "         | "0395501" | "11912345678" | "joao.silva@123.com.br"     | "cadastro inválido" |
            | "Maria" | " "         | "Brasil" | "Av. Morumbi"  | "São Paulo" | " "       | "11912345679" | "mar_iaoliveira@123.com.br" | "cadastro inválido" |








