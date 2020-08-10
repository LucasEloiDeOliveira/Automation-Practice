*** Settings ***
Resource          ../Resources/main.resource
Suite Teardown    Fechar Navegador

*** Test Cases ***
Cenário 01: Garantir que ao clicar no menu Women -> T-shirts está direcionando para a tela CATALOG e que todos os produtos listados são T-shirts femininas
    Dado que esteja na tela HOME do site Automation Practice 
    Quando clicar no Submenu Women>T-shirts
    Então a tela de t-shirts de ser mostrada
    E Todos os produtos listados são T-shirts femininas