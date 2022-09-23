Feature: Tela de Cadastro - Checkout


    #Critério de aceitação 02: Não deve permitir campo e-mail com formato inválido. Sistema deve inserir uma mensagem de erro


    Como cliente da EBAC-SHOP
    Quero fazer concluir meu cadastro
    Para finalizar minha compra

Scenario: E-mail inválido
Given que esteja fazendo meu cadastrado
When cadstrar e-mail "teste.com@123.br"
Then deve exibir a mensagem de erro "endereço de e-mail com formato inválido"
