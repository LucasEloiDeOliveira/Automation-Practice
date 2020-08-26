*** Settings ***
Resource    ${EXECDIR}\\Resources\\main.resource

***Keywords***

#### ENTÃO
A tela de Summer Products Comparison - My Store
    Run keyword And Continue On Failure    Verificar tela Products Comparison - My Store
### AND

Os dados mostrados na tela são equivalentes aos produtos selecionados na tela anterior
    Run keyword And Continue On Failure    Comparar os produtos
