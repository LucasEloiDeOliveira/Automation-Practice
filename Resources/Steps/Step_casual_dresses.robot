*** Settings ***
Resource    ${EXECDIR}\\Resources\\main.resource

***Keywords***
### DADO
Que esteja no catologo de produtos casual dresses no site Automation Practice
    Run keyword And Continue On Failure    Clicar no Submenu Dresses>Casual Dresses

#### ENTÃO
A tela de Casual Dresses de ser mostrada
    Run keyword And Continue On Failure    Verificar tela Casual Dresses

A tela de catalogo de ser mostrada
    Run keyword And Continue On Failure    Verificar texto Catalog

### QUANDO
Criar uma ordem de compra de 1 produtos Casual Dresses
    Run keyword And Continue On Failure    Criar uma ordem de compra com 1 produto

Criar uma ordem de compra de 2 produtos Casual Dresses
    Run keyword And Continue On Failure    Clicar no Submenu Dresses>Casual Dresses
    Run keyword And Continue On Failure    Criar uma ordem de compra com 2 produtos

Criar uma ordem de compra de 3 produtos Casual Dresses
    Run keyword And Continue On Failure    Clicar no Submenu Dresses>Casual Dresses
    Run keyword And Continue On Failure    Criar uma ordem de compra com 3 produtos

### AND

Todos os produtos listados são Casual Dresses femininas
    Run keyword And Continue On Failure    Verificar Women>Casual Dresses
