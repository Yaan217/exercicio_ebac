Feature:  Configurar produto

    #Critério de aceitação: Seleções de cor, tamanho e quantidade devem ser obrigatórias

    Como cliente da EBAC-SHOP
    Quero configurar meu produto de acordo com meu tamanho e gosto e escolher a quantidade
    Para depois inserir no carrinho

    Background:
        Given que eu escolher um produto

    Scenario Outline: Seleção válida
        When selecionar a <cor>
        And o <tamanho>
        And a <quantidade>
        Then deve permitir adicionar ao carrinho

        Examples:
            | "cor"      | "tamanho" | "quantidade" |
            | "Preto"    | "P"       | "01"         |
            | "Vermelho" | "M"       | "07"         |
            | "Branco"   | "GG"      | "04"         |
            | "Verde"    | "P"P"     | "03"         |



    Scenario: Seleção inválida
        When eu não selecionar a <cor>
        And o <tamanho>
        And a <quantidade>
        Then deve exibir a <mensagem> e não permitir adicionar ao carrinho

        Examples:
            | "cor"     | "tamanho" | "quantidade" | "mensagem"               |
            | " "       | "PP"      | "02"         | "selecione a cor"        |
            | "Verde"   | " "       | "09"         | "selecione o tamanho"    |
            | "Amarelo" | "M"       | " "          | "selecione a quantidade" |










