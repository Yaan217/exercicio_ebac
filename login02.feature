Feature: Login na plataforma

    #criterio de aceitação 02: Ao inserir um dos campos inválidos deve exibir uma mensagem de alerta "Usuário ou senha inválidos"

    Como cliente da plataforma EBAC-Shop
    Quero fazer o login (autenticação) na plataforma
    Para visualizar meus pedidos


    Background:
        Given que eu acesse a pagina de login da EBAC-SHOP

    Scenario: Dados válidos
        When eu digitar o usuário "yanmarcos@123.com.br"
        And senha "teste@321"
        Then devo ser direcionado para a tela da minha conta


    Scenario: Dados inválidos
        When eu digitar o usuário "yanmarcos@123.com.br"
        And senha "qsde451"
        Then deve exibir uma mensagem de alerta "Usuário ou senha inválidos"


    Scenario: Dados inexistentes
        When eu digitar o usuário "fheiufhefoieh@123.com.br"
        And senha "teste@321"
        Then deve exibir uma mensagem de alerta "Usuário inexistente"
