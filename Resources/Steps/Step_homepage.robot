*** Settings ***
Resource    ${EXECDIR}\\Resources\\main.resource

***Keywords***

#### DADO
Que esteja na tela HOME do site Automation Practice
    Run keyword And Continue On Failure    Acessar site Automation Practice

Que esteja na tela LOGIN do site Automation Practice
    Run keyword And Continue On Failure    Acessar site Automation Practice
    Run keyword And Continue On Failure    Clicar em Sign_in

#### QUANDO
Clicar no link GET SAVINGS NOW
    Run keyword And Continue On Failure    Clicar em GET SAVINGS NOW

Clicar no link Sign in
    Run keyword And Continue On Failure    Clicar em Sign_in

#### ENTÃO
A tela HOME deve ser mostrada
    Run keyword And Continue On Failure    Verificar tela Home