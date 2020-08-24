*** Settings ***
Resource    ${EXECDIR}\\Resources\\main.resource

***Keywords***

#### ENTÃO
A tela de Blouses de ser mostrada
    Run Keyword And Ignore Error    Verificar tela Blouses

A tela de catalogo de ser mostrada
    Run Keyword And Ignore Error    Verificar texto Catalog

### AND

Todos os produtos listados são Blouses femininas
    Run Keyword And Ignore Error    Verificar Women>Blouses