*** Settings ***
Library         SeleniumLibrary
Resource        Contact.resource
Resource        ../Login_Folder/Login.resource

*** Keywords ***
Email Validation
    Log To Console   <<<Validating Email on Add Lead popup>>>
    Set Selenium Speed    0.5s
    Click Element    ${CONTACTS_OPTION_XPATH}
    Click Element    ${ADD_BUTTON_XPATH}
    Wait Until Element Is Visible    ${ADD_RECORD_POPUP_XPATH}      timeout=10s

    Click Element    ${CREATE_BTN_XPATH}
    Wait Until Element Is Visible    ${CONTACT_EMAIL_VALIDATION_MSG_XPATH}     5s
    Log To Console    <<<Contact cannot be added since Email field is empty>>>

*** Test Cases ***
Verfiy that the user can not create the Contact without entering the Email
    [Documentation]    Valiadte Email on Contacts popup
    [Tags]    smoke    validation
    Email Validation