*** Settings ***
Library         SeleniumLibrary
Resource        Lead.resource
Resource        ../Login_Folder/Login.resource

*** Keywords ***
Email Validation
    Log To Console   <<<Validating Email on Add Lead popup>>>
    Set Selenium Speed    0.5s
    Click Element    ${LEADS_XPATH}
    Click Element    ${ADD_LEAD_XPATH}
    Wait Until Element Is Visible    ${LEADS_POPUP_XPATH}      timeout=10s

    Click Element    ${CREATE_RECORD_BUTTON_XPATH}
    Wait Until Element Is Visible    ${LEAD_EMAIL_VALIDATION_MSG_XPATH}    5s
    Log To Console    <<<Lead cannot be added since Email field is empty>>>

*** Test Cases ***
Verfiy that the user can not create the Lead without entering the Email
    [Documentation]    Valiadte Email on Lead popup
    [Tags]    smoke    validation
    Email Validation