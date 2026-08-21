*** Settings ***
Library         SeleniumLibrary
Resource        Dashboard.resource

*** Keywords ***
Setting Mode
    Log To Console    <<<Setting mode to the dark>>>
    Click Element       ${DARH_MODE_XPATH}
    Log To Console    <<<Setting mode to the light>>>
    Click Element       ${LIGHT_MODE_XPATH}

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

Logout
    Log To Console    <<<Logging out of the application>>>
    Click Element       ${PROFILE_ICON_XPATH}
    Click Element    ${LOGOUT_BTN_XPATH}
    Wait Until Element Is Visible    ${LOGIN_PAGE_XPATH}        5s

*** Test Cases ***
Verify that the user can change the mode of the application
    [Documentation]    Requirement: 42 - Set Mode
    [Tags]    smoke    critical
    Setting Mode

Verify the the user can access the setup options
    [Documentation]    Requirement: 42 - Access Setup options
    [Tags]    smoke    critical
    Setup

Verify that the user can Logout of the application
    [Documentation]    Requirement: 42 - Logout
    [Tags]    smoke    critical
    Logout