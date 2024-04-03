*** Settings ***


*** Variables ***
${NUMERO1}    ${10}
${NUMERO2}    ${5}


*** Test Cases ***
Math Examples
    ${resultado}    Set Variable    ${${NUMERO1} + ${NUMERO2}}
    Log To Console    \nResultado(${NUMERO1} +  ${NUMERO2}): ${resultado}
    Log To Console    \nSoma: ${3 + 2}
    Log To Console    \nSubtração: ${10 - 2}
    Log To Console    \nMultiplicação: ${20 * 5}
    Log To Console    \nDivisão: ${10 / 5}
    Log To Console    \nResto: ${10 % 2}