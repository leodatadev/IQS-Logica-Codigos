*** Settings ***


*** Variables ***
${aluno}    Leonardo
${disciplina}    Matematica


*** Test Cases ***
Teste Calcular Média
    ${nota1}=    Set Variable    7.5
    ${nota2}=    Set Variable    8.0
    ${nota3}=    Set Variable    6.5
    ${nota4}=    Set Variable    9.0
    ${media}=    Evaluate    (${nota1} + ${nota2} + ${nota3} + ${nota4}) / 4
    Log To Console    \nMédia do Aluno ${aluno} na disciplina ${disciplina} é: ${media}
