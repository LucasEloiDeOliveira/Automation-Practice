*** Settings ***
Resource    ${EXECDIR}\\Resources\\main.resource

***Keywords***

Verificar tela Order
    Verificar Tela    ${title}    Order - My Store

Clicar em Procced to Checkout
    Verificar Elemento    ${button_procced_checkout}
    Clicar                ${button_procced_checkout}

Clicar em Procced to Checkout na aba adress
    Verificar Elemento    ${button_procced_checkout_adress}
    Clicar                ${button_procced_checkout_adress}

Clicar em Procced to Checkout na aba shipping
    Verificar Elemento    ${button_procced_checkout_shipping}
    Clicar                ${button_procced_checkout_shipping}

Clicar em aceitar os termos de uso
    Selecionar Checkbox    ${checkbox_agree_terms}

Clicar em pagar com cartão
    Verificar Elemento    ${button_pay_by_bank_wire}
    Clicar                ${button_pay_by_bank_wire}

Clicar em confirmar compra
    Clicar    ${button_confirm_my_order}

Validar confirmação de compra
    Verificar Texto    Your order on My Store is complete.

Validar possibilidade de finalizar a compra
    Verificar Elemento    ${button_confirm_my_order}