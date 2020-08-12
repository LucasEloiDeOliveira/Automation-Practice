*** Settings ***
Resource    ${EXECDIR}\\Resources\\main.resource

Test Setup       Abrir Navegador     url=about:blank    browser=chrome
Test Teardown    Fechar Navegador

*** Test Cases ***
Cenário 01: Garantir que o desconto em % é aplicado em cima do valor taxado e o valor com desconto é equivalente a % de desconto exibida
    Dado que esteja na tela HOME do site Automation Practice 
    Quando clicar no Submenu Dresses>Summer Dresses
    Então a tela de Summer Dresses de ser mostrada
    E o valor do produto com desconto está correto