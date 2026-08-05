*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}                 http://172.16.2.87/login
${BROWSER}             Chrome
#Locators
${EMAIL_FIELD_XPATH}          //input[@id='email']
${PASSWORD_FIELD_XPATH}      //input[@id='password']
${LOGIN_BUTTON_XPATH}        //button[@type="submit"]
${SUCCESS_ELEMENT_XPATH}     //*[contains(text(),'Login successful!')]
${VALID_EMAIL}         it.teammobile01@gmail.com
${VALID_PASSWORD}      Bss@1234
*** Keywords ***
Launch Website
    [Documentation]    Opens the browser and navigates to the target website
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Wait Until Element Is Visible    tag:body    timeout=10s
    Sleep    5s

Login
   [Documentation]    Logs in with valid credentials
    Wait Until Element Is Visible    ${EMAIL_FIELD_XPATH}    timeout=10s
    Click Element    ${EMAIL_FIELD_XPATH}
    Press Keys    ${EMAIL_FIELD_XPATH}    CTRL+a    BACKSPACE
    Input Text    ${EMAIL_FIELD_XPATH}    ${VALID_EMAIL}
    Click Element    ${PASSWORD_FIELD_XPATH}
    Press Keys    ${PASSWORD_FIELD_XPATH}    CTRL+a    BACKSPACE
    Input Password    ${PASSWORD_FIELD_XPATH}    ${VALID_PASSWORD}
    Click Element    ${LOGIN_BUTTON_XPATH}
    Wait Until Element Is Visible    ${SUCCESS_ELEMENT_XPATH}    timeout=5s