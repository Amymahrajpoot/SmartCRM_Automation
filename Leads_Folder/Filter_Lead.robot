*** Settings ***
Library         SeleniumLibrary
Resource        Lead.resource

*** Keywords ***
Filter Lead
    Log To Console    <<<Filter Lead from the leads list>>>
    Click Element    ${FILTERS_BUTTON_XPATH} 
    Wait Until Element Is Visible    ${ADVANCED_FILTERS_POPUP_XPATH}    5s
    Click Element    ${ADD_OR_DROPDOWN_XPATH} 
    Click Element    ${SELECT_ADD_OR_XPATH}  
    Click Element    ${ADD_CONDITION_BUTTON_XPATH} 
    Click Element    ${FIRST_FILTER_INPUT_XPATH}
    Input Text    ${FIRST_FILTER_INPUT_XPATH}    ${FIRST_FILTER_INPUT_TEXT}
    Click Element    ${ADD_CONDITION_BUTTON_XPATH}
    Click Element    ${TITLE_DROPDOWN_XPATH} 
    Click Element    ${SELECT_TITLE_XPATH}
    Click Element    ${CONDITION_DROPDOWN_XPATH}
    Click Element    ${SELECT_CONDITION_XPATH}  
    Click Element    ${SECOND_FILTER_INPUT_XPATH}
    Input Text    ${SECOND_FILTER_INPUT_XPATH}    ${SECOND_FILTER_INPUT_TEXT} 
    Click Element    ${APPLY_BUTTON_XPATH}
    Wait Until Element Is Visible    ${FILTERED_ROW_XPATH}      5s
    Log To Console    <<<Row filtered successfully!>>>

*** Test Cases ***
Verfiy that the user can Filter the Lead
    [Documentation]    Requirement: 42 - Filter lead
    [Tags]    smoke    critical    login
    Filter Lead