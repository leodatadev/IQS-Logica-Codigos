*** Settings ***


*** Variables ***
${CELSIUS}    ${30}


*** Test Cases ***
Exercicio 6
    ${resultado}    Evaluate    ${CELSIUS} * 1.8 + 32   #Conversão de graus Celsius para Fahrenheit
    Log To Console    A temperatura em Fahrenheit: ${resultado}º.