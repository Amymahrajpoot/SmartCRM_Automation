*** Settings ***
Library         SeleniumLibrary
Resource        Task.resource

*** Keywords ***
Filter Task
    Log To Console    <<<Filter Task from the Tasks list>>>
    Set Selenium Speed    0.1s
    Wait Until Element Is Visible    ${FILTERS_BUTTON_XPATH}        5s
    Click Element    ${FILTERS_BUTTON_XPATH}
    Wait Until Element Is Visible    ${ADVANCED_FILTERS_POPUP_XPATH}    5s
    Click Element    ${ADD_CONDITION_BUTTON_XPATH}
    Click Element    ${FIELD_DROPDOWN_XPATH} 
    Click Element    ${SELECT_FIELD_XPATH}
    Click Element    ${CONDITION_DROPDOWN_XPATH} 
    Click Element    ${SELECT_CONDITION_XPATH} 
    Click Element    ${FIRST_FILTER_INPUT_XPATH}
    Input Text    ${FIRST_FILTER_INPUT_XPATH}    ${FIRST_FILTER_INPUT_TEXT}
    Click Element    ${ADD_CONDITION_BUTTON_XPATH}
    Click Element    ${SELECT_ASSIGNED_PERSON_DROPDOWN_XPATH}
    Click Element    ${SELECT_ASSIGNED_PERSON_XPATH}
    Click Element    ${APPLY_BUTTON_XPATH}
    Wait Until Element Is Visible    ${FILTERED_ROW_XPATH}  5s
    Log To Console    <<<Row filtered successfully!>>>

Search Task
    Log To Console    <<<Searching the Task>>>
    Click Element    ${SEARCH_BAR_XPATH}
    Input Text    ${SEARCH_BAR_XPATH}    ${SEARCH_TEXT}
    Click Element    ${SEARCH_ICON_XPATH}
    Wait Until Element Is Visible    ${SEARCHED_RECORD_XPATH}   5s

Add Columns

    
*** Test Cases ***
Verify that the user can filter the task
    [Documentation]    Requirement: 42 - Filter Task
    [Tags]    smoke    critical
    Filter Task

Verify that the user can search the task
    [Documentation]    Requirement: 42 - Search task
    [Tags]    smoke    critical
    Search task

