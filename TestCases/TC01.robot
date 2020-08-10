*** Settings ***
Resource    ${EXECDIR}../Resources/main.resource
Resource    ${CURDIR}../Resources/Steps/Step_homepage.resource

*** Test Cases ***
Cenário 01: Garantir que ao clicar no header está direcionando para a homepage
    Dado que esteja na tela HOME do site Automation Practice 
    Quando clicar no link GET SAVINGS NOW
    Então a tela HOME deve ser mostrada