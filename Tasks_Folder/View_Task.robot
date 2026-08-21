*** Settings ***
Library         SeleniumLibrary
Resource       Task.resource

*** Keywords ***
view Task
    Log To Console   <<<Viewing created Task>>>
    Set Selenium Speed    0.1s
    Click Element    ${MORE_ICON_XPATH}
    Click Element    ${VIEW_XPATH}
    Wait Until Element Is Visible    ${TASKS_PAGE_XPATH}      5s
    Log To Console    <<<Task Viewed Successfully>>>

    #navigating back
    Click Element    ${BACK_ICON_XPATH}

*** Test Cases ***
Verify that the user can View Task
    [Documentation]    Requirement: 42 - View Task
    [Tags]    smoke    critical
    view Task