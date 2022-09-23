Feature: Tela de Cadastro - Checkout


    #Critério de aceitação 03: Ao tentar cadastrar com campos vazios, deve exibir mensagem de alerta

    Como cliente da EBAC-SHOP
    Quero fazer concluir meu cadastro
    Para finalizar minha compra



    Scenario: Cadastro em branco
        Given que eu estaja fazendo meu cadastro
        When deixar um campo não preenchido
        Then o sistema deve exibir uma mensagem de alerta "Campo obrigatório não preenchido"
        