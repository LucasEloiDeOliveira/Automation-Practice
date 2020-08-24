*** Settings ***
Resource    ${EXECDIR}\\Resources\\main.resource

Test Setup       Abrir Navegador     url=about:blank    browser=chrome
Test Teardown    Fechar Navegador

*** Test Cases ***
Cenário 01: Garantir que após criar uma nova conta é possível realizar o login
    Dado que esteja na tela HOME do site Automation Practice 
    Quando Clicar no link Sign in
    Então a tela de login de ser mostrada
    E o cadastro de login é realizado
    E É possivel realizar login com o usuario cadastrado