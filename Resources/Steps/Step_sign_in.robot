*** Settings ***
Resource    ${EXECDIR}\\Resources\\main.resource

***Keywords***

#### ENTÃO
A tela de login de ser mostrada
    Run keyword And Continue On Failure    Verificar tela Sign_in

É possivel realizar o login com o usuario cadastrado
    Run keyword And Continue On Failure    Relogar da conta
    Run keyword And Continue On Failure    Iniciar login na conta
    Run keyword And Continue On Failure    Validar login
    Run keyword And Continue On Failure    Deslogar da conta

É possivel realizar o login com a senha recuperada
    Run keyword And Continue On Failure    Clicar em Sign_in
    Run keyword And Continue On Failure    Iniciar login na conta
    Run keyword And Continue On Failure    Validar login
    Run keyword And Continue On Failure    Deslogar da conta

### QUANDO
Clicar em esqueci a senha
    Run keyword And Continue On Failure    Iniciar recuperação de senha

### E
O cadastro de login é realizado
    Run keyword And Continue On Failure    Iniciar criação de conta
    Run keyword And Continue On Failure    Preencher formulário de cadastro
    Run keyword And Continue On Failure    Registrar dados do formulário


    