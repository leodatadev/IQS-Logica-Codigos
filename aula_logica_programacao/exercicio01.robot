*** Settings ***


*** Variables ***
${variavel1}=    5
${variavel2}=    7

*** Test Cases ***
Teste Soma de Variáveis
    ${resultado}=    Evaluate    ${variavel1} + ${variavel2}
    Log To Console   \nResultado da soma: ${resultado}
