*** Settings ***
Resource    ${EXECDIR}\\Resources\\main.resource

Test Setup       Abrir Navegador     url=about:blank    browser=chrome
Test Teardown    Fechar Navegador

*** Test Cases ***
Cenário 01: Garantir que ao selecionar View List os produtos são exibidos em List
    Dado que esteja na tela HOME do site Automation Practice 
    Quando clicar no Submenu Women>T-shirts
    Então a tela de t-shirts de ser mostrada
    E ao selecionar View List os produtos são exibidos em List