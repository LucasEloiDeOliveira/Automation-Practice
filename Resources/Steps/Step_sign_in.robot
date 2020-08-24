*** Settings ***
Resource    ${EXECDIR}\\Resources\\main.resource

***Keywords***

#### ENTÃO
A tela de login de ser mostrada
    Run Keyword And Ignore Error    Verificar tela Sign_in
### DADO

### E
O cadastro de login é realizado
    Run Keyword And Ignore Error    Iniciar criação de conta
    Run Keyword And Ignore Error    Preencher formulário de cadastro
    Run Keyword And Ignore Error    Registrar dados do formulário

É possivel realizar login com o usuario cadastrado
    Run Keyword And Ignore Error    Relogar da conta
    Run Keyword And Ignore Error    Iniciar login na conta
    Run Keyword And Ignore Error    Validar login
    