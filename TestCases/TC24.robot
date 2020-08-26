*** Settings ***
Resource    ${EXECDIR}\\Resources\\main.resource

*** Test Cases ***
Cenário 01: Realizar login e garantir que os 09 itens adicionados são exibidos corretamente no carrinho do header (quantidade, cor, tamanho, valor e valor total), ir para o checkout pelo carrinho do header e finalizar a compra sem que seja necessário logar novamente com usuário
    [Documentation]                                                         Necessita ter um usuário cadastrado
    [Tags]                                                                  BuyCases
    Dado que esteja na tela HOME do site Automation Practice
    E que esteja logado em uma conta
    Quando criar uma ordem de compra de 9 produtos de categorias diferentes
    E fazer o checkout dos produtos pelo carrinho
    E informar os dados do usuário logado  
    Então é possivel finalizar a compra


