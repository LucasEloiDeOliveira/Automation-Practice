*** Settings ***
Resource    ${EXECDIR}\\Resources\\main.resource

***Keywords***
### QUANDO
Criar uma ordem de compra de 1 produtos Evening Dresses
    Run keyword And Continue On Failure    Criar uma ordem de compra com 1 produto

Criar uma ordem de compra de 2 produtos Evening Dresses
    Run keyword And Continue On Failure    Clicar no Submenu Dresses>Evening Dresses
    Run keyword And Continue On Failure    Criar uma ordem de compra com 2 produtos

Criar uma ordem de compra de 3 produtos Evening Dresses
    Run keyword And Continue On Failure    Clicar no Submenu Dresses>Evening Dresses
    Run keyword And Continue On Failure    Criar uma ordem de compra com 3 produtos

#### ENTÃO
A tela de Evening Dresses de ser mostrada
    Run keyword And Continue On Failure    Verificar tela Evening Dresses

A tela de catalogo de ser mostrada
    Run keyword And Continue On Failure    Verificar texto Catalog

### AND

Todos os produtos listados são Evening Dresses femininas
    Run keyword And Continue On Failure    Verificar Women>Evening Dresses