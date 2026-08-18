*** Settings ***
Library         SeleniumLibrary
Resource        Dashboard.resource

*** Keywords ***
Logout
    Log To Console    <<<Logging out of the application>>>
    Click Element       ${PROFILE_ICON_XPATH}
    Click Element    ${LOGOUT_BTN_XPATH}
    Wait Until Element Is Visible    ${LOGIN_PAGE_XPATH}        5s

*** Test Cases ***
Verify that the user can Logout of the application
    [Documentation]    Requirement: 42 - Logout
    [Tags]    smoke    critical
    Logout
