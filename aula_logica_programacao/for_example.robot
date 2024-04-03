*** Settings ***


*** Variables ***
${NUMERO_LOUCAS}    ${5}
    
*** Test Cases ***
Lava Louças
    FOR    ${i}    IN RANGE  ${NUMERO_LOUCAS}
        Log To Console    \nUma louça foi lavada
        ${remaining}    Evaluate    ${NUMERO_LOUCAS} - ${i} - 1
        Log To Console    \nRestam ${remaining} louças
    END