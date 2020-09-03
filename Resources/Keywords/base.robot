*** Keywords ***
Dado ${keyword}
    Run keyword    ${keyword}

Quando ${keyword}
    Run keyword    ${keyword}

Então ${keyword}
    Run keyword    ${keyword}

E ${keyword}
    Run keyword    ${keyword}

Abrir Navegador
    [Arguments]    ${url}    ${browser}

    Open Browser               ${url}         ${browser}
    Maximize Browser Window
    Set Selenium Speed         0.1 seconds

Verificar Tela
    [Arguments]    ${element}    ${text}

    Wait Until Element Is Visible    ${element}    5
    Title Should Be                  ${text}

Verificar Texto
    [Arguments]    ${text}

    Page Should Contain    ${text}

Verificar Texto do Elemento
    [Arguments]    ${element}    ${text}

    Wait Until Element Is Visible    ${element}    5
    Element Should Contain           ${element}    ${text}

Verificar Elemento
    [Arguments]    ${element} 

    Sleep                            2
    Wait Until Element Is Visible    ${element}    5

Verificar Status da Classe do elemento
    [Arguments]    ${element}    ${text}

    Wait Until Element Is Visible    ${element}               5
    ${class} =                       Get Element Attribute    ${element}    class
    Should Be Equal                  ${class}                 ${text}

Clicar
    [Arguments]    ${element}

    Wait Until Element Is Visible    ${element}    5
    Click Element                    ${element}

Selecionar Checkbox
    [Arguments]    ${element}

    Select Checkbox    ${element}

Posicionar Mouse
    [Arguments]    ${element}

    Wait Until Element Is Visible    ${element}    5
    Mouse Over                       ${element}

Verificar Foco
    [Arguments]    ${element}

    Wait Until Element Is Visible    ${element}    5
    Element Should Be Focused        ${element}

Selecionar Opcao no combo
    [Arguments]                  ${element}    ${option}
    Select From List By Index    ${element}    ${option}

Selecionar Opcao no combo label
    [Arguments]                  ${element}    ${label}
    Select From List By Label    ${element}    ${label}

Verificar Exibicao da Imagem
    [Arguments]                      ${element}
    Wait Until Element Is Visible    ${element}    5    Imagem não visível

Verificar Nao Exibicao da Imagem de Carregamento
    [Arguments]                          ${element}
    Wait Until Element Is Not Visible    ${element}    5    Erro no Carregamento do Filtro

Scroll Element To Location
    [Arguments]                          ${element}
    Wait Until Element Is Not Visible    ${element}    5    Elemento não encontrado
    Scroll Element Into View             ${element}

Scroll Page To Location
    [Arguments]           ${x_location}                                   ${y_location}
    Execute JavaScript    window.scrollTo(${x_location},${y_location})
    Sleep                 2

Verificar valor correto com os descontos
    [Arguments]    ${value}    ${old_value}    ${reduced}

    ${value} =    Get Text             ${value}    
    ${value} =    Remove String        ${value}    $
    ${value} =    Convert To Number    ${value}

    ${old_value} =    Get Text             ${old_value}    
    ${old_value} =    Remove String        ${old_value}    $
    ${old_value} =    Convert To Number    ${old_value}

    ${reduced} =    Get Text             ${reduced}    
    ${reduced} =    Remove String        ${reduced}    -    %
    ${reduced} =    Convert To Number    ${reduced}

    ${result} =    Evaluate                          ${reduced} * ${old_value}
    ${result} =    Evaluate                          ${result} / 100
    ${result} =    Evaluate                          ${old_value} - ${result}
    ${result} =    Convert To Number	${result}	2	

    Should Be Equal As Numbers    ${value}    ${result}

Comparar produtos
    [Arguments]    ${prod1}    ${prod2}    ${comp1}    ${comp2}    ${button_add_comp1}    ${button_add_comp2}

    Mouse Over       ${prod1}
    ${prod1} =       Get Text               ${prod1}
    Click Element    ${button_add_comp1}

    Sleep    3

    Mouse Over       ${prod2}
    ${prod2} =       Get Text               ${prod2}
    Click Element    ${button_add_comp2}

    Wait Until Element Is Visible    ${button_compare}    5    Botao não visivel
    Click Element                    ${button_compare}

    Execute JavaScript    window.scrollTo(0,300)
    
    Mouse Over    ${comp1}
    ${comp1} =    Get Text    ${comp1}

    Mouse Over    ${comp2}
    ${comp2} =    Get Text    ${comp2}

    Should Be Equal    ${prod1}    ${comp1}
    Should Be Equal    ${prod2}    ${comp2}

Selecionar Radio Button
    [Arguments]      ${element}    
    Sleep            4
    Click Element    ${element}

Preencher Campo
    [Arguments]      ${element}    ${text}
    Click Element    ${element}
    Input text       ${element}    ${text}

Adiciona produto ao carrinho
    [Arguments]    ${product}    ${add_product}    ${action}

    Mouse Over    ${product}

    Click Element    ${add_product}

    Wait Until Element Is Visible    ${action}    5    Botao não visivel
    Click Element                    ${action}

Fechar Navegador
    Close Browser