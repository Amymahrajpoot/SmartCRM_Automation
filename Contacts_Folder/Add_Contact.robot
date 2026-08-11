*** Settings ***
Library         SeleniumLibrary
Resource        Contact.resource
Resource        ../Login_Folder/Login.resource
Library    DataDriver    ../Data/Contact_Data.xlsx    sheet_name=Sheet1
Test Template      Create Contact

*** Keywords ***
Create Contact
    [Arguments]    ${TITLE_FIELD_TEXT}    ${FIRSTNAME_FIELD_TEXT}   ${LASTNAME_FIELD_TEXT}    ${MOBILE_CODE_TEXT}  ${MOBILE_NUMBER_TEXT}  ${PHONE_CODE_TEXT}  ${PHONE_NUMBER_TEXT}    ${EMAIL_TEXT}   ${UPDATES_TEXT}     ${MAILING_ADDRESS_TEXT}     ${OTHER_ADDRESS_TEXT}       ${DESCRIPTION_TEXT}     ${HOME_PHONE_CODE_TEXT}     ${HOME_PHONE_NUMBER_TEXT}       ${OTHER_PHONE_CODE_TEXT}     ${OTHER_PHONE_NUMBER_TEXT}     ${ASSISTANT_PHONE_CODE_TEXT}     ${ASSISTANT_PHONE_NUMBER_TEXT}     ${ASSISTANT_TEXT}       ${DEPARTMENT_TEXT}
    Set Selenium Speed    0.5s
    Log To Console   <<<Adding Contact Information>>>
    Click Element    ${CONTACTS_OPTION_XPATH}
    Wait Until Element Is Visible    ${CONTACTS_PAGE_XPATH}     5s
    Click Element    ${ADD_BUTTON_XPATH}
    Wait Until Element Is Visible    ${ADD_RECORD_POPUP_XPATH}      5s
    Click Element    ${TITLE_FIELD_XPATH}
    Input Text    ${TITLE_FIELD_XPATH}    ${TITLE_FIELD_TEXT}
    Click Element    ${FIRST_NAME_FIELD_XPATH}
    Input Text    ${FIRST_NAME_FIELD_XPATH}    ${FIRSTNAME_FIELD_TEXT}
    Click Element    ${LAST_NAME_FIELD_XPATH}
    Input Text    ${LAST_NAME_FIELD_XPATH}    ${LASTNAME_FIELD_TEXT}
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
    Click Element    ${SELECT_ACCOUNTNAME_DROPDOWN_XPATH}
    Click Element    ${REPORT_TO_DROPDOWN_XPATH}
    Click Element    ${SELECT_REPORT_TO_DROPDOWN_XPATH}
    Click Element    ${CONTACTOWNER_DROPDOWN_XPATH}
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
    Click Element    ${YEAR_XPATH}
    Click Element    ${PREV_BTN_YEAR_XPATH}
    Click Element    ${PREV_BTN_YEAR_XPATH}
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
    Click Element    ${PREVIOUS_BTN_CALENDAR_XPATH}
    Click Element    ${PREVIOUS_BTN_CALENDAR_XPATH}
    Click Element    ${SELECT_LAST_STAY_IN_TOIUCH_CALENDAR_XPATH} 
    Click Element    ${DEPT_FIELD_XPATH} 
    Input Text    ${DEPT_FIELD_XPATH}     ${DEPARTMENT_TEXT}
    Click Element    ${CREATE_BTN_XPATH}
    Wait Until Element Is Visible    ${CREATE_SUCCESS_MSG_XPATH}    5s
    Log To Console    <<<Contact Created Successfully!>>>


*** Test Cases ***
Create Contact using    ${TITLE_FIELD_TEXT}    ${FIRSTNAME_FIELD_TEXT}   ${LASTNAME_FIELD_TEXT}   ${MOBILE_CODE_TEXT}  ${MOBILE_NUMBER_TEXT}  ${PHONE_CODE_TEXT}  ${PHONE_NUMBER_TEXT}    ${EMAIL_TEXT}   ${UPDATES_TEXT}     ${MAILING_ADDRESS_TEXT}     ${OTHER_ADDRESS_TEXT}       ${DESCRIPTION_TEXT}     ${HOME_PHONE_CODE_TEXT}     ${HOME_PHONE_NUMBER_TEXT}       ${OTHER_PHONE_CODE_TEXT}     ${OTHER_PHONE_NUMBER_TEXT}     ${ASSISTANT_PHONE_CODE_TEXT}     ${ASSISTANT_PHONE_NUMBER_TEXT}     ${ASSISTANT_TEXT}       ${DEPARTMENT_TEXT}
    [Documentation]    Requirement: 42 - create the Contact
    [Tags]    smoke
