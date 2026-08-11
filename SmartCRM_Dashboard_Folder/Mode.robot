*** Settings ***
Library         SeleniumLibrary
Resource        Dashboard.resource

*** Keywords ***
Setting Mode
    Set Selenium Speed    1s
    Log To Console    <<<Setting mode to the dark>>>
    Click Element       ${DARH_MODE_XPATH}
    Log To Console    <<<Setting mode to the light>>>
    Click Element       ${LIGHT_MODE_XPATH}

*** Test Cases ***
Setting the Mode
    [Documentation]    Requirement: 42 - Set Mode
    [Tags]    smoke    critical
    Setting Mode
