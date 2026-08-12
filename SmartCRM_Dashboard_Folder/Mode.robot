*** Settings ***
Library         SeleniumLibrary
Resource        Dashboard.resource

*** Keywords ***
Setting Mode
    Set Selenium Speed    0.5s
    Log To Console    <<<Setting mode to the dark>>>
    Click Element       ${DARH_MODE_XPATH}
    Log To Console    <<<Setting mode to the light>>>
    Click Element       ${LIGHT_MODE_XPATH}

*** Test Cases ***
Verify that the user can change the mode of the application
    [Documentation]    Requirement: 42 - Set Mode
    [Tags]    smoke    critical
    Setting Mode
