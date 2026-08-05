*** Settings ***
Resource    ../Login/Launch_Website.resource
Suite Setup       Launch Website
Suite Teardown    Close Browser

*** Variables ***
${LEADS_POPUP_XPATH}    //div[@class="ant-modal-container"]
${LEADS_XPATH}      //span[text()= 'Leads']
${ADD_LEAD_XPATH}   //span[text()='Add']
${TITLE_FIELD_XPATH}        //input[@id="Title"]
${TITLE_FIELD_TEXT}         Test Lead
${FIRSTNAME_FIELD_XPATH}    //input[@id="FirstName"]
${FIRSTNAME_FIELD_TEXT}     Test
${LASTNAME_FIELD_XPATH}     //input[@id="LastName"]
${LASTNAME_FIELD_TEXT}     Lead
${NAME_FIELD_XPATH}         //input[@id="Name"]
${NAME_FIELD_TEXT}          Test Lead
${GENDER_IDENTITY_XPATH}    (//div[@class="ant-form-item-control-input"])[5]
${SELECT_GENDER_IDENTITY_XPATH}     //div[text()='Male']
${LEAD_SOURCE_XPATH}                (//div[@class="ant-form-item-control-input"])[6]
${SELECT_LEAD_SOURCE_XPATH}         //div[text()='Facebook']
${LEAD_PARTNER_ACCOUNT_XPATH}       (//div[@class="ant-form-item-control-input"])[7]
${SELECT_LEAD_PARTNER_ACCOUNT_XPATH}    //div[text()='Hamill, Bogisich and Ullrich']

${MOBILE_CODE_XPATH}     (//input[@class="ant-select-input"])[5]
${MOBILE_CODE_TEXT}      92
${SELECT_MOBILE_CODE_XPATH}     //div[text()='🇵🇰 +92']
${MOBILE_NUMBER_XPATH}          (//input[@placeholder="Phone number"])[1]
${MOBILE_NUMBER_TEXT}       3356782211
${EMAIL_XPATH}      //input[@id="Email"]
${EMAIL_TEXT}       testlead001@gmail.com
${LINKDIN_XPATH}      //input[@id="Linked"]
${LINKDIN_TEXT}       TestLead001

${PHONE_CODE_XPATH}     (//input[@class="ant-select-input"])[6]
${PHONE_CODE_TEXT}      92
${SELECT_PHONE_CODE_XPATH}     //div[@class="ant-select-item ant-select-item-option ant-select-item-option-active"]
${PHONE_NUMBER_XPATH}          (//input[@placeholder="Phone number"])[2]
${PHONE_NUMBER_TEXT}       3356782
${COMPANY_XPATH}        //input[@id="Company"]
${COMPANY_TEXT}         BSS
${WEBSITE_XPATH}        //input[@id="Website"]
${WEBSITE_TEXT}         BSS.com
${INDUSTRY_XPATH}       (//div[@class="ant-form-item-control-input"])[14]
${SELECT_INDUSTRY_XPATH}    //div[text()='Education']
${EMPLOYEES_XPATH}      //input[@id="NumberOfEmployees"]
${EMPLOYEES_COUNTER_XPATH}      (//span[@class="ant-input-number-action ant-input-number-action-up"])[1]

${ANNUAL_REVENUE_XPATH}     //input[@id="AnnualRevenue"]
${ANNUAL_REVENUE_COUNTER_XPATH}     (//span[@class="ant-input-number-action ant-input-number-action-up"])[2]
${NUMER_OF_LOCATIONS_XPATH}     //input[@id="NumberofLocations__c"]
${NUMER_OF_LOCATIONS_COUNTER_XPATH}     (//span[@class="ant-input-number-action ant-input-number-action-up"])[3]

${LEAD_STATUS_XPATH}             (//div[@class="ant-form-item-control-input"])[18]
${SELECT_LEAD_STATUS_XPATH}     //div[@title="Open"]
${RATING_XPATH}                 (//div[@class="ant-form-item-control-input"])[19]
${SELECT_RATING_XPATH}           //div[@title="Warm"]
${DESCRIPTION_XPATH}             //input[@placeholder="Enter Description"]
${DESCRIPTION_TEXT}             Lead Details

${ADDRESS_XPATH}        //input[@id="Address"]
${ADDRESS_TEXT}         Main Bulevard 7 A, KBA
${STREET_XPATH}        //input[@id="Street"]
${STREET_TEXT}           No. 7
${CITY_XPATH}           //input[@id="City"]
${CITY_TEXT}             Lahore
${STATE_XPATH}           //input[@id="State"]
${STATE_TEXT}             Lahore
${POSTALCODE_XPATH}      //input[@id="PostalCode"]
${POSTALCODE_TEXT}        00855
${COUNTRY_XPATH}      //input[@id="Country"]
${COUNTRY_TEXT}        Pakistan
${EMIAL_OPT_OUT_XPATH}      //input[@id="HasOptedOutOfEmail"]

${LAST_ACTIVITY_DATE_XPATH}                 //input[@id="LastActivityDate"]
${PREVIOUS_LAST_ACTIVITY_DATE_XPATH}        //button[@class="ant-picker-header-prev-btn"]
${SELECT_LAST_ACTIVITY_DATE_XPATH}          //div[text()='22']
${LAST_TRANSFER_DATE_XPATH}                 //input[@id="LastTransferDate"]
${SELECT_LAST_TRANSFER_DATE_XPATH}          (//div[text()='5'])[3]

${LEAD_OWNER_XPATH}                         //input[@id="OwnerId"]
${SELECT_LEAD_OWNER_XPATH}                //div[@title="Admin User"]
${LEAD_PARTNER_CONTACT_XPATH}             //input[@id="LeadPartnerContact"]
${SELECT_LEAD_PARTNER_CONTACT_XPATH}      //div[@title="Conrad"]

${NOTES_XPATH}      //input[@id="Notes"]
${NOTES_TEXT}       Adding the Lead with all the information

${CREATE_RECORD_BUTTON_XPATH}       //button[@class="ant-btn css-xogyor css-var-_r_0_ ant-btn-primary ant-btn-color-primary ant-btn-variant-solid"]
${SUCCESS_MESSAGE_XPATH}            //span[text()='Record created successfully!']

*** Test Cases ***
Add New Lead
    [Documentation]    Add Lead
    Log To Console   <<<Adding Prospect Information>>>
    Login
    Maximize Browser Window
    Set Selenium Speed    1s
    Click Element    ${LEADS_XPATH}
    Click Element    ${ADD_LEAD_XPATH}
    Wait Until Element Is Visible    ${LEADS_POPUP_XPATH}      timeout=10s
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
    Click Element    ${LEAD_PARTNER_ACCOUNT_XPATH}
    Click Element    ${SELECT_LEAD_PARTNER_ACCOUNT_XPATH}

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
    Click Element    ${LEAD_PARTNER_CONTACT_XPATH}  
    Click Element    ${SELECT_LEAD_PARTNER_CONTACT_XPATH}

    Log To Console   <<<Adding Additional Information>>>
    Click Element    ${NOTES_XPATH}
    Input Text    ${NOTES_XPATH}     ${NOTES_TEXT}

    Log To Console    <<<Creating the Lead record>>>
    Click Element    ${CREATE_RECORD_BUTTON_XPATH}

    Log To Console    <<<Lead record created successfully!>>>
    Wait Until Element Is Visible    ${SUCCESS_MESSAGE_XPATH}

    Close Browser