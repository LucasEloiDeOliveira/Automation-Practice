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
    Run Keyword And Ignore Error    Verificar Women>T-shirts

Todos os produtos listados são T-shirts
    Run Keyword And Ignore Error    Verificar texto T-shirts

Ao selecionar View Grid os produtos são exibidos em Grid
    Run Keyword And Ignore Error    Clicar no icone Grid
    Run Keyword And Ignore Error    Verificar selecão de Grid

Ao selecionar View List os produtos são exibidos em List
    Run Keyword And Ignore Error    Clicar no icone List
    Run Keyword And Ignore Error    Verificar selecão de List

Ao utilizar o filtro os produtos são ordenados adequadamente
    Run Keyword And Ignore Error    Verificar exibicao do combo
    Run Keyword And Ignore Error    Selecionar Sort by Price: Lowest first
    Run Keyword And Ignore Error    Verificar ordenacao dos produtos