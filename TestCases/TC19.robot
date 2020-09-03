*** Settings ***
Resource    ${EXECDIR}\\Resources\\main.resource
# Test Setup  Abrir Navegador  url=about:blank  browser=chrome
# Test Teardown  Fechar Navegador
*** Test Cases ***
Cenário 01: Garantir que ao adicionar duas peças diferentes no link +Add to compare e clicar no botão Compare, que esses produtos serão carregados na tela PRODUCT COMPARISON, que seus dados são compatíveis com o da tela anterior e que os dados comparados são diferentes de um produto para o outro
    Dado que esteja na tela HOME do site Automation Practice 
    Quando clicar no Submenu Dresses>Summer Dresses
    Então a tela de Summer Dresses de ser mostrada
    E os dados mostrados na tela são equivalentes aos produtos selecionados na tela anterior