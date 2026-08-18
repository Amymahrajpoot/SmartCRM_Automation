*** Settings ***
Library         SeleniumLibrary
Resource        Contact.resource

*** Keywords ***
Filter Contact
    Log To Console    <<<Filter Contact from the Contacts list>>>
    Set Selenium Speed    0.1s
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

Search Contact
    Log To Console    <<<Searching the Contact>>>
    Set Selenium Speed    0.1s
    Click Element    ${SEARCH_BAR_XPATH}
    Input Text    ${SEARCH_BAR_XPATH}    ${SEARCH_TEXT}
    Click Element    ${SEARCH_ICON_XPATH}
    Wait Until Element Is Visible    ${SEARCHED_RECORD_XPATH}   5s

Add Columns
    #resetting the columns from the table settings
    Log To Console   <<<Adding Columns from the Table Settings>>>
    Set Selenium Speed    0.1s
    #Landing on the Lead Tab
    Click Element    ${CONTACTS_OPTION_XPATH}
    Click Element    ${TABLE_SETTINGS_XPATH}
    Mouse Out    ${RESET_ICON_XPATH}
    Sleep    0.5s
    ${reset_button}=    Get WebElement    ${RESET_ICON_XPATH}
    Execute Javascript    arguments[0].click()    ARGUMENTS    ${reset_button}
    Click Element    ${COLUMN_DISPLAY_XPATH}
    Click Element    ${FIRSTNAME_CHECKBOX_XPATH}
    Click Element    ${DESCRIPTION_CHECKBOX_XPATH}
    ${container1}=    Get WebElement    //div[contains(@class,'ant-tree-list-holder')]
    Execute JavaScript    arguments[0].scrollTop = arguments[0].scrollHeight;    ARGUMENTS    ${container1}
    Click Element    ${BIRTHDATE_CHECKBOX_XPATH}
    ${container2}=    Get WebElement    //div[contains(@class,'ant-tree-list-holder')]
    Execute JavaScript    arguments[0].scrollTop = arguments[0].scrollHeight;    ARGUMENTS    ${container2}
    Click Element    ${ACTIONS_CHECKBOX_XPATH}
    Click Element    ${MAIN_XPATH}

*** Test Cases ***
Verfiy that the user can Filter the Contact
    [Documentation]    Requirement: 42 - Filter Contact
    [Tags]    smoke    critical    login
    Filter Contact
    Search Contact
    Add Columns
