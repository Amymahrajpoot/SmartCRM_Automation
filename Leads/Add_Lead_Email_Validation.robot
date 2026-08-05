*** Settings ***
Resource    ../Login/Launch_Website.resource
Suite Setup       Launch Website
Suite Teardown    Close Browser

*** Variables ***
${LEADS_POPUP_XPATH}    //div[@class="ant-modal-container"]
${LEADS_XPATH}      //span[text()= 'Leads']
${ADD_LEAD_XPATH}   //span[text()='Add']
${CREATE_RECORD_BUTTON_XPATH}       //button[@class="ant-btn css-xogyor css-var-_r_0_ ant-btn-primary ant-btn-color-primary ant-btn-variant-solid"]
${VALIDATION_MSG_XPATH}             //div[text()='Please enter Email']

*** Test Cases ***
Email Validation
    [Documentation]    Add Lead Email Validation
    Log To Console   <<<Validating Email on Add Lead popup>>>
    Login
    Maximize Browser Window
    Set Selenium Speed    1s
    Click Element    ${LEADS_XPATH}
    Click Element    ${ADD_LEAD_XPATH}
    Wait Until Element Is Visible    ${LEADS_POPUP_XPATH}      timeout=10s

    Click Element    ${CREATE_RECORD_BUTTON_XPATH}
    Wait Until Element Is Visible    ${VALIDATION_MSG_XPATH}    5s
    Log To Console    <<<Lead cannot be added since Email field is empty>>>