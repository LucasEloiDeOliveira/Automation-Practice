*** Settings ***
Resource    ${EXECDIR}\\Resources\\main.resource

***Keywords***
### E
Informar os dados do usuário
    Run keyword And Continue On Failure    Verificar tela Order
    Run keyword And Continue On Failure    Clicar em Procced to Checkout
    Run keyword And Continue On Failure    Iniciar login na conta
    Run keyword And Continue On Failure    Clicar em Procced to Checkout na aba adress
    Run keyword And Continue On Failure    Clicar em aceitar os termos de uso
    Run keyword And Continue On Failure    Clicar em Procced to Checkout na aba shipping
    Run keyword And Continue On Failure    Clicar em pagar com cartão

#### ENTÃO
É possivel finalizar a compra
    Run keyword And Continue On Failure    Validar possibilidade de finalizar a compra
    Run keyword And Continue On Failure    Clicar em confirmar compra
    Run keyword And Continue On Failure    Validar confirmação de compra