*** Settings ***
Library    SeleniumLibrary


*** Variables ***
### Dados de configuração ###
${URL}      https://www.saucedemo.com/v1/
${BROWSER}  Chrome

*** Keywords ***


*** Test Cases ***
TC001 - Realizar login com usuário válido
    Open Browser    url=${URL}    browser=${BROWSER}
    Maximize Browser Window
    Input Text    id:user-name    standard_user
    Input Password    id:password    secret_sauce
    Click Button    class:btn_action
    
    