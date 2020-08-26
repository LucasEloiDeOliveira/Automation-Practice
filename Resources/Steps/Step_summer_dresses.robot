*** Settings ***
Resource    ${EXECDIR}\\Resources\\main.resource

***Keywords***

### DADO
Que esteja no catologo de produtos no site Automation Practice
    Run keyword And Continue On Failure    Acessar site Automation Practice
    Run keyword And Continue On Failure    Clicar no Submenu Dresses>Summer Dresses

### QUANDO
Criar uma ordem de compra de 1 produtos
    Run keyword And Continue On Failure    Criar uma ordem de compra com 1 produto

Criar uma ordem de compra de 2 produtos
    Run keyword And Continue On Failure    Criar uma ordem de compra com 2 produtos

Criar uma ordem de compra de 3 produtos
    Run keyword And Continue On Failure    Criar uma ordem de compra com 3 produtos

#### ENTÃO
A tela de Summer Dresses de ser mostrada
    Run keyword And Continue On Failure    Verificar tela Summer Dresses

A tela de catalogo de ser mostrada
    Run keyword And Continue On Failure    Verificar texto Catalog

### AND

Todos os produtos listados são Summer Dresses femininas
    Run keyword And Continue On Failure    Verificar Women>Summer Dresses

O valor do produto com desconto está correto 5%
    Run keyword And Continue On Failure    Verificar valor correto do produto com desconto 5%

O valor do produto com desconto está correto 20%
    Run keyword And Continue On Failure    Verificar valor correto do produto com desconto 20%