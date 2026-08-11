*** Settings ***
Library         SeleniumLibrary
Resource        Lead.resource
Resource        ../Login_Folder/Login.resource
Library    DataDriver    ../Data/Lead_Data.xlsx    sheet_name=Sheet1
Test Template      Create Lead

*** Keywords ***
Create Lead
    [Arguments]    ${TITLE_FIELD_TEXT}    ${FIRSTNAME_FIELD_TEXT}   ${LASTNAME_FIELD_TEXT}  ${NAME_FIELD_TEXT}  ${MOBILE_CODE_TEXT}  ${MOBILE_NUMBER_TEXT}  ${EMAIL_TEXT}    ${LINKDIN_TEXT}     ${PHONE_CODE_TEXT}     ${PHONE_NUMBER_TEXT}    ${COMPANY_TEXT}     ${WEBSITE_TEXT}     ${DESCRIPTION_TEXT}     ${ADDRESS_TEXT}     ${STREET_TEXT}       ${CITY_TEXT}       ${STATE_TEXT}       ${POSTALCODE_TEXT}       ${COUNTRY_TEXT}        ${NOTES_TEXT}
    Log To Console   <<<Adding Prospect Information>>>
    Set Selenium Speed    0.5s
#   Click Element    ${LEADS_XPATH}
#   Click Element    ${ADD_LEAD_XPATH}
#   Wait Until Element Is Visible    ${LEADS_POPUP_XPATH}      timeout=10s
    Click Element    ${TITLE_FIELD_XPATH}
    Input Text    ${TITLE_FIELD_XPATH}    ${TITLE_FIELD_TEXT}
    Click Element    ${FIRSTNAME_FIELD_XPATH}
    Input Text    ${FIRSTNAME_FIELD_XPATH}    ${FIRSTNAME_FIELD_TEXT}
    Click Element    ${LASTNAME_FIELD_XPATH}
    Input Text    ${LASTNAME_FIELD_XPATH}    ${LASTNAME_FIELD_TEXT}
    Click Element    ${NAME_FIELD_XPATH}
    Input Text    ${NAME_FIELD_XPATH}    ${NAME_FIELD_TEXT}
    Click Element    ${GENDER_IDENTITY_XPATH}
    Click Element    ${SELECT_GENDER_IDENTITY_XPATH}
    Click Element    ${LEAD_SOURCE_XPATH}
    Click Element    ${SELECT_LEAD_SOURCE_XPATH}
#    Click Element    ${LEAD_PARTNER_ACCOUNT_XPATH}
#    Scroll Element Into View    ${SELECT_LEAD_PARTNER_ACCOUNT_XPATH}
#    Wait Until Element Is Visible    ${SELECT_LEAD_PARTNER_ACCOUNT_XPATH}       10s
#    Click Element    ${SELECT_LEAD_PARTNER_ACCOUNT_XPATH}


    Log To Console   <<<Adding Contact Information>>>
    Click Element    ${MOBILE_CODE_XPATH}
    Input Text    ${MOBILE_CODE_XPATH}      ${MOBILE_CODE_TEXT}
    Click Element    ${SELECT_MOBILE_CODE_XPATH}
    Click Element    ${MOBILE_NUMBER_XPATH}
    Input Text    ${MOBILE_NUMBER_XPATH}      ${MOBILE_NUMBER_TEXT}
    Click Element    ${EMAIL_XPATH}
    Input Text    ${EMAIL_XPATH}     ${EMAIL_TEXT}
    Click Element    ${LINKDIN_XPATH}
    Input Text    ${LINKDIN_XPATH}    ${LINKDIN_TEXT}

    Log To Console   <<<Adding Company Information>>>
    Click Element    ${PHONE_CODE_XPATH}
    Input Text    ${PHONE_CODE_XPATH}      ${PHONE_CODE_TEXT}
    Click Element    ${SELECT_PHONE_CODE_XPATH}
    Click Element    ${PHONE_NUMBER_XPATH}
    Input Text    ${PHONE_NUMBER_XPATH}      ${PHONE_NUMBER_TEXT}
    Click Element    ${COMPANY_XPATH}
    Input Text    ${COMPANY_XPATH}     ${COMPANY_TEXT}
    Click Element    ${WEBSITE_XPATH}
    Input Text    ${WEBSITE_XPATH}     ${WEBSITE_TEXT}
    Click Element    ${INDUSTRY_XPATH}
    Click Element    ${SELECT_INDUSTRY_XPATH}
    Click Element    ${EMPLOYEES_XPATH}

    FOR    ${i}    IN RANGE    5
        Click Element    ${EMPLOYEES_COUNTER_XPATH}
    END

    Log To Console   <<<Adding Financial Information>>>
    Click Element    ${ANNUAL_REVENUE_XPATH}

    FOR    ${i}    IN RANGE    5
        Click Element    ${ANNUAL_REVENUE_COUNTER_XPATH}
    END

    Click Element    ${NUMER_OF_LOCATIONS_XPATH}

    FOR    ${i}    IN RANGE    5
        Click Element   ${NUMER_OF_LOCATIONS_COUNTER_XPATH}
    END

    Log To Console   <<<Adding Lead Details>>>
    Click Element    ${LEAD_STATUS_XPATH}
    Click Element    ${SELECT_LEAD_STATUS_XPATH}
    Click Element    ${RATING_XPATH}
    Click Element    ${SELECT_RATING_XPATH}
    Click Element    ${DESCRIPTION_XPATH}
    Input Text    ${DESCRIPTION_XPATH}      ${DESCRIPTION_TEXT}

    Log To Console   <<<Adding Address & Prefrences>>>
    Click Element    ${ADDRESS_XPATH}
    Input Text    ${ADDRESS_XPATH}     ${ADDRESS_TEXT}
    Click Element    ${STREET_XPATH}
    Input Text    ${STREET_XPATH}       ${STREET_TEXT}
    Click Element    ${CITY_XPATH}
    Input Text    ${CITY_XPATH}       ${CITY_TEXT}
    Click Element    ${STATE_XPATH}
    Input Text    ${STATE_XPATH}       ${STATE_TEXT}
    Click Element    ${POSTALCODE_XPATH}
    Input Text    ${POSTALCODE_XPATH}       ${POSTALCODE_TEXT}
    Click Element    ${COUNTRY_XPATH}
    Input Text    ${COUNTRY_XPATH}        ${COUNTRY_TEXT}
    Click Element    ${EMIAL_OPT_OUT_XPATH}

    Log To Console   <<<Adding Dates>>>
    Click Element    ${LAST_ACTIVITY_DATE_XPATH}
    Click Element    ${PREVIOUS_LAST_ACTIVITY_DATE_XPATH}
    Click Element    ${SELECT_LAST_ACTIVITY_DATE_XPATH}
    Click Element    ${LAST_TRANSFER_DATE_XPATH}
    Click Element    ${SELECT_LAST_TRANSFER_DATE_XPATH}

    Log To Console   <<<Adding Relationships>>>
    Click Element    ${LEAD_OWNER_XPATH}
    Click Element    ${SELECT_LEAD_OWNER_XPATH}
#    Click Element    ${LEAD_PARTNER_CONTACT_XPATH}
#    Click Element    ${SELECT_LEAD_PARTNER_CONTACT_XPATH}

    Log To Console   <<<Adding Additional Information>>>
    Click Element    ${NOTES_XPATH}
    Input Text    ${NOTES_XPATH}     ${NOTES_TEXT}

    Log To Console    <<<Creating the Lead record>>>
    Click Element    ${CREATE_RECORD_BUTTON_XPATH}

    Log To Console    <<<Lead record created successfully!>>>
    Wait Until Element Is Visible    ${ADD_SUCCESS_MESSAGE_XPATH}


*** Test Cases ***
Create Lead using ${TITLE_FIELD_TEXT}    ${FIRSTNAME_FIELD_TEXT}   ${LASTNAME_FIELD_TEXT}  ${NAME_FIELD_TEXT}  ${MOBILE_CODE_TEXT}  ${MOBILE_NUMBER_TEXT}  ${EMAIL_TEXT}    ${LINKDIN_TEXT}     ${PHONE_CODE_TEXT}     ${PHONE_NUMBER_TEXT}    ${COMPANY_TEXT}     ${WEBSITE_TEXT}     ${DESCRIPTION_TEXT}     ${ADDRESS_TEXT}     ${STREET_TEXT}       ${CITY_TEXT}       ${STATE_TEXT}       ${POSTALCODE_TEXT}       ${COUNTRY_TEXT}        ${NOTES_TEXT}
    [Documentation]    Requirement: 42 - create the lead
    [Tags]    smoke
