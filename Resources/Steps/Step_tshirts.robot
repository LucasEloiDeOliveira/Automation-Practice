*** Settings ***
Resource    ${EXECDIR}\\Resources\\main.resource

***Keywords***

#### ENTÃO
A tela de t-shirts de ser mostrada
    Verificar tela T-shirts

A tela de catalogo de ser mostrada
    Verificar texto Catalog

### AND

Todos os produtos listados são T-shirts femininas
    Verificar Women>T-shirts