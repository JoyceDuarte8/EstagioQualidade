*** Settings ***
Library                                SeleniumLibrary

*** Variables ***
${URL}                                 https://wcaquino.me/selenium/componentes.html
${TEXT_HEADER_CAMPO_DE_TREINAMENTO}    //h3[contains(.,'Campo de Treinamento')]


*** Keywords ***
Abrir o navegador
    Open Browser                     browser=chrome
    Maximize Browser Window

Fechar o navegador
#                                      Capture Page Screenshot
    Close Browser

Acessar a home page do site wcaquino
    Go to                            url=${URL}
    Wait Until Element Is Visible    locator=${TEXT_HEADER_CAMPO_DE_TREINAMENTO}

Verificar se aparece a frase "Campo de treinamento"
    Wait Until Element Is Visible    ${TEXT_HEADER_CAMPO_DE_TREINAMENTO}

Preencher nome com ${NOME}
    Input text                       locator=elementosForm:nome                     text=${NOME}
    #Wait Until Element Is Visible       locator=//input[contains(@name,elementosForm:nome)]

Preencher sobrenome com ${NOME}
    Input text                       locator=elementosForm:sobrenome                text=${NOME}
    #Wait Until Element Is Visible       locator=//input[contains(@name,elementosForm:sobrenome)]

Preencher sexo com ${SEXO}
    Select Radio Button              group_name=elementosForm:sexo                  value=${SEXO}

Selecionar checkbox ${NOME}
    Select Checkbox                  locator=//input[contains(@value,'${NOME}')]

Selecionar escolaridade ${ESCOLARIDADE}
    Select From List By Value        elementosForm:escolaridade                     ${ESCOLARIDADE}

Selecionar esporte ${ESPORTE}
    Select From List By Value        elementosForm:esportes                         ${ESPORTE}

Preencher sugestoes ${TEXTO}
    Input text                       elementosForm:sugestoes                        ${TEXTO}

Clicar em confirmar
    Click Button                     elementosForm:cadastrar

Verificar texto Nome: ${TEXTO}
    Element Should Contain           descNome                                       ${TEXTO}

Verificar texto Sobrenome: ${TEXTO}
    Element Should Contain           descSobrenome                                  ${TEXTO}

Verificar texto Sexo: ${TEXTO}
    Element Should Contain           descSexo                                       ${TEXTO}

Verificar texto Comida: ${TEXTO}
    Element Should Contain           descComida                                     ${TEXTO}

Verificar texto Escolaridade: ${TEXTO}
    Element Should Contain           descEscolaridade                               ${TEXTO}

Verificar texto Esportes: ${TEXTO}
    Element Should Contain           descEsportes                                   ${TEXTO}

Verificar texto Sugestoes: ${TEXTO}
    Element Should Contain           descSugestoes                                  ${TEXTO}

# # GHERKIN STEPS

# Dado que estou na home page do wcaquino.me
#                                      Acessar a home page do site wcaquino
#                                      Verificar se aparece a frase "Campo de treinamento"

# Quando prencher o campo nome de "Maria"
#                                      Preencher nome

# Então o campo de nome deve ficar "Maria"
#                                      Verificar se preencheu o nome "${NOME}"

# E no campo "Maria" deve ser mostrado na página




