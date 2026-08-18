*** Settings ***
Library         SeleniumLibrary
Resource        Contact.resource
Resource        ../Login_Folder/Login.resource
Library    DataDriver    ../Data_Folder/Contact_Data.xlsx    sheet_name=Sheet1
Test Template      Create Contact

*** Keywords ***
Check Contact Exists
    [Arguments]    ${contact_name}
    Click Element    ${CONTACTS_OPTION_XPATH}
    Wait Until Element Is Visible    ${CONTACTS_PAGE_XPATH}
    Wait Until Element Is Visible    ${SEARCH_BAR_XPATH}    timeout=10s
    Input Text    ${SEARCH_BAR_XPATH}    ${contact_name}
    Click Element    ${SEARCH_ICON_XPATH}
    Sleep    1s
    ${count}=    Get Element Count    //a[text()='${contact_name}']
    IF    ${count} > 0
        RETURN    ${TRUE}
    ELSE
        RETURN    ${FALSE}
    END

Create Contact
    [Arguments]    ${TITLE_FIELD_TEXT}    ${FIRSTNAME_FIELD_TEXT}   ${LASTNAME_FIELD_TEXT}    ${MOBILE_CODE_TEXT}  ${MOBILE_NUMBER_TEXT}  ${PHONE_CODE_TEXT}  ${PHONE_NUMBER_TEXT}    ${EMAIL_TEXT}   ${UPDATES_TEXT}     ${ACCOUNT_NAME_TEXT}      ${MAILING_ADDRESS_TEXT}     ${OTHER_ADDRESS_TEXT}       ${DESCRIPTION_TEXT}     ${HOME_PHONE_CODE_TEXT}     ${HOME_PHONE_NUMBER_TEXT}       ${OTHER_PHONE_CODE_TEXT}     ${OTHER_PHONE_NUMBER_TEXT}     ${ASSISTANT_PHONE_CODE_TEXT}     ${ASSISTANT_PHONE_NUMBER_TEXT}     ${ASSISTANT_TEXT}       ${DEPARTMENT_TEXT}
    Log To Console    <<<Checking if Contact already exists>>>
    ${Contact_exists}=    Check Contact Exists    ${FIRSTNAME_FIELD_TEXT}

    IF    ${Contact_exists}
        Log To Console    <<<Contact "${FIRSTNAME_FIELD_TEXT}" already exists, skipping creation>>>
    ELSE
        Log To Console    <<<Contact does not exist, proceeding to create>>>
        Click Element    ${ADD_BUTTON_XPATH}
        Wait Until Element Is Visible    ${ADD_RECORD_POPUP_XPATH}    timeout=10s

        Log To Console   <<<Validating Email on Add Lead popup>>>
        Click Element    ${CREATE_BTN_XPATH}
        Wait Until Element Is Visible    ${CONTACT_EMAIL_VALIDATION_MSG_XPATH}     5s
        Log To Console    <<<Contact cannot be added since Email field is empty>>>

         Log To Console   <<<Adding Contact Information>>>
    #    Click Element    ${CONTACTS_OPTION_XPATH}
    #    Wait Until Element Is Visible    ${CONTACTS_PAGE_XPATH}     5s
    #    Click Element    ${ADD_BUTTON_XPATH}
    #    Wait Until Element Is Visible    ${ADD_RECORD_POPUP_XPATH}      5s
        Click Element    ${TITLE_FIELD_XPATH}
        Input Text    ${TITLE_FIELD_XPATH}    ${TITLE_FIELD_TEXT}
        Click Element    ${FIRST_NAME_FIELD_XPATH}
        Input Text    ${FIRST_NAME_FIELD_XPATH}    ${FIRSTNAME_FIELD_TEXT}
        Click Element    ${LAST_NAME_FIELD_XPATH}
        Input Text    ${LAST_NAME_FIELD_XPATH}    ${LASTNAME_FIELD_TEXT}
        Wait Until Element Is Visible    ${MOBILE_CODE_XPATH}       5s
        Click Element    ${MOBILE_CODE_XPATH}
        Input Text    ${MOBILE_CODE_XPATH}     ${MOBILE_CODE_TEXT}
        Click Element    ${SELECT_MOBILE_CODE_XPATH}
        Click Element    ${MOBILE_FIELD_XPATH}
        Input Text    ${MOBILE_FIELD_XPATH}    ${MOBILE_NUMBER_TEXT}
        Click Element    ${PHONE_CODE_XPATH}
        Input Text    ${PHONE_CODE_XPATH}    ${PHONE_CODE_TEXT}
        Sleep    1s
        Press Keys    ${PHONE_CODE_XPATH}    RETURN
        Click Element    ${PHONE_FIELD_XPATH}
        Input Text    ${PHONE_FIELD_XPATH}     ${PHONE_NUMBER_TEXT}
        Click Element    ${EMAIL_FIELD_XPATH}
        Input Text    ${EMAIL_FIELD_XPATH}    ${EMAIL_TEXT}
        Click Element    ${UPDATES_FIELD_XPATH}
        Input Text    ${UPDATES_FIELD_XPATH}     ${UPDATES_TEXT}
        Click Element    ${ACCOUNTNAME_DROPDOWN_XPATH}
        Input Text    ${ACCOUNTNAME_DROPDOWN_XPATH}    ${ACCOUNT_NAME_TEXT}

        ${ACCOUNT_OPTION_XPATH}=    Set Variable
        ...    xpath=//div[contains(@class,"ant-select-item-option") and normalize-space(.)="${ACCOUNT_NAME_TEXT}"]

        Wait Until Element Is Visible    ${ACCOUNT_OPTION_XPATH}    10s
        Click Element    ${ACCOUNT_OPTION_XPATH}
        Click Element    ${REPORT_TO_DROPDOWN_XPATH}
        Wait Until Element Is Visible    ${SELECT_REPORT_TO_DROPDOWN_XPATH}     5s
        Click Element    ${SELECT_REPORT_TO_DROPDOWN_XPATH}
        Click Element    ${CONTACTOWNER_DROPDOWN_XPATH}
        Wait Until Element Is Visible    ${SELECT_CONTACTOWNER_DROPDOWN_XPATH}      5s
        Click Element    ${SELECT_CONTACTOWNER_DROPDOWN_XPATH}

        Log To Console    <<<Adding Address information>>>
        Click Element    ${MAILINGADDRESS_FIELD_XPATH}
        Input Text    ${MAILINGADDRESS_FIELD_XPATH}    ${MAILING_ADDRESS_TEXT}
        Click Element    ${OTHERADDRESS_FIELD_XPATH}
        Input Text    ${OTHERADDRESS_FIELD_XPATH}    ${OTHER_ADDRESS_TEXT}

        Log To Console    <<<Adding Description information>>>
        Click Element    ${DESCRIPTION_FIELD_XPATH}
        Input Text    ${DESCRIPTION_FIELD_XPATH}    ${DESCRIPTION_TEXT}

        Log To Console    <<<Adding Additional information>>>
        Click Element    ${BIRTHDAY_CALENDAR_XPATH}
        Wait Until Element Is Visible     ${YEAR_XPATH}     5s
        Click Element    ${YEAR_XPATH}
        Click Element    ${PREV_BTN_YEAR_XPATH}
        Click Element    ${PREV_BTN_YEAR_XPATH}
        Wait Until Element Is Visible     ${SELECT_YEAR_XPATH}          5s
        Click Element    ${SELECT_YEAR_XPATH}
        Click Element    ${SELECT_MONTH_XPATH}
        Click Element    ${SELECT_DATE_XPATH}
        Click Element    ${HOMEPHONE_CODE_XPATH}
        Input Text    ${HOMEPHONE_CODE_XPATH}     ${HOME_PHONE_CODE_TEXT}
        Click Element    ${SELECT_HOMEPHONE_CODE_XPATH}
        Click Element    ${HOMEPHONE_FIELD_XPATH}
        Input Text    ${HOMEPHONE_FIELD_XPATH}     ${HOME_PHONE_NUMBER_TEXT}
        Click Element    ${OTHERPHONE_CODE_XPATH}
        Input Text    ${OTHERPHONE_CODE_XPATH}    ${OTHER_PHONE_CODE_TEXT}
        Click Element    ${SELECT_OTHERPHONE_CODE_XPATH}
        Click Element    ${OTHERPHONE_FIELD_XPATH}
        Input Text    ${OTHERPHONE_FIELD_XPATH}    ${OTHER_PHONE_NUMBER_TEXT}
        Click Element    ${ASSISTANTPHONE_CODE_XPATH}
        Input Text    ${ASSISTANTPHONE_CODE_XPATH}     ${ASSISTANT_PHONE_CODE_TEXT}
        Click Element       ${SELECT_ASSISTANTPHONE_CODE_XPATH}
        Click Element    ${ASSISTANTPHONE_FIELD_XPATH}
        Input Text    ${ASSISTANTPHONE_FIELD_XPATH}     ${ASSISTANT_PHONE_NUMBER_TEXT}
        Click Element    ${ASSISTANT_FIELD_XPATH}
        Input Text    ${ASSISTANT_FIELD_XPATH}     ${ASSISTANT_TEXT}
        Click Element    ${LAST_STAY_IN_TOIUCH_CALENDAR_XPATH}
        Sleep    2s
        Click Element    ${PREVIOUS_BTN_CALENDAR_XPATH}
        Click Element    ${PREVIOUS_BTN_CALENDAR_XPATH}
        Wait Until Element Is Visible     ${SELECT_LAST_STAY_IN_TOIUCH_CALENDAR_XPATH}      5s
        Click Element    ${SELECT_LAST_STAY_IN_TOIUCH_CALENDAR_XPATH}
        Click Element    ${DEPT_FIELD_XPATH}
        Input Text    ${DEPT_FIELD_XPATH}     ${DEPARTMENT_TEXT}
        Click Element    ${CREATE_BTN_XPATH}
        Wait Until Element Is Visible    ${CREATE_SUCCESS_MSG_XPATH}    5s
        Log To Console    <<<Contact Created Successfully!>>>
    END


*** Test Cases ***
Verfiy that the user can create the Contact using    ${TITLE_FIELD_TEXT}    ${FIRSTNAME_FIELD_TEXT}   ${LASTNAME_FIELD_TEXT}   ${MOBILE_CODE_TEXT}  ${MOBILE_NUMBER_TEXT}  ${PHONE_CODE_TEXT}  ${PHONE_NUMBER_TEXT}    ${EMAIL_TEXT}   ${UPDATES_TEXT}   ${ACCOUNT_NAME_TEXT}   ${MAILING_ADDRESS_TEXT}     ${OTHER_ADDRESS_TEXT}       ${DESCRIPTION_TEXT}     ${HOME_PHONE_CODE_TEXT}     ${HOME_PHONE_NUMBER_TEXT}       ${OTHER_PHONE_CODE_TEXT}     ${OTHER_PHONE_NUMBER_TEXT}     ${ASSISTANT_PHONE_CODE_TEXT}     ${ASSISTANT_PHONE_NUMBER_TEXT}     ${ASSISTANT_TEXT}       ${DEPARTMENT_TEXT}
    [Documentation]    Requirement: 42 - create the Contact
    [Tags]    smoke
