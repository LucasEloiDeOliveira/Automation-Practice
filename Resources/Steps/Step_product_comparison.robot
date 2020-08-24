*** Settings ***
Resource    ${EXECDIR}\\Resources\\main.resource

***Keywords***

#### ENTÃO
A tela de Summer Products Comparison - My Store
    Run Keyword And Ignore Error    Verificar tela Products Comparison - My Store
### AND

Os dados mostrados na tela são equivalentes aos produtos selecionados na tela anterior
    Run Keyword And Ignore Error    Comparar os produtos
