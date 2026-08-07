*** Settings ***
Library         SeleniumLibrary
Resource        Add_Lead.resource
Resource        ../Login_Folder/Login.resource

*** Keywords ***
Email Validation
    Log To Console   <<<Validating Email on Add Lead popup>>>
    Set Selenium Speed    1s
    Click Element    ${LEADS_XPATH}
    Click Element    ${ADD_LEAD_XPATH}
    Wait Until Element Is Visible    ${LEADS_POPUP_XPATH}      timeout=10s

    Click Element    ${CREATE_RECORD_BUTTON_XPATH}
    Wait Until Element Is Visible    ${VALIDATION_MSG_XPATH}    5s
    Log To Console    <<<Lead cannot be added since Email field is empty>>>

*** Test Cases ***
Validate Empty Email Shows Error
    [Documentation]    Verifies the lead cannot be created when the Email field is left empty
    [Tags]    smoke    validation
    Email Validation