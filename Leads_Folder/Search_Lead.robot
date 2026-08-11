*** Settings ***
Library         SeleniumLibrary
Resource        Lead.resource

*** Keywords ***
Search Lead
    Log To Console    <<<Searching the Lead>>>
    Click Element    ${SEARCH_BAR_XPATH}
    Input Text    ${SEARCH_BAR_XPATH}    ${SEARCH_TEXT}
    Click Element    ${SEARCH_ICON_XPATH}
    Wait Until Element Is Visible    ${SEARCHED_RECORD_XPATH}   5s

*** Test Cases ***
Lead Searhced Successfully
    [Documentation]    Requirement: 42 - View lead
    [Tags]    smoke    critical
    Search Lead
