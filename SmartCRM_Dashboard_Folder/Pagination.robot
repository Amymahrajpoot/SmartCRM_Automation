*** Settings ***
Library         SeleniumLibrary
Resource        Dashboard.resource

*** Keywords ***
Pagination
    Log To Console    <<<Applying Pagination>>>
    Click Element    ${ROW_PER_PAGE_XPATH}
    Wait Until Element Is Visible    ${SELECT_ROW_PER_PAGE_XPATH}
    Click Element    ${SELECT_ROW_PER_PAGE_XPATH}

*** Test Cases ***
Pagination applied Successfully
    [Documentation]    Requirement: 42 - Pagination
    [Tags]    smoke    critical
    Pagination
