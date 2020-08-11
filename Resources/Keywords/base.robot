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

Fechar Navegador
    Close Browser