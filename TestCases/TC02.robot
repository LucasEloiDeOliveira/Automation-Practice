*** Settings ***
Resource          ../Resources/main.resource
Suite Teardown    Fechar Navegador  

*** Test Cases ***
Cenário 01: Garantir que ao clicar no link Contact us está direcionando para a tela CUSTOMER SERVICE - CONTACT US e que todos os objetos da tela foram carregados
    Dado que esteja na tela HOME do site Automation Practice 
    Quando clicar no link Contact_us
    Então a tela Contact_us deve ser mostrada