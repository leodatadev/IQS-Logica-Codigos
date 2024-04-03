*** Settings ***


*** Variables ***
${ano_nascimento}    1985
${ano_futuro}    2035


*** Test Cases ***
Teste Calcular Idade em 2035
    ${resultado}=    Evaluate    ${ano_futuro} - ${ano_nascimento}
    Log To Console    \nSua idade em 2035 será de ${resultado} anos.





