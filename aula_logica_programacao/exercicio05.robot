*** Settings ***


*** Variables ***
${horas_normais}    1760
${horas_extras}    400
${salario}        13500.00

*** Test Cases ***
Teste Calcular Salário Anual
    ${salario}=    Evaluate    (10 * ${horas_normais}) + (15 * ${horas_extras})
    Log To Console    \nSeu salário anual é de: R$ ${salario}




