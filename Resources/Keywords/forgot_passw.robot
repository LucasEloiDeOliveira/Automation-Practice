*** Settings ***
Resource    ${EXECDIR}\\Resources\\main.resource

***Keywords***

Verificar tela Forgot your password
    Verificar Tela    ${title}    Forgot your password - My Store

Enviar email de recuperação de senha
    Preencher Campo    ${field_forgot_passw_email}    ${login_email}
    Clicar             ${button_retrieve_passw}

Validar email de recuperação de senha enviado com sucesso
    Verificar Texto    A confirmation email has been sent to your address: