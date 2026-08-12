*** Settings ***
Library         SeleniumLibrary
Resource        Dashboard.resource

*** Keywords ***
Full Screen
    Log To Console    <<<fitting screen to full screen>>>
    Click Element    ${FULL_SCREEN_XPATH}
    Log To Console    <<<existing full screen>>>
    Click Element    ${EXIST_FULL_SCREEN_XPATH} 

*** Test Cases ***
Verify that the user can fit the screen to full screen and exist the full screen.
    [Documentation]    Requirement: 42 - Full Screen
    [Tags]    smoke    critical
    Full Screen
