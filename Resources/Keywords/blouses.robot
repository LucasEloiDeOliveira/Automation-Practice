*** Settings ***
Resource    ${EXECDIR}\\Resources\\main.resource

***Keywords***

Verificar tela Blouses
    Verificar Tela    ${title}    Blouses - My Store

Verificar texto Catalog
    Verificar Texto    Catalog    

Verificar texto Blouses
    Verificar Texto    Blouses

Verificar Women>Blouses
    Verificar Texto do Elemento    ${menu_bar}    Women
    Verificar Texto do Elemento    ${menu_bar}    Blouses
