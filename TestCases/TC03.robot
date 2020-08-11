*** Settings ***
Resource    ${EXECDIR}\\Resources\\main.resource

*** Test Cases ***
Cenário 01: Garantir que ao clicar no header está direcionando para a homepage
    Dado que esteja na tela HOME do site Automation Practice 
    Quando clicar em Sign_in
    Então a tela de login de ser mostrada