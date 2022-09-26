   #language: pt

Funcionalidade:  Configurar produto

    #Critério de aceitação: Seleções de cor, tamanho e quantidade devem ser obrigatórias

    Como cliente da EBAC-SHOP
    Quero configurar meu produto de acordo com meu tamanho e gosto e escolher a quantidade
    Para depois inserir no carrinho

    Contexto:
        Dado que eu escolher um produto

    Cenario: Seleção válida
        Quando selecionar a cor
        Entao deve permitir adicionar ao carrinho

 

    Cenario: Seleção inválida
        Quando eu não selecionar o tamanho
        Entao não deve permitir adicionar ao carrinho




 #Critério de aceitação 02: Deve permitir apenas 10 produtos por venda

    Como cliente da EBAC-SHOP
    Quero configurar meu produto de acordo com meu tamanho e gosto e escolher a quantidade
    Para depois inserir no carrinho


    Cenario: Quantidade permitida
        Dado que eu escolha meus produtos
        Quando escolher até 10 produtos
        Entao deve permitir a venda


    Cenario: Quantidade não permitida
        Dado que eu escolha meus produtos
        Quando escolher mais de 10 produtos
        Entao não deve permitir a venda




         #Critério de aceitação 03: Quando eu clicar no botão "limpar" deve voltar ao estado original

    Como cliente da EBAC-SHOP
    Quero configurar meu produto de acordo com meu tamanho e gosto e escolher a quantidade
    Para depois inserir no carrinho



    Cenario: Limpar carrinho
        Dado que o meu carrinho esteja com produtos
        Quando eu clicar no botão "limpar"
        Entao o meu carrinho deve voltar ao estado original










