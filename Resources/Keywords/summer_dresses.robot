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

Verificar valor correto do produto com desconto 5%
    Scroll Page To Location                     0                   600
    Verificar Elemento                          ${icon_list}
    Clicar                                      ${icon_list} 
    Verificar valor correto com os descontos    ${valor_produto}    ${valor_antigo}    ${desconto}

Verificar valor correto do produto com desconto 20%
    Scroll Page To Location                     0                     1000
    Verificar Elemento                          ${icon_list}
    Clicar                                      ${icon_list} 
    Verificar valor correto com os descontos    ${valor_produto20}    ${valor_antigo20}    ${desconto20}

Criar uma ordem de compra com 1 produto
    Adiciona produto ao carrinho    ${product1}    ${button_add_product1}    ${button_procced_to_checkout}

Criar uma ordem de compra com 2 produtos
    Adiciona produto ao carrinho    ${product1}    ${button_add_product1}    ${button_continue_shopping}
    Adiciona produto ao carrinho    ${product1}    ${button_add_product1}    ${button_continue_shopping}

Criar uma ordem de compra com 3 produtos
    Adiciona produto ao carrinho    ${product1}    ${button_add_product1}    ${button_continue_shopping}
    Adiciona produto ao carrinho    ${product1}    ${button_add_product1}    ${button_continue_shopping}
    Adiciona produto ao carrinho    ${product1}    ${button_add_product1}    ${button_continue_shopping}
