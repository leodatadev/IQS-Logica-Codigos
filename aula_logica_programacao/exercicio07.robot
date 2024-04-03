*** Settings ***

*** Variables ***
${dividendo}=    10
${divisor}=    3

*** Test Cases ***
Calcular Divisão
    ${quociente}=    Evaluate    int(${dividendo} / ${divisor})
    ${resto}=    Evaluate    ${dividendo} % ${divisor}

    Log To Console   \nDividendo: ${dividendo}
    Log To Console   \nDivisor: ${divisor}
    Log To Console   \nQuociente: ${quociente}
    Log To Console   \nResto: ${resto}