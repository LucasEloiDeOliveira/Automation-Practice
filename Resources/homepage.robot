*** Settings ***
Resource    ${CURDIR}../Resource/main.resource

*** Variable ***
${browser}    chrome
${url}        http://automationpractice.com/


*** Keywords ***
Acessar site Automation Practice
    Abrir Navegador    ${url}    ${browser}

Verificar tela Home
    Verificar Tela    ${title}    My Store

Clicar em GET SAVINGS NOW
    Clicar    ${header_get_savings_now}