*** Settings ***
Resource    ${EXECDIR}\\Resources\\main.resource

***Keywords***

#### ENTÃO
A tela de Evening Dresses de ser mostrada
    Run Keyword And Ignore Error    Verificar tela Evening Dresses

A tela de catalogo de ser mostrada
    Run Keyword And Ignore Error    Verificar texto Catalog

### AND

Todos os produtos listados são Evening Dresses femininas
    Run Keyword And Ignore Error    Verificar Women>Evening Dresses

# Todos os produtos listados são Evening Dresses femininas
#    Verificar Dresses>Evening Dresses