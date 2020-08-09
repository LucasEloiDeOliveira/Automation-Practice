*** Settings ***
Resource    ${CURDIR}../Resource/main.resource

***Keywords***
#### QUANDO
Clicar no link Contact_us
    Clicar em Contact_us

#### ENTÃO
A tela Contact_us deve ser mostrada
    Verificar tela Contact_us