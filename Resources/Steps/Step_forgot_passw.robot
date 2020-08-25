*** Settings ***
Resource    ${EXECDIR}\\Resources\\main.resource

***Keywords***

### E
Recuperar a senha
    Run Keyword And Ignore Error    Enviar email de recuperação de senha
    Run Keyword And Ignore Error    Validar email de recuperação de senha enviado com sucesso


    