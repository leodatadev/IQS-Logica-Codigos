*** Settings ***


*** Variables ***
@{LISTA_VEICULOS}    carro     barco    avião    moto    submarino


*** Test Cases ***
List Example
    Log To Console    \nSegundo item da lista: ${LISTA_VEICULOS}[1]
    FOR  ${veiculo}  IN  @{LISTA_VEICULOS}
        Log To Console    \nVeiculo: ${veiculo}
    
    END
    