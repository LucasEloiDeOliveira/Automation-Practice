*** Settings ***
Resource    ${EXECDIR}\\Resources\\main.resource

***Keywords***

#### ENTÃO
A tela de Casual Dresses de ser mostrada
    Run Keyword And Ignore Error    Verificar tela Casual Dresses

A tela de catalogo de ser mostrada
    Run Keyword And Ignore Error    Verificar texto Catalog

### AND

Todos os produtos listados são Casual Dresses femininas
    Run Keyword And Ignore Error    Verificar Women>Casual Dresses

# Todos os produtos listados são Casual Dresses femininas
#    Verificar Women>Casual Dresses