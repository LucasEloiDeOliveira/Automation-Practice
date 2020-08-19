*** Settings ***
Resource    ${EXECDIR}\\Resources\\main.resource

***Keywords***

#### ENTÃO
A tela de Summer Dresses de ser mostrada
    Verificar tela Summer Dresses

A tela de catalogo de ser mostrada
    Verificar texto Catalog

### AND

Todos os produtos listados são Summer Dresses femininas
    Verificar Women>Summer Dresses

O valor do produto com desconto está correto 5%
    Verificar valor correto do produto com desconto 5%

O valor do produto com desconto está correto 20%
    Verificar valor correto do produto com desconto 20%