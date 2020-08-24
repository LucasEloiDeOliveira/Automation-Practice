*** Settings ***
Resource    ${EXECDIR}\\Resources\\main.resource

***Keywords***

#### DADO
Que esteja na tela HOME do site Automation Practice
    Run Keyword And Ignore Error    Acessar site Automation Practice

#### QUANDO
Clicar no link GET SAVINGS NOW
    Run Keyword And Ignore Error    Clicar em GET SAVINGS NOW

Clicar no link Sign in
    Run Keyword And Ignore Error    Clicar em Sign_in

#### ENTÃO
A tela HOME deve ser mostrada
    Run Keyword And Ignore Error    Verificar tela Home