*** Settings ***
Resource    ${EXECDIR}\\Resources\\main.resource

*** Test Cases ***
Cenário 01: Garantir que após recuperar a senha é possível realizar o login
    [Documentation]                                               Necessita ter um usuário cadastrado
    [Tags]                                                        BuyCases
    Dado que esteja no catologo de produtos no site Automation Practice 
    Quando criar uma ordem de compra
    E colocar os dados do usuário
    Então é possivel finalizar a compra


    Order - My Store