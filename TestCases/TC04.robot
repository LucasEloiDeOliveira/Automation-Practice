*** Settings ***
Resource          ../Resources/main.resource
Suite Teardown    Fechar Navegador

*** Test Cases ***
Cenário 01: Garantir que ao clicar no header está direcionando para a homepage
    Dado que esteja na tela HOME do site Automation Practice 
    Quando clicar no Logo
    Então a tela HOME deve ser mostrada