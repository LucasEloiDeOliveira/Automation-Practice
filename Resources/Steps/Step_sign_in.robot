*** Settings ***
Resource    ${EXECDIR}\\Resources\\main.resource

***Keywords***

#### ENTÃO
A tela de login de ser mostrada
    Run Keyword And Ignore Error    Verificar tela Sign_in

É possivel realizar o login com o usuario cadastrado
    Run Keyword And Ignore Error    Relogar da conta
    Run Keyword And Ignore Error    Iniciar login na conta
    Run Keyword And Ignore Error    Validar login
    Run Keyword And Ignore Error    Deslogar da conta

É possivel realizar o login com a senha recuperada
    Run Keyword And Ignore Error    Clicar em Sign_in
    Run Keyword And Ignore Error    Iniciar login na conta
    Run Keyword And Ignore Error    Validar login
    Run Keyword And Ignore Error    Deslogar da conta

### QUANDO
Clicar em esqueci a senha
    Run Keyword And Ignore Error    Iniciar recuperação de senha

### E
O cadastro de login é realizado
    Run Keyword And Ignore Error    Iniciar criação de conta
    Run Keyword And Ignore Error    Preencher formulário de cadastro
    Run Keyword And Ignore Error    Registrar dados do formulário


    