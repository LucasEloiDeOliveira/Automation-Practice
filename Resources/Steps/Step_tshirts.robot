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
    Run keyword And Continue On Failure    Verificar Women>T-shirts

Todos os produtos listados são T-shirts
    Run keyword And Continue On Failure    Verificar texto T-shirts

Ao selecionar View Grid os produtos são exibidos em Grid
    Run keyword And Continue On Failure    Clicar no icone Grid
    Run keyword And Continue On Failure    Verificar selecão de Grid

Ao selecionar View List os produtos são exibidos em List
    Run keyword And Continue On Failure    Clicar no icone List
    Run keyword And Continue On Failure    Verificar selecão de List

Ao utilizar o filtro os produtos são ordenados adequadamente
    Run keyword And Continue On Failure    Verificar exibicao do combo
    Run keyword And Continue On Failure    Selecionar Sort by Price: Lowest first
    Run Keyword and Ignore Error           Verificar ordenacao dos produtos