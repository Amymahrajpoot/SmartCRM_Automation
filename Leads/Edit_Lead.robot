*** Settings ***
Resource    ../Login/Launch_Website.resource
Suite Setup       Launch Website
Suite Teardown    Close Browser

*** Variables ***
${TABLE_SETTINGS_XPATH}     (//span[@aria-label="setting"])[2]
${NAME_CHECKBOX_XPATH}      //span[text()='Name']/ancestor::div[@role='treeitem']//span[@role='checkbox']
${MOBILE_CHECKBOX_XPATH}    //span[text()='Mobile']/ancestor::div[@role='treeitem']//span[@role='checkbox']
${NOTES_CHECKBOX_XPATH}     //span[text()='Notes']/ancestor::div[@role='treeitem']//span[@role='checkbox']
${MORE_ICON_XPATH}          (//button[@class="ant-btn css-xogyor css-var-_r_0_ ant-btn-text ant-btn-color-default ant-btn-variant-text ant-btn-sm ant-btn-icon-only ant-dropdown-trigger"])[1]
${EDIT_XPATH}               //li[@data-menu-id="rc-menu-uuid-edit"]
${EDIT_POPUP_XPATH}         //div[text()='Edit Record - Leads']

${LEADS_POPUP_XPATH}    //div[@class="ant-modal-container"]
${LEADS_XPATH}      //span[text()= 'Leads']
${ADD_LEAD_XPATH}   //span[text()='Add']
${TITLE_FIELD_XPATH}        //input[@id="Title"]
${TITLE_FIELD_TEXT}         Ali Admin
${FIRSTNAME_FIELD_XPATH}    //input[@id="FirstName"]
${FIRSTNAME_FIELD_TEXT}     Ali
${LASTNAME_FIELD_XPATH}     //input[@id="LastName"]
${LASTNAME_FIELD_TEXT}     Admin
${NAME_FIELD_XPATH}         //input[@id="Name"]
${NAME_FIELD_TEXT}          Ali Admin
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
${LINKDIN_TEXT}       TestLead_717

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
${SELECT_INDUSTRY_XPATH}    //div[text()='Healthcare']
${EMPLOYEES_XPATH}      //input[@id="NumberOfEmployees"]
${EMPLOYEES_COUNTER_XPATH}      (//span[@class="ant-input-number-action ant-input-number-action-up"])[1]

${ANNUAL_REVENUE_XPATH}     //input[@id="AnnualRevenue"]
${ANNUAL_REVENUE_COUNTER_XPATH}     (//span[@class="ant-input-number-action ant-input-number-action-up"])[2]
${NUMER_OF_LOCATIONS_XPATH}     //input[@id="NumberofLocations__c"]
${NUMER_OF_LOCATIONS_COUNTER_XPATH}     (//span[@class="ant-input-number-action ant-input-number-action-up"])[3]

${LEAD_STATUS_XPATH}             (//div[@class="ant-form-item-control-input"])[18]
${SELECT_LEAD_STATUS_XPATH}     //div[@title="Open"]
${RATING_XPATH}                 (//div[@class="ant-form-item-control-input"])[19]
${SELECT_RATING_XPATH}           //div[@title="Cold"]
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
${SELECT_LAST_ACTIVITY_DATE_XPATH}          //div[text()='11']
${LAST_TRANSFER_DATE_XPATH}                 //input[@id="LastTransferDate"]
${SELECT_LAST_TRANSFER_DATE_XPATH}          //td[@title="2026-08-01"]

${LEAD_OWNER_XPATH}                         //input[@id="OwnerId"]
${SELECT_LEAD_OWNER_XPATH}                //div[@title="Admin User"]
${LEAD_PARTNER_CONTACT_XPATH}             //input[@id="LeadPartnerContact"]
${SELECT_LEAD_PARTNER_CONTACT_XPATH}      //div[@title="Luz"]

${NOTES_XPATH}      //input[@id="Notes"]
${NOTES_TEXT}       Adding the Lead with all the information

${UPDATE_RECORD_BUTTON_XPATH}       //button[@class="ant-btn css-xogyor css-var-_r_0_ ant-btn-primary ant-btn-color-primary ant-btn-variant-solid"]
${SUCCESS_MESSAGE_XPATH}            //span[text()='Leads updated successfully!']

*** Test Cases ***
Edit Lead
    [Documentation]    Edit Lead
#    Log To Console   <<<Adding Columns from the Table Settings>>>
    Login
    Set Selenium Speed    1s
    Click Element    ${LEADS_XPATH}
#    Click Element    ${TABLE_SETTINGS_XPATH}
#    Click Element    ${NAME_CHECKBOX_XPATH}
#    Click Element    ${MOBILE_CHECKBOX_XPATH}
#   ${container}=    Get WebElement    //div[contains(@class,'ant-tree-list-holder')]
#    Execute JavaScript    arguments[0].scrollTop = arguments[0].scrollHeight;    ARGUMENTS    ${container}
#    Click Element    ${NOTES_CHECKBOX_XPATH}

    Log To Console   <<<Editing Lead from the Actions column>>>
    Click Element    ${MORE_ICON_XPATH}
    Click Element    ${EDIT_XPATH}
    Wait Until Element Is Visible    ${EDIT_POPUP_XPATH}        5s


    Log To Console   <<<Editing Prospect Information>>>
    Click Element    ${TITLE_FIELD_XPATH}
    Press Keys       ${TITLE_FIELD_XPATH}    CTRL+A+BACKSPACE
    Input Text       ${TITLE_FIELD_XPATH}    ${TITLE_FIELD_TEXT}

    Click Element    ${FIRSTNAME_FIELD_XPATH}
    Press Keys       ${FIRSTNAME_FIELD_XPATH}    CTRL+A+BACKSPACE
    Input Text       ${FIRSTNAME_FIELD_XPATH}    ${FIRSTNAME_FIELD_TEXT}

    Click Element    ${LASTNAME_FIELD_XPATH}
    Press Keys       ${LASTNAME_FIELD_XPATH}    CTRL+A+BACKSPACE
    Input Text       ${LASTNAME_FIELD_XPATH}    ${LASTNAME_FIELD_TEXT}

    Log To Console   <<<Editing Contact Information>>>
    Click Element    ${LINKDIN_XPATH} 
    Press Keys    ${LINKDIN_XPATH}     CTRL+A+BACKSPACE
    Input Text    ${LINKDIN_XPATH}    ${LINKDIN_TEXT}
    
    Log To Console    <<<Editing Company Information>>>
    Click Element    ${INDUSTRY_XPATH}
    Click Element    ${SELECT_INDUSTRY_XPATH}

    Click Element    ${EMPLOYEES_XPATH}
    Press Keys    ${EMPLOYEES_XPATH}    CTRL+A+BACKSPACE
    FOR    ${i}    IN RANGE    7
        Click Element    ${EMPLOYEES_COUNTER_XPATH}
    END

    Log To Console    <<<Editing Financial Information>>>
    Click Element    ${NUMER_OF_LOCATIONS_XPATH}
    Press Keys     ${NUMER_OF_LOCATIONS_XPATH}     CTRL+A+BACKSPACE
    FOR    ${i}    IN RANGE    9
        Click Element   ${NUMER_OF_LOCATIONS_COUNTER_XPATH}
    END
    
    Log To Console    <<<Editing Lead Details>>>
    Click Element    ${RATING_XPATH}
    Click Element    ${SELECT_RATING_XPATH}

    Log To Console    <<<Editing Address & Prefrences>>>
    Click Element    ${EMIAL_OPT_OUT_XPATH}

    Log To Console    <<<Editing Dates>>>
    Click Element    ${LAST_ACTIVITY_DATE_XPATH}  
    Click Element    ${PREVIOUS_LAST_ACTIVITY_DATE_XPATH} 
    Click Element    ${SELECT_LAST_ACTIVITY_DATE_XPATH}
    
    Click Element    ${LAST_TRANSFER_DATE_XPATH}
    Click Element    ${SELECT_LAST_TRANSFER_DATE_XPATH}  
    
    Log To Console    <<<Editing Relationships>>>
    Click Element    ${LEAD_PARTNER_CONTACT_XPATH}   
    Click Element    ${SELECT_LEAD_PARTNER_CONTACT_XPATH}

    Log To Console    <<<Updating the Lead record>>>
    Click Element    ${UPDATE_RECORD_BUTTON_XPATH}

    Log To Console    <<<Lead record updated successfully!>>>
    Wait Until Element Is Visible    ${SUCCESS_MESSAGE_XPATH}


