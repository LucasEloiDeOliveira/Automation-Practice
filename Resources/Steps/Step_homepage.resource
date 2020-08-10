*** Settings ***
Resource    ${CURDIR}../Resources/main.resource

***Keywords***

#### DADO
Que esteja na tela HOME do site Automation Practice
    Acessar site Automation Practice

#### QUANDO
Clicar no link GET SAVINGS NOW
    Clicar em GET SAVINGS NOW

#### ENTÃO
A tela HOME deve ser mostrada
    Verificar tela Home