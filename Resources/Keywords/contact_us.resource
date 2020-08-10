*** Settings ***
Resource    ${EXECDIR}\\Resources\\main.resource

*** Keywords ***

Clicar em Contact_us
    Clicar    ${link_contact_us}

Verificar tela Contact_us
    Verificar Tela    ${title}    Contact us - My Store

