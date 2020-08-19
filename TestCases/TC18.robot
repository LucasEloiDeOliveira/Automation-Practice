*** Settings ***
Resource    ${EXECDIR}\\Resources\\main.resource

*** Test Cases ***
Cenário 01: Garantir que o desconto em % é aplicado em cima do valor taxado e o valor com desconto é equivalente a % de desconto exibida
    Dado que esteja na tela HOME do site Automation Practice 
    Quando clicar no Submenu Dresses>Summer Dresses
    Então a tela de Summer Dresses de ser mostrada
    E Verificar valor correto do produto com desconto 20%