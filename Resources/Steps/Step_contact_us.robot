*** Settings ***
Resource    ${EXECDIR}\\Resources\\main.resource

***Keywords***
#### QUANDO
Clicar no link Contact_us
    Run keyword And Continue On Failure    Clicar em Contact_us

#### ENTÃO
A tela Contact_us deve ser mostrada
    Run keyword And Continue On Failure    Verificar tela Contact_us