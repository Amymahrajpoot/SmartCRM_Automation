*** Settings ***
Library         SeleniumLibrary
Resource        Dashboard.resource
Resource        ../Leads_Folder/Lead.resource

*** Keywords ***
Add Columns
    #resetting the columns from the table settings
    Log To Console   <<<Adding Columns from the Table Settings>>>
    Set Selenium Speed    1s
    #Landing on the Lead Tab
    Click Element    ${LEADS_XPATH}
    Click Element    ${TABLE_SETTINGS_XPATH}
    Click Element    ${NAME_CHECKBOX_XPATH}
    Click Element    ${MOBILE_CHECKBOX_XPATH}
    ${container}=    Get WebElement    //div[contains(@class,'ant-tree-list-holder')]
    Execute JavaScript    arguments[0].scrollTop = arguments[0].scrollHeight;    ARGUMENTS    ${container}
    Click Element    ${NOTES_CHECKBOX_XPATH}
    Click Element    ${RESET_ICON_XPATH}

*** Test Cases ***
Add Columns Successfully
    [Documentation]    Requirement: 42 - Add
    [Tags]    smoke    critical
    Add Columns
