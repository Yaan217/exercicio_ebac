Feature: Configurar produto

    #Critério de aceitação 02: Deve permitir apenas 10 produtos por venda

    Como cliente da EBAC-SHOP
    Quero configurar meu produto de acordo com meu tamanho e gosto e escolher a quantidade
    Para depois inserir no carrinho


    Scenario: Quantidade permitida
        Given que eu escolha meus produtos
        When escolher até 10 produtos
        Then deve permitir a venda


    Scenario: Quantidade não permitida
        Given que eu escolha meus produtos
        When escolher mais de 10 produtos
        Then não deve permitir a venda