*** Settings ***
Resource    ${EXECDIR}\\Resources\\main.resource

***Keywords***

### E
Recuperar a senha
    Run keyword And Continue On Failure    Enviar email de recuperação de senha
    Run keyword And Continue On Failure    Validar email de recuperação de senha enviado com sucesso


    