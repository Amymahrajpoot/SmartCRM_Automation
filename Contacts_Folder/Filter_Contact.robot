*** Settings ***
Library         SeleniumLibrary
Resource        Contact.resource

*** Keywords ***
Filter Contact
    Log To Console    <<<Filter Contact from the Contacts list>>>
    Set Selenium Speed    0.5s
    Click Element    ${FILTER_BTN_XPATH} 
    Wait Until Element Is Visible    ${FILTER_POPUP_XPATH}          5s
    Click Element    ${ADD_CONDITION_BTN_XPATH} 
    Click Element    ${TITLE_DROPDOWN_XPATH}
    Scroll Element Into View    ${SELECT_TITLE_XPATH} 
    Click Element    ${SELECT_TITLE_XPATH} 
    Click Element    ${CONDITION_DROPDOWN_XPATH}
    Click Element    ${SELECT_CONDITION_XPATH}
    Click Element    ${ENTER_VALUE_XPATH}
    Input Text    ${ENTER_VALUE_XPATH}    ${ENTER_VALUE_TEXT}
    Click Element    ${ADD_CONDITION_BTN_XPATH}
    Click Element    ${SECOND_TITLE_DROPDOWN_XPATH} 
    Click Element    ${SELECT_SECOND_TITLE_XPATH} 
    Click Element    ${SECOND_VALUE_ENTER_XPATH}  
    Input Text    ${SECOND_VALUE_ENTER_XPATH}      ${ENTER_SECOND_VALUE_TEXT}
    Click Element    ${APPLY_FILTER_BTN_XPATH}  
    Wait Until Element Is Visible    ${FILTERED_ROW_XPATH}      5s
    Log To Console    <<<Row filtered successfully!>>>

*** Test Cases ***
Verfiy that the user can Filter the Contact
    [Documentation]    Requirement: 42 - Filter Contact
    [Tags]    smoke    critical    login
    Filter Contact
