*** Settings ***
Resource    ${EXECDIR}\\Resources\\main.resource

*** Keywords ***
Acessar site Automation Practice
    Go to    http://automationpractice.com/

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

Clicar no Submenu Women>Casual Dresses
    Posicionar Mouse    ${menu_women}
    Clicar              ${women_submenu_casual_dresses}

Clicar no Submenu Women>Evening Dresses
    Posicionar Mouse    ${menu_women}
    Clicar              ${women_submenu_evening_dresses}

Clicar no Submenu Women>Summer Dresses
    Posicionar Mouse    ${menu_women}
    Clicar              ${women_submenu_summer_dresses}

Clicar no Submenu Dresses>Casual Dresses
    Posicionar Mouse    ${menu_dresses}
    Clicar              ${dresses_submenu_casual_dresses}

Clicar no Submenu Dresses>Evening Dresses
    Posicionar Mouse    ${menu_dresses}
    Clicar              ${dresses_submenu_evening_dresses}

Clicar no Submenu Dresses>Summer Dresses
    Posicionar Mouse    ${menu_dresses}
    Clicar              ${dresses_submenu_summer_dresses}
