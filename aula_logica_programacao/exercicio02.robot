*** Settings ***


*** Variables ***
${numero}    ${10}


*** Test Cases ***
Teste Sucessor e Antecessor
    ${sucessor}=    Evaluate    ${numero} + 1
    ${antecessor}=    Evaluate    ${numero} - 1
    Log To Console  \nSucessor: ${sucessor}
    Log To Console  \nAntecessor: ${antecessor}
