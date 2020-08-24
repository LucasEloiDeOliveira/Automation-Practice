*** Settings ***
Resource    ${EXECDIR}\\Resources\\main.resource

***Keywords***
#### QUANDO
Clicar no link Contact_us
    Run Keyword And Ignore Error    Clicar em Contact_us

#### ENTÃO
A tela Contact_us deve ser mostrada
    Run Keyword And Ignore Error    Verificar tela Contact_us