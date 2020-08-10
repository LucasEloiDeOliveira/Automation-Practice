*** Settings ***
Resource    ${EXECDIR}\\Resources\\main.resource

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

Clicar em Contact_us
    Clicar    ${link_contact_us}

Clicar em Sign_in
    Clicar    ${link_sign_in}

Clicar no Logo
    Clicar    ${link_logo}

Clicar no Menu Women
    Clicar    ${menu_women}

Clicar no Submenu Women>T-shirts
    Posicionar Mouse    ${menu_women}
    Clicar              ${women_submenu_tshirts}

Clicar no Submenu Women>Blouses
    Posicionar Mouse    ${menu_women}
    Clicar              ${women_submenu_blouses}
