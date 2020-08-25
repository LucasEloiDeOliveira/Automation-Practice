*** Settings ***
Resource    ${EXECDIR}\\Resources\\main.resource

***Keywords***

#### DADO
Que esteja na tela LOGIN do site Automation Practice
    Run Keyword And Ignore Error    Acessar site Automation Practice
    Run Keyword And Ignore Error    Clicar em Sign_in

#### QUANDO

#### ENTÃO
A tela HOME deve ser mostrada
    Run Keyword And Ignore Error    Verificar tela Home