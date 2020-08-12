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

    Open Browser               ${url}    ${browser}
    Maximize Browser Window

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

Verificar Exibicao da Imagem
    [Arguments]                      ${element}
    Wait Until Element Is Visible    ${element}    5    Imagem não visível

Verificar Nao Exibicao da Imagem de Carregamento
    [Arguments]                          ${element}
    Wait Until Element Is Not Visible    ${element}    5    Erro no Carregamento do Filtro

Scroll Page To Location
    [Arguments]           ${x_location}                                   ${y_location}
    Execute JavaScript    window.scrollTo(${x_location},${y_location})
    Sleep                 2

Verificar valor correto com os descontos
    [Arguments] ${value}    ${old_value}    ${percentage}

    ${result} = Evaluate    (${percentage}*${old_value}) / 100.0
    Should Be Equal         ${value}                                ${result}


Fechar Navegador
    Close Browser