*** Settings ***
Resource    ${EXECDIR}\\Resources\\main.resource

***Keywords***

Verificar tela T-shirts
    Verificar Tela    ${title}    T-shirts - My Store

Verificar texto Catalog
    Verificar Texto    Catalog    

Verificar texto T-shirts
    Verificar Texto    T-shirts 

Verificar Women>T-shirts
    Verificar Texto do Elemento    ${menu_bar}    Women
    Verificar Texto do Elemento    ${menu_bar}    T-shirts
