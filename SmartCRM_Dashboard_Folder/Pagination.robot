*** Settings ***
Library         SeleniumLibrary
Resource        Dashboard.resource

*** Keywords ***
Pagination
    Log To Console    <<<Applying Pagination>>>
    Set Selenium Speed    0.5s
    Click Element    ${NEXT_ARROW_XPATH}
    Click Element    ${PREV_ARROW_XPATH}
    Click Element    ${ROW_PER_PAGE_XPATH}
    Wait Until Element Is Visible    ${SELECT_ROW_PER_PAGE_XPATH}
    Click Element    ${SELECT_ROW_PER_PAGE_XPATH}

*** Test Cases ***
Verify that the user can access the Pagination
    [Documentation]    Requirement: 42 - Pagination
    [Tags]    smoke    critical
    Pagination
