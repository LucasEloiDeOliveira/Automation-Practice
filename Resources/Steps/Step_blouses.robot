*** Settings ***
Resource    ${EXECDIR}\\Resources\\main.resource

***Keywords***

#### ENTÃO
A tela de Blouses de ser mostrada
    Run keyword And Continue On Failure    Verificar tela Blouses

A tela de catalogo de ser mostrada
    Run keyword And Continue On Failure    Verificar texto Catalog

### AND

Todos os produtos listados são Blouses femininas
    Run keyword And Continue On Failure    Verificar Women>Blouses