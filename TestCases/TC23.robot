*** Settings ***
Resource    ${EXECDIR}\\Resources\\main.resource

*** Test Cases ***
Cenário 01: Garantir que os 06 itens adicionados são exibidos corretamente no carrinho do header (quantidade, cor, tamanho, valor e valor total), ir para o checkout pelo carrinho do header e finalizar a compra realizando login com um usuário cadastrado
    [Documentation]                                                         Necessita ter um usuário cadastrado
    [Tags]                                                                  BuyCases
    Dado que esteja no catalogo de produtos no site Automation Practice 
    Quando criar uma ordem de compra de 6 produtos de categorias diferentes
    E fazer o checkout dos produtos pelo carrinho
    E informar os dados do usuário deslogado  
    Então é possivel finalizar a compra


