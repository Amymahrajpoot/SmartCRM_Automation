*** Settings ***
Library         SeleniumLibrary
Resource        Contact.resource
Resource        ../Leads_Folder/Lead.resource

*** Keywords ***
Add Columns
    #resetting the columns from the table settings
    Log To Console   <<<Adding Columns from the Table Settings>>>
    Set Selenium Speed    0.5s
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
    ${container}=    Get WebElement    //div[contains(@class,'ant-tree-list-holder')]
    Execute JavaScript    arguments[0].scrollTop = arguments[0].scrollHeight;    ARGUMENTS    ${container}
    Click Element    ${BIRTHDATE_CHECKBOX_XPATH}

    

*** Test Cases ***
Verify that the user can add Contact Columns from the Table Settings
    [Documentation]    Requirement: 42 - Add Contact Columns
    [Tags]    smoke    critical
    Add Columns
