*** Settings ***
Resource    Launch_Website.resource
Suite Setup       Launch Website


*** Variables ***
${INVALID_EMAIL}       it.teammobile02@gmail.com
${INVALID_PASSWORD}    Bss@1234

#Locators
${EMAIL_FIELD_XPATH}          //input[@id='email']
${PASSWORD_FIELD_XPATH}      //input[@id='password']
${LOGIN_BUTTON_XPATH}        //button[@type="submit"]
${ERROR_MESSAGE_XPATH}       //*[contains(text(),'Login failed')]

*** Test Cases ***

Invalid Login
    [Documentation]    Logs in with incorrect credentials and verifies an error message appears
    Maximize Browser Window
    Wait Until Element Is Visible    ${EMAIL_FIELD_XPATH}    timeout=10s
    Input Text    ${EMAIL_FIELD_XPATH}    ${INVALID_EMAIL}
    Input Password    ${PASSWORD_FIELD_XPATH}    ${INVALID_PASSWORD}
    Click Element    ${LOGIN_BUTTON_XPATH}
    Wait Until Element Is Visible    ${ERROR_MESSAGE_XPATH}    timeout=10s
    Element Should Be Visible    ${ERROR_MESSAGE_XPATH}
    Sleep    5s
    Log    Error message displayed as expected
