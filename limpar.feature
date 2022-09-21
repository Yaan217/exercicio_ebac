Feature: Configurar produto

    #Critério de aceitação 03: Quando eu clicar no botão "limpar" deve voltar ao estado original

    Como cliente da EBAC-SHOP
    Quero configurar meu produto de acordo com meu tamanho e gosto e escolher a quantidade
    Para depois inserir no carrinho



    Scenario: Limpar carrinho
        Given que o meu carrinho esteja com produtos
        When eu clicar no botão "limpar"
        Then o meu carrinho deve voltar ao estado original


