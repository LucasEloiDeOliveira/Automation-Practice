*** Settings ***
Resource    ${CURDIR}../Resources/main.resource
Resource    ${CURDIR}../Resources/contact_us.resource

***Keywords***
#### QUANDO
Clicar no link Contact_us
    Clicar em Contact_us

#### ENTÃO
A tela Contact_us deve ser mostrada
    Verificar tela Contact_us