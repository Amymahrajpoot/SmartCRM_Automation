*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${LEADS_POPUP_XPATH}    //div[@class="ant-modal-container"]
${LEADS_XPATH}      //span[text()= 'Leads']
${ADD_LEAD_XPATH}   //span[text()='Add']
${CREATE_RECORD_BUTTON_XPATH}       //button[@class="ant-btn css-xogyor css-var-_r_0_ ant-btn-primary ant-btn-color-primary ant-btn-variant-solid"]
${VALIDATION_MSG_XPATH}             //div[text()='Please enter Email']

${LEADS_POPUP_XPATH}    //div[@class="ant-modal-container"]
${LEADS_XPATH}      //span[text()= 'Leads']
${ADD_LEAD_XPATH}   //span[text()='Add']
${TITLE_FIELD_XPATH}        //input[@id="Title"]
${FIRSTNAME_FIELD_XPATH}    //input[@id="FirstName"]
${LASTNAME_FIELD_XPATH}     //input[@id="LastName"]
${NAME_FIELD_XPATH}         //input[@id="Name"]
${GENDER_IDENTITY_XPATH}    (//div[@class="ant-form-item-control-input"])[5]
${SELECT_GENDER_IDENTITY_XPATH}     //div[text()='Male']
${LEAD_SOURCE_XPATH}                (//div[@class="ant-form-item-control-input"])[6]
${SELECT_LEAD_SOURCE_XPATH}         //div[text()='Facebook']
${LEAD_PARTNER_ACCOUNT_XPATH}       (//div[@class="ant-form-item-control-input"])[7]
${SELECT_LEAD_PARTNER_ACCOUNT_XPATH}    //div[text()='Hamill, Bogisich and Ullrich']

${MOBILE_CODE_XPATH}     (//input[@class="ant-select-input"])[5]
${SELECT_MOBILE_CODE_XPATH}     //div[text()='🇵🇰 +92']
${MOBILE_NUMBER_XPATH}          (//input[@placeholder="Phone number"])[1]
${EMAIL_XPATH}      //input[@id="Email"]
${LINKDIN_XPATH}      //input[@id="Linked"]

${PHONE_CODE_XPATH}     (//input[@class="ant-select-input"])[6]
${SELECT_PHONE_CODE_XPATH}     //div[@class="ant-select-item ant-select-item-option ant-select-item-option-active"]
${PHONE_NUMBER_XPATH}          (//input[@placeholder="Phone number"])[2]
${COMPANY_XPATH}        //input[@id="Company"]
${WEBSITE_XPATH}        //input[@id="Website"]
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

${ADDRESS_XPATH}        //input[@id="Address"]
${STREET_XPATH}        //input[@id="Street"]
${CITY_XPATH}           //input[@id="City"]
${STATE_XPATH}           //input[@id="State"]
${POSTALCODE_XPATH}      //input[@id="PostalCode"]
${COUNTRY_XPATH}      //input[@id="Country"]
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

${CREATE_RECORD_BUTTON_XPATH}       //button[@class="ant-btn css-xogyor css-var-_r_0_ ant-btn-primary ant-btn-color-primary ant-btn-variant-solid"]
${SUCCESS_MESSAGE_XPATH}            //span[text()='Record created successfully!']
