*** Settings ***
Resource    ${EXECDIR}\\Resources\\main.resource

***Keywords***

### DADO
Que esteja no catologo de produtos no site Automation Practice
    Run Keyword And Ignore Error    Acessar site Automation Practice
    Run Keyword And Ignore Error    Clicar no Submenu Dresses>Summer Dresses

### QUANDO
    Run Keyword And Ignore Error    Criar uma ordem de compra

#### ENTÃO
A tela de Summer Dresses de ser mostrada
    Run Keyword And Ignore Error    Verificar tela Summer Dresses

A tela de catalogo de ser mostrada
    Run Keyword And Ignore Error    Verificar texto Catalog

### AND

Todos os produtos listados são Summer Dresses femininas
    Run Keyword And Ignore Error    Verificar Women>Summer Dresses

O valor do produto com desconto está correto 5%
    Run Keyword And Ignore Error    Verificar valor correto do produto com desconto 5%

O valor do produto com desconto está correto 20%
    Run Keyword And Ignore Error    Verificar valor correto do produto com desconto 20%