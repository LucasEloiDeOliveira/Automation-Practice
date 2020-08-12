*** Settings ***
Resource    ${EXECDIR}\\Resources\\main.resource

***Keywords***

#### ENTÃO
A tela de t-shirts de ser mostrada
    Verificar tela T-shirts

A tela de catalogo de ser mostrada
    Verificar texto Catalog

### QUANDO
Clicar no menu T-shirts
    Clicar em T-shirts

### AND

Todos os produtos listados são T-shirts femininas
    Verificar Women>T-shirts

Todos os produtos listados são T-shirts
    Verificar texto T-shirts

Ao selecionar View Grid os produtos são exibidos em Grid
    Clicar no icone Grid
    Verificar selecão de Grid

Ao selecionar View List os produtos são exibidos em List
    Clicar no icone List
    Verificar selecão de List

Ao utilizar o filtro os produtos são ordenados adequadamente
    Verificar exibicao do combo
    Selecionar Sort by Price: Lowest first
    Verificar ordenacao dos produtos