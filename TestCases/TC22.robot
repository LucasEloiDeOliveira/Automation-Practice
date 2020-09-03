*** Settings ***
Resource    ${EXECDIR}\\Resources\\main.resource

*** Test Cases ***
Cenário 01: Garantir que o item adicionado no carrinho é o correto na tela de checkout e que o valor e quantidade estão corretos. Garantir que é possível finalizar a compra com um usuário criado à partir da tela de checkout.
    [Tags]                                                                  BuyCases
    Dado que esteja no catalogo de produtos no site Automation Practice 
    Quando criar uma ordem de compra de 1 produtos Summer Dresses
    E informar os dados do usuário descadastrado na compra
    Então é possivel finalizar a compra


