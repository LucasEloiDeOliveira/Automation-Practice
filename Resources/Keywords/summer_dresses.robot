*** Settings ***
Resource    ${EXECDIR}\\Resources\\main.resource

***Keywords***

Verificar tela Summer Dresses
    Verificar Tela    ${title}    Summer Dresses - My Store

Verificar texto Catalog
    Verificar Texto    Catalog    

Verificar texto Summer Dresses
    Verificar Texto    Summer Dresses

Verificar Women>Summer Dresses
    Verificar Texto do Elemento    ${menu_bar}    Women
    Verificar Texto do Elemento    ${menu_bar}    Summer Dresses
