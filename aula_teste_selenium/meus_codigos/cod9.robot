*** Settings ***
Library    SeleniumLibrary

Test Setup       Run Keywords
...              Open Browser    url=${URL}    browser=${BROWSER}    AND
...              Maximize Browser Window
Test Teardown    Close Browser

*** Variables ***
### Dados de configuração ###
${URL}        https://www.saucedemo.com/v1/
${BROWSER}    chrome

### Massa de teste ###
${USUARIO_VALIDO}      standard_user
${USUARIO_INVALIDO}    locked_out_user
${SENHA}               secret_sauce

### Page Object Model (POM) ###
&{LOGIN_PAGE}
...    UsernameInput=id:user-name
...    PasswordInput=xpath://input[@name='password']
...    LoginButton=css:[class=btn_action]

*** Keywords ***
Realizar login com ${username} e ${password}
    Input Text       ${LOGIN_PAGE.UsernameInput}    ${username}
    Input Text       ${LOGIN_PAGE.PasswordInput}    ${password}
    Click Element    ${LOGIN_PAGE.LoginButton}


*** Test Cases ***
TC001 - Realizar login com usuário válido
    Open Browser    url=${URL}    browser=${BROWSER}
    Maximize Browser Window
    Realizar login com ${USUARIO_VALIDO} e ${SENHA}
    Close Browser

TC002 - Realizar login com usuário invalido
    Open Browser    url=${URL}    browser=${BROWSER}
    Maximize Browser Window
    Realizar login com ${USUARIO_INVALIDO} e ${SENHA}
    Close Browser