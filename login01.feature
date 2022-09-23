Feature: Login na plataforma

    #criterio de aceitação 01: Ao inserir dados válidos deve ser direcionado para a tela de checkout

    Como cliente da plataforma EBAC-Shop
    Quero fazer o login (autenticação) na plataforma
    Para visualizar meus pedidos


    Background:
        Given que eu acesse a pagina de login da EBAC-SHOP

    Scenario: Dados válidos
        When eu inserir dados válidos
        Then devo ser direcionado para a tela de checkout


    Scenario: Dados inválidos
        When eu inserir dados inválidos
        Then não devo ser direcionado para a pagina de checkout



