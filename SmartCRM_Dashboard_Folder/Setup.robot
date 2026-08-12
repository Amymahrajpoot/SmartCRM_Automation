*** Settings ***
Library         SeleniumLibrary
Resource        Dashboard.resource

*** Keywords ***
Setup
    Log To Console    <<<Accessing options from the setup>>>
    Set Selenium Speed    0.5s
    Click Element    ${SETUP_ICON_XPATH}
    Wait Until Element Is Visible    ${SETUP_POPUP_XPATH}       5s
    Click Element    ${CONFG_DROPDOWN_XPATH}
    Click Element    ${COLLECTIONS_XPATH}
    Wait Until Element Is Visible    ${COLLECTIONS_PAGE_XPATH}      5s
    Click Element    ${OPTIONSETS_XPATH}
    Wait Until Element Is Visible    ${OPTIONSETS_PAGE_XPATH}      5s
    Click Element    ${USERS_XPATH}
    Wait Until Element Is Visible    ${USERS_PAGE_XPATH}      5s
    Click Element    ${ROLES_XPATH}
    Wait Until Element Is Visible    ${ROLES_PAGE_XPATH}      5s

*** Test Cases ***
Verify the the user can access the setup options
    [Documentation]    Requirement: 42 - Access Setup options
    [Tags]    smoke    critical
    Setup
