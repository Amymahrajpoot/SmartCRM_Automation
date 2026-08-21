*** Settings ***
Library         SeleniumLibrary
Resource        Lead.resource

*** Keywords ***
Filter Lead
    Log To Console    <<<Filter Lead from the leads list>>>
    Wait Until Element Is Visible    ${FILTERS_BUTTON_XPATH}        5s
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


Search Lead
    Log To Console    <<<Searching the Lead>>>
    Click Element    ${SEARCH_BAR_XPATH}
    Input Text    ${SEARCH_BAR_XPATH}    ${SEARCH_TEXT}
    Click Element    ${SEARCH_ICON_XPATH}
    Wait Until Element Is Visible    ${SEARCHED_RECORD_XPATH}   5s

Add Columns
    #resetting the columns from the table settings
    Log To Console   <<<Adding Columns from the Table Settings>>>
    #Landing on the Lead Tab
#   Click Element    ${LEADS_XPATH}
    Click Element    ${TABLE_SETTINGS_XPATH}
    Mouse Out        ${RESET_ICON_XPATH}
    Sleep    0.5s
    ${reset_button}=    Get WebElement    ${RESET_ICON_XPATH}
    Execute Javascript    arguments[0].click()    ARGUMENTS    ${reset_button}
    Click Element    ${COLUMN_DISPLAY_XPATH}
    Click Element    ${COLUMN_DISPLAY_XPATH}
    Click Element    ${NAME_CHECKBOX_XPATH}
    Click Element    ${MOBILE_CHECKBOX_XPATH}
    ${container1}=    Get WebElement    //div[contains(@class,'ant-tree-list-holder')]
    Execute JavaScript    arguments[0].scrollTop = arguments[0].scrollHeight;    ARGUMENTS    ${container1}
    Click Element    ${NOTES_CHECKBOX_XPATH}
    ${container2}=    Get WebElement    //div[contains(@class,'ant-tree-list-holder')]
    Execute JavaScript    arguments[0].scrollTop = arguments[0].scrollHeight;    ARGUMENTS    ${container2}
    Click Element    ${ACTIONS_CHECKBOX_XPATH}
    Click Element    ${MAIN_XPATH}

Pagination
    Log To Console    <<<Applying Pagination>>>
    Set Selenium Speed    0.1s
#    Click Element    ${NEXT_ARROW_XPATH}
#    Click Element    ${PREV_ARROW_XPATH}
    Click Element    ${ROW_PER_PAGE_XPATH}
    Wait Until Element Is Visible    ${SELECT_ROW_PER_PAGE_XPATH}
    Click Element    ${SELECT_ROW_PER_PAGE_XPATH}

Full Screen
    Log To Console    <<<fitting screen to full screen>>>
    Click Element    ${FULL_SCREEN_XPATH}
    Log To Console    <<<existing full screen>>>
    Click Element    ${EXIST_FULL_SCREEN_XPATH}

*** Test Cases ***
Verify that the user can apply pagination on the leads table
    [Documentation]    Requirement: 42 - Pagination
    [Tags]    smoke    critical
    Pagination

Verify that the user can filter the lead
    [Documentation]    Requirement: 42 - Filter lead
    [Tags]    smoke    critical
    Filter Lead

Verify that the user can search the lead
    [Documentation]    Requirement: 42 - Search lead
    [Tags]    smoke    critical
    Search Lead

Verify that the user can add columns from table settings
    [Documentation]    Requirement: 42 - Add columns
    [Tags]    smoke    critical
    Add Columns

Verify that the user can fit the screen to full screen and exist the full screen.
    [Documentation]    Requirement: 42 - Full Screen
    [Tags]    smoke    critical
    Full Screen