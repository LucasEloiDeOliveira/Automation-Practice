*** Settings ***
Resource    ${EXECDIR}\\Resources\\main.resource

***Keywords***

Verificar tela Casual Dresses
    Verificar Tela    ${title}    Casual Dresses - My Store

Verificar texto Catalog
    Verificar Texto    Catalog    

Verificar texto Casual Dresses
    Verificar Texto    Casual Dresses

Verificar Women>Casual Dresses
    Verificar Texto do Elemento    ${menu_bar}    Women
    Verificar Texto do Elemento    ${menu_bar}    Casual Dresses
