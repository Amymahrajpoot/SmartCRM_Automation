*** Settings ***
Library         SeleniumLibrary
Resource        Contact.resource

*** Keywords ***
Search Contact
    Log To Console    <<<Searching the Contact>>>
    Click Element    ${SEARCH_BAR_XPATH}
    Input Text    ${SEARCH_BAR_XPATH}    ${SEARCH_TEXT}
    Click Element    ${SEARCH_ICON_XPATH}
    Wait Until Element Is Visible    ${SEARCHED_RECORD_XPATH}   5s

*** Test Cases ***
Verify that the user can Search Contact
    [Documentation]    Requirement: 42 - Search Contact
    [Tags]    smoke    critical
    Search Contact
