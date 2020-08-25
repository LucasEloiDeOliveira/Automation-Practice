*** Settings ***
Resource    ${EXECDIR}\\Resources\\main.resource

*** Test Cases ***
Cenário 01: Garantir que após criar uma nova conta é possível realizar o login
    [Documentation]                                               Dados do cadastro no arquivo "data_user.resource"
    [Tags]                                                        LoginCases
    Dado que esteja na tela HOME do site Automation Practice 
    Quando clicar no link Sign in
    E o cadastro de login é realizado
    Então é possivel realizar o login com o usuario cadastrado