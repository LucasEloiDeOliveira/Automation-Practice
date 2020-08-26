*** Settings ***
Resource    ${EXECDIR}\\Resources\\main.resource

*** Test Cases ***
Cenário 01: Garantir que após recuperar a senha é possível realizar o login
    [Documentation]                                               Necessita ter um usuario cadastrado
    [Tags]                                                        LoginCases
    Dado que esteja na tela LOGIN do site Automation Practice 
    Quando clicar em esqueci a senha
    E recuperar a senha
    Então é possivel realizar o login com a senha recuperada