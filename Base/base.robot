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
    [Arguments]    ${title}    ${text}

    Wait Until Element Is Visible    ${title}    5
    Title Should Be                  ${text}

Clicar
    [Arguments]    ${element}

    Wait Until Element Is Visible    ${element}    5
    Click Element                    ${element}

Fechar Navegador
    Close Browser