*** Settings ***


*** Variables ***
${NOME}    Leonardo

*** Test Cases ***
If Example
    IF  "${NOME}" == "Breno"
        Log To Console   Bem vindo! ${NOME}
    ELSE
        Log To Console   Acesso Negado! ${NOME}
    END
    