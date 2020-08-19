*** Settings ***
Resource    ${EXECDIR}\\Resources\\main.resource

***Keywords***

Verificar tela Products Comparison - My Store
    Verificar Tela    ${title}    Products Comparison - My Store

Comparar os produtos
    
    Scroll Page To Location  0  900
    Comparar produtos    ${product1}    ${product2}    ${product_comp_1}    ${product_comp_2}    ${add_comparison_1}    ${add_comparison_2}