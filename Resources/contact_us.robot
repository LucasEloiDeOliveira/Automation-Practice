*** Settings ***
Library    SeleniumLibrary

Resource    ../Base/base.robot

Resource    ../Pages/contact_us.robot

*** Variable ***

*** Keywords ***

Clicar em Contact_us
    Clicar    ${link_contact_us}

Verificar tela Contact_us
    Verificar Tela    ${title}    Contact us - My Store

