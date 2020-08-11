*** Settings ***
Resource    ${EXECDIR}\\Resources\\main.resource

*** Test Cases ***
Cenário 01: Garantir que ao clicar no menu Dresses -> Casual Dresses está direcionando para a tela CATALOG e que todos os produtos listados são Casual Dresses
    Dado que esteja na tela HOME do site Automation Practice 
    Quando clicar no Submenu Dresses>Casual Dresses
    Então a tela de Casual Dresses de ser mostrada
    E Todos os produtos listados são Casual Dresses femininas