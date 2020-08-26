*** Settings ***
Resource    ${EXECDIR}\\Resources\\main.resource

***Keywords***
### QUANDO
Criar uma ordem de compra de 6 produtos de categorias diferentes
    Run keyword And Continue On Failure  Criar uma ordem de compra de 2 produtos Summer Dresses
    Run keyword And Continue On Failure  Criar uma ordem de compra de 2 produtos Evening Dresses
    Run keyword And Continue On Failure  Criar uma ordem de compra de 2 produtos Casual Dresses

Criar uma ordem de compra de 9 produtos de categorias diferentes
    Run keyword And Continue On Failure  Criar uma ordem de compra de 3 produtos Summer Dresses
    Run keyword And Continue On Failure  Criar uma ordem de compra de 3 produtos Evening Dresses
    Run keyword And Continue On Failure  Criar uma ordem de compra de 3 produtos Casual Dresses

### E
Informar os dados do usuário descadastrado
    Run keyword And Continue On Failure    Verificar tela Order
    Run keyword And Continue On Failure    Clicar em Procced to Checkout

    Run keyword And Continue On Failure    Iniciar criação de conta
    Run keyword And Continue On Failure    Preencher formulário de cadastro
    Run keyword And Continue On Failure    Registrar dados do formulário

    Run keyword And Continue On Failure    Clicar em Procced to Checkout na aba adress
    Run keyword And Continue On Failure    Clicar em aceitar os termos de uso
    Run keyword And Continue On Failure    Clicar em Procced to Checkout na aba shipping
    Run keyword And Continue On Failure    Clicar em pagar com cartão

Informar os dados do usuário deslogado
    Run keyword And Continue On Failure    Verificar tela Order
    Run keyword And Continue On Failure    Clicar em Procced to Checkout

    Run keyword And Continue On Failure    Iniciar login na conta
    
    Run keyword And Continue On Failure    Clicar em Procced to Checkout na aba adress
    Run keyword And Continue On Failure    Clicar em aceitar os termos de uso
    Run keyword And Continue On Failure    Clicar em Procced to Checkout na aba shipping
    Run keyword And Continue On Failure    Clicar em pagar com cartão

Informar os dados do usuário logado
    Run keyword And Continue On Failure    Verificar tela Order
    Run keyword And Continue On Failure    Clicar em Procced to Checkout
    
    Run keyword And Continue On Failure    Clicar em Procced to Checkout na aba adress
    Run keyword And Continue On Failure    Clicar em aceitar os termos de uso
    Run keyword And Continue On Failure    Clicar em Procced to Checkout na aba shipping
    Run keyword And Continue On Failure    Clicar em pagar com cartão

Fazer o checkout dos produtos pelo carrinho
    Run keyword And Continue On Failure    Clicar no Cart > Check out

#### ENTÃO
É possivel finalizar a compra
    Run keyword And Continue On Failure    Validar possibilidade de finalizar a compra
    Run keyword And Continue On Failure    Clicar em confirmar compra
    Run keyword And Continue On Failure    Validar confirmação de compra