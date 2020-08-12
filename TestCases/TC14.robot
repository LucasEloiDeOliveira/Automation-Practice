*** Settings ***
Resource    ${EXECDIR}\\Resources\\main.resource

Test Setup       Abrir Navegador     url=about:blank    browser=chrome
Test Teardown    Fechar Navegador

*** Test Cases ***
Cenário 01: Garantir que ao utilizar o filtro os produtos são ordenados adequadamente
    Dado que esteja na tela HOME do site Automation Practice 
    Quando clicar no Submenu Women>T-shirts
    Então a tela de t-shirts de ser mostrada
    E ao utilizar o filtro os produtos são ordenados adequadamente