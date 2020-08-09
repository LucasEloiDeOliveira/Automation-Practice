*** Settings ***
Resource    ${CURDIR}../Resource/main.resource

*** Keywords ***

Clicar em Sign in
    Clicar    ${link_contact_us}

Verificar tela Contact_us
    Verificar Tela    ${title}    Contact us - My Store

