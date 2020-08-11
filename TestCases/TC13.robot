*** Settings ***
Resource    ${EXECDIR}\\Resources\\main.resource

*** Test Cases ***
Cenário 01: Garantir que ao clicar no menu T-shirt está direcionando para a tela CATALOG e que todos os produtos listados são T-shirt
    Dado que esteja na tela HOME do site Automation Practice 
    Quando clicar no menu T-shirts
    Então a tela de t-shirts de ser mostrada
    E todos os produtos listados são T-shirts