*** Settings ***
Library         SeleniumLibrary
Resource        Table_Settings.resource

*** Keywords ***
Add Columns
    Log To Console   <<<Adding Columns from the Table Settings>>>
    Set Selenium Speed    1s
    Click Element    ${TABLE_SETTINGS_XPATH}
    Click Element    ${NAME_CHECKBOX_XPATH}
    Click Element    ${MOBILE_CHECKBOX_XPATH}
    ${container}=    Get WebElement    //div[contains(@class,'ant-tree-list-holder')]
    Execute JavaScript    arguments[0].scrollTop = arguments[0].scrollHeight;    ARGUMENTS    ${container}
    Click Element    ${NOTES_CHECKBOX_XPATH}

*** Test Cases ***
Columns added Successfully
    [Documentation]    Requirement: 42 - View lead
    [Tags]    smoke    critical
    Add Columns