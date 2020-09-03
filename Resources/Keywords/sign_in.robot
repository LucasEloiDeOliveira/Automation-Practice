*** Settings ***
Resource    ${EXECDIR}\\Resources\\main.resource

***Keywords***

Verificar tela Sign_in
    Verificar Tela    ${title}    Login - My Store

Iniciar criação de conta
    Preencher Campo    ${field_create_email}    ${create_email}
    Clicar             ${button_create}

Iniciar criação de conta na compra
    Preencher Campo    ${field_create_email}    ${create_email_buy}
    Clicar             ${button_create}

Iniciar login na conta
    Preencher Campo    ${field_email}       ${exist_login_email}
    Preencher Campo    ${field_password}    ${exist_login_password}
    Clicar             ${button_login}

Iniciar recuperação de senha
    Clicar    ${link_forgot_passw}

Preencher formulário de cadastro
    Selecionar Radio Button      ${radio_gender}            
    Preencher Campo              ${textfield_first_name}    ${first_name}
    Preencher Campo              ${textfield_last_name}     ${last_name}
    Preencher Campo              ${textfield_password}      ${password}
    Selecionar Opcao no combo    ${select_date}             ${date}
    Selecionar Opcao no combo    ${select_month}            ${month}
    Selecionar Opcao no combo    ${select_year}             ${year}

    Preencher Campo    ${adress_textfield_first_name}    ${adress_first_name}
    Preencher Campo    ${adress_textfield_last_name}     ${adress_last_name}
    Preencher Campo    ${adress_textfield_company}       ${adress_company}
    Preencher Campo    ${adress_textfield_adress}        ${adress_adress}
    Preencher Campo    ${adress_textfield_adress2}       ${adress_adress2}
    Preencher Campo    ${adress_textfield_city}          ${adress_city}

    Selecionar Opcao no combo    ${adress_select_state}                        ${state}
    Preencher Campo              ${adress_textfield_zipPostal}                 ${zip_Postal}
    Selecionar Opcao no combo    ${adress_select_country}                      ${country}
    Preencher Campo              ${adress_textfield_additional_information}    ${add_Information}
    Preencher Campo              ${adress_textfield_home_phone}                ${home_phone}
    Preencher Campo              ${adress_textfield_mobile_phone}              ${mobile_phone}
    Preencher Campo              ${adress_textfield_adress_reference}          ${adress_reference}

Registrar dados do formulário
    Clicar    ${button_register}

Relogar da conta
    Clicar    ${button_sign_out}
    Clicar    ${link_sign_in}

Deslogar da conta
    Clicar    ${button_sign_out}

Validar login
    Verificar Elemento    ${link_user}

