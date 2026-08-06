*** Settings ***
Library    SeleniumLibrary

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
${FIRSTNAME_FIELD_XPATH}    //input[@id="FirstName"]
${LASTNAME_FIELD_XPATH}     //input[@id="LastName"]
${NAME_FIELD_XPATH}         //input[@id="Name"]
${GENDER_IDENTITY_XPATH}    (//div[@class="ant-form-item-control-input"])[5]
${SELECT_GENDER_IDENTITY_XPATH}     //div[text()='Male']
${LEAD_SOURCE_XPATH}                (//div[@class="ant-form-item-control-input"])[6]
${SELECT_LEAD_SOURCE_XPATH}         //div[text()='Facebook']
${LEAD_PARTNER_ACCOUNT_XPATH}       (//div[@class="ant-form-item-control-input"])[7]
${SELECT_LEAD_PARTNER_ACCOUNT_XPATH}    //div[text()='Hamill, Bogisich and Ullrich']

${LINKDIN_XPATH}      //input[@id="Linked"]


${INDUSTRY_XPATH}       (//div[@class="ant-form-item-control-input"])[14]
${SELECT_INDUSTRY_XPATH}    //div[text()='Healthcare']
${EMPLOYEES_XPATH}      //input[@id="NumberOfEmployees"]
${EMPLOYEES_COUNTER_XPATH}      (//span[@class="ant-input-number-action ant-input-number-action-up"])[1]

${NUMER_OF_LOCATIONS_XPATH}     //input[@id="NumberofLocations__c"]
${NUMER_OF_LOCATIONS_COUNTER_XPATH}     (//span[@class="ant-input-number-action ant-input-number-action-up"])[3]


${RATING_XPATH}                 (//div[@class="ant-form-item-control-input"])[19]
${SELECT_RATING_XPATH}           //div[@title="Cold"]


${EMIAL_OPT_OUT_XPATH}      //input[@id="HasOptedOutOfEmail"]

${LAST_ACTIVITY_DATE_XPATH}                 //input[@id="LastActivityDate"]
${PREVIOUS_LAST_ACTIVITY_DATE_XPATH}        //button[@class="ant-picker-header-prev-btn"]
${SELECT_LAST_ACTIVITY_DATE_XPATH}          //div[text()='11']
${LAST_TRANSFER_DATE_XPATH}                 //input[@id="LastTransferDate"]
${SELECT_LAST_TRANSFER_DATE_XPATH}          //td[@title="2026-08-01"]


${LEAD_PARTNER_CONTACT_XPATH}             //input[@id="LeadPartnerContact"]
${SELECT_LEAD_PARTNER_CONTACT_XPATH}      //div[@title="Luz"]


${UPDATE_RECORD_BUTTON_XPATH}       //button[@class="ant-btn css-xogyor css-var-_r_0_ ant-btn-primary ant-btn-color-primary ant-btn-variant-solid"]
${SUCCESS_MESSAGE_XPATH}            //span[text()='Leads updated successfully!']