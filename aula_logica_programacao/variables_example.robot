*** Settings ***


*** Variables ***
${NOME}            Leonardo
${IDADE}           ${38}
${PESO}            75
${ALTURA}          1,72
${ESTADO_CIVIL}    Casado

*** Test Cases ***
Variables Example
    ${IDADE}    Evaluate    ${IDADE} + ${1}
    ${PESO}    Set Variable    75
    Log To Console  \nNome: ${NOME} \nIdade: ${IDADE} \nPeso: ${PESO} \nAltura: ${ALTURA} \nEstado Civil: ${ESTADO_CIVIL}