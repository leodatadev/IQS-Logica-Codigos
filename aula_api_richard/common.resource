*** Settings ***

Library    Collections
Library    RequestsLibrary
Library    JSONLibrary

*** Variables ***

${BASE_URL}      https://restful-booker.herokuapp.com

${CONTRACT_DIR}       ${CURDIR}/contracts
${PAYLOAD_DIR}        ${CURDIR}/payloads

*** Keywords ***
Validate Json
    [Arguments]    ${response}    ${filename}
    Validate Json By Schema File    ${response.json()}    ${CONTRACT_DIR}${/}${filename}

POST /auth
    [Arguments]    ${filename}
    ${body}    Load Json From File    ${PAYLOAD_DIR}${/}${filename}
    ${response}    POST    url=${BASE_URL}/auth    json=${body}
    RETURN    ${response}

Wrapper POST /auth
    ${response}    POST /auth    PostAuthValid.json
    ${TOKEN}    Set Variable    ${response.json()}[token]
    Set Test Variable    ${TOKEN}

GET /booking
    ${response}    GET    url=${BASE_URL}/booking
    RETURN    ${response}

GET /booking/${id}
    ${response}    GET    url=${BASE_URL}/booking/${id}
    RETURN    ${response}

PUT /booking/${id}
    [Arguments]    ${filename}    ${TOKEN}=
    ${body}    Load Json From File    ${PAYLOAD_DIR}${/}${filename}
    ${headers}    Create Dictionary    Cookie=token\=${TOKEN}
    ${response}    PUT    url=${BASE_URL}/booking/${id}    json=${body}    headers=${headers}
    RETURN    ${response}


Select Random BookingId From Json
    [Arguments]    ${response}
    ${bookingid}    Evaluate    random.choice($response.json())['bookingid']    modules=random
    RETURN    ${bookingid}
