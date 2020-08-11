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

Clicar no icone Grid
    Verificar Elemento    ${icon_grid}
    Clicar                ${icon_grid}

Clicar no icone List
    Verificar Elemento    ${icon_list}
    Clicar                ${icon_list}

Verificar selecão de Grid
    Verificar Elemento                        ${products_list_grid}
    Verificar Status da Classe do elemento    ${products_list_grid}    product_list grid row

Verificar selecão de List
    Verificar Elemento                        ${products_list_grid}
    Verificar Status da Classe do elemento    ${products_list_grid}    product_list row list
