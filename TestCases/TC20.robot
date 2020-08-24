*** Settings ***
Resource    ${EXECDIR}\\Resources\\main.resource

Test Setup       Abrir Navegador     url=about:blank    browser=chrome
Test Teardown    Fechar Navegador

*** Test Cases ***
Cenário 01: Garantir que após criar uma nova conta é possível realizar o login
    Dado que esteja na tela HOME do site Automation Practice 
    Quando clicar no link Sign in
    E o cadastro de login é realizado
    Então é possivel realizar o login com o usuario cadastrado