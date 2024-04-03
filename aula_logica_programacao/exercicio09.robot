*** Settings ***


*** Variables ***
${distancia_percorrida}=    300   # Em km
${combustivel_gasto}=   50    # Em litros

*** Test Cases ***
Calcular Consumo Médio
    ${consumo_medio}=    Evaluate    ${distancia_percorrida} / ${combustivel_gasto}
    Log To Console   \nO consumo médio do carro é: ${consumo_medio} km/l
