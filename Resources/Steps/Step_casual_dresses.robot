*** Settings ***
Resource    ${EXECDIR}\\Resources\\main.resource

***Keywords***

#### ENTÃO
A tela de Casual Dresses de ser mostrada
    Run keyword And Continue On Failure    Verificar tela Casual Dresses

A tela de catalogo de ser mostrada
    Run keyword And Continue On Failure    Verificar texto Catalog

### AND

Todos os produtos listados são Casual Dresses femininas
    Run keyword And Continue On Failure    Verificar Women>Casual Dresses
