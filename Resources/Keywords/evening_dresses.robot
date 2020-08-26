*** Settings ***
Resource    ${EXECDIR}\\Resources\\main.resource

***Keywords***

Verificar tela Evening Dresses
    Verificar Tela    ${title}    Evening Dresses - My Store

Verificar texto Catalog
    Verificar Texto    Catalog    

Verificar texto Evening Dresses
    Verificar Texto    Evening Dresses

Verificar Women>Evening Dresses
    Verificar Texto do Elemento    ${menu_bar}    Women
    Verificar Texto do Elemento    ${menu_bar}    Evening Dresses
