*** Settings ***
Resource    ${EXECDIR}\\Resources\\main.resource

*** Test Cases ***
Cenário 01: Garantir que ao clicar no menu Women -> T-shirts está direcionando para a tela CATALOG e que todos os produtos listados são T-shirts femininas
    Dado que esteja na tela HOME do site Automation Practice 
    Quando clicar no Submenu Women>Blouses
    Então a tela de Blouses de ser mostrada
    E Todos os produtos listados são Blouses femininas