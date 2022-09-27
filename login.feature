   #language: pt

Funcionalidade: Login na plataforma

    #criterio de aceitação 01: Ao inserir dados válidos deve ser direcionado para a tela de checkout
    #criterio de aceitação 02: Ao inserir um dos campos inválidos deve exibir uma mensagem de alerta "Usuário ou senha inválidos"
    
    Como cliente da plataforma EBAC-Shop
    Quero fazer o login (autenticação) na plataforma
    Para visualizar meus pedidos


    Contexto:
        Dados que eu acesse a pagina de login da EBAC-SHOP

    Cenario: Dados válidos
        Quando eu inserir dados válidos
        Entao devo ser direcionado para a tela de checkout


    Cenario: Dados inválidos
        Quando eu inserir dados inválidos
        Entao Entao deve exibir uma mensagem de alerta "Usuário ou senha inválidos"



