*** Settings ***
Resource    ${EXECDIR}\\Resources\\main.resource

***Keywords***

#### ENTÃO
A tela de Evening Dresses de ser mostrada
    Run keyword And Continue On Failure    Verificar tela Evening Dresses

A tela de catalogo de ser mostrada
    Run keyword And Continue On Failure    Verificar texto Catalog

### AND

Todos os produtos listados são Evening Dresses femininas
    Run keyword And Continue On Failure    Verificar Women>Evening Dresses