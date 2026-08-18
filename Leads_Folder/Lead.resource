*** Settings ***
Library    SeleniumLibrary


*** Variables ***
#Add Lead
${LEADS_POPUP_XPATH}    //div[@class="ant-modal-container"]
${LEADS_XPATH}      //span[text()= 'Leads']
${ADD_LEAD_XPATH}   //span[text()='Add']
${CREATE_RECORD_BUTTON_XPATH}       //button[@class="ant-btn css-xogyor css-var-_r_0_ ant-btn-primary ant-btn-color-primary ant-btn-variant-solid"]
${LEAD_EMAIL_VALIDATION_MSG_XPATH}             //div[text()='Please enter Email']

${TITLE_FIELD_XPATH}        //input[@id="Title"]
${FIRSTNAME_FIELD_XPATH}    //input[@id="FirstName"]
${LASTNAME_FIELD_XPATH}     //input[@id="LastName"]
${NAME_FIELD_XPATH}         //input[@id="Name"]
${GENDER_IDENTITY_XPATH}    (//div[@class="ant-form-item-control-input"])[5]
${SELECT_GENDER_IDENTITY_XPATH}     //div[text()='Male']
${LEAD_SOURCE_XPATH}                (//div[@class="ant-form-item-control-input"])[6]
${SELECT_LEAD_SOURCE_XPATH}         //div[text()='Facebook']
${LEAD_PARTNER_ACCOUNT_XPATH}       (//div[@class="ant-form-item-control-input"])[7]
${SELECT_LEAD_PARTNER_ACCOUNT_XPATH}    //div[@title="Bednar LLC"]

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
${Add_SUCCESS_MESSAGE_XPATH}            //span[text()='Record created successfully!']

#View Lead
${MORE_ICON_XPATH}        (//button[@class="ant-btn css-xogyor css-var-_r_0_ ant-btn-text ant-btn-color-default ant-btn-variant-text ant-btn-sm ant-btn-icon-only ant-dropdown-trigger"])[1]
${VIEW_XPATH}             //li[@data-menu-id="rc-menu-uuid-view"]
${LEADS_PAGE_XPATH}        //h2[text()='Leads']
${BACK_IOCN_XPATH}          (//button[@class="ant-btn css-xogyor css-var-_r_0_ ant-btn-text ant-btn-color-default ant-btn-variant-text ant-btn-icon-only"])[5]

#Edit Lead
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
${SELECT_INDUSTRY_EDITED_XPATH}    //div[text()='Healthcare']
${EMPLOYEES_XPATH}      //input[@id="NumberOfEmployees"]
${EMPLOYEES_COUNTER_EDITED_XPATH}      (//span[@class="ant-input-number-action ant-input-number-action-up"])[1]

${NUMER_OF_LOCATIONS_XPATH}     //input[@id="NumberofLocations__c"]
${NUMER_OF_LOCATIONS_COUNTER_EDITED_XPATH}     (//span[@class="ant-input-number-action ant-input-number-action-up"])[3]


${RATING_XPATH}                 (//div[@class="ant-form-item-control-input"])[19]
${SELECT_RATING_EDITED_XPATH}           //div[@title="Cold"]


${EMIAL_OPT_OUT_EDITED_XPATH}      //input[@id="HasOptedOutOfEmail"]

${LAST_ACTIVITY_DATE_XPATH}                 //input[@id="LastActivityDate"]
${PREVIOUS_LAST_ACTIVITY_DATE_XPATH}        //button[@class="ant-picker-header-prev-btn"]
${SELECT_LAST_ACTIVITY_DATE_EDITED_XPATH}          //div[text()='12']
${LAST_TRANSFER_DATE_XPATH}                 //input[@id="LastTransferDate"]
${SELECT_LAST_TRANSFER_DATE_EDITED_XPATH}          //td[@title="2026-08-01"]


${LEAD_PARTNER_CONTACT_XPATH}             //input[@id="LeadPartnerContact"]
${SELECT_LEAD_PARTNER_CONTACT_XPATH}      //div[@title="Luz"]


${UPDATE_RECORD_BUTTON_XPATH}       //button[@class="ant-btn css-xogyor css-var-_r_0_ ant-btn-primary ant-btn-color-primary ant-btn-variant-solid"]
${UPDATE_SUCCESS_MESSAGE_XPATH}            //span[text()='Leads updated successfully!']

#Clone Lead
${MORE_ICON_XPATH}          (//button[@class="ant-btn css-xogyor css-var-_r_0_ ant-btn-text ant-btn-color-default ant-btn-variant-text ant-btn-sm ant-btn-icon-only ant-dropdown-trigger"])[1]
${CLONE_OPTION_XPATH}       //li[@data-menu-id="rc-menu-uuid-clone"]
${CLONE_POPUP_XPATH}        //div[text()='Clone Record - Leads']
${CLONE_BUTTON_XPATH}       //button[@class="ant-btn css-xogyor css-var-_r_0_ ant-btn-primary ant-btn-color-primary ant-btn-variant-solid"]
${SUCCESS_MESSAGE_XPATH}    //span[text()='Record created successfully!']
${BACK_ICON_XPATH}          (//button[@class="ant-btn css-xogyor css-var-_r_0_ ant-btn-text ant-btn-color-default ant-btn-variant-text ant-btn-icon-only"])[5]

#Convert Lead
${CONVERT_LEAD_XPATH}       //li[@data-menu-id="rc-menu-uuid-convert"]
${CONVERT_POPUP_XPATH}      //div[text()='Convert Lead']
${RECORD_OWNER_XPATH}       //input[@id="recordOwnerId"]
${SELECT_RECORD_OWNER_XPATH}    //div[@title="Test Bss"]
${COONVERT_BUTTON_XPATH}        //button[@type="submit"]
${CONVERT_SUCCESS_MESSAGE_XPATH}      //span[text()='Lead converted successfully!']

#Search
${SEARCH_BAR_XPATH}         //input[@placeholder="Search..."]
${SEARCH_TEXT}              Ali
${SEARCH_ICON_XPATH}        //button[@class="ant-btn css-xogyor css-var-_r_0_ ant-btn-default ant-btn-color-default ant-btn-variant-outlined ant-btn-icon-only ant-btn-compact-item ant-btn-compact-last-item ant-input-search-btn"]
${SEARCHED_RECORD_XPATH}    (//tr[@class="ant-table-row ant-table-row-level-0"])[1]

#Filter Lead
${FILTERS_BUTTON_XPATH}     //span[@class="ant-badge css-xogyor css-var-_r_0_"]
${ADVANCED_FILTERS_POPUP_XPATH}     //div[text()='Advanced Filters']
${ADD_OR_DROPDOWN_XPATH}        (//div[@class="ant-select-content ant-select-content-has-value"])[2]
${SELECT_ADD_OR_XPATH}          //div[@title="Any (OR)"]
${ADD_CONDITION_BUTTON_XPATH}       //button[@class="ant-btn css-xogyor css-var-_r_0_ ant-btn-dashed ant-btn-color-default ant-btn-variant-dashed ant-btn-sm ant-btn-block"]
${FIRST_FILTER_INPUT_XPATH}       //input[@placeholder="Enter value"]
${FIRST_FILTER_INPUT_TEXT}        Ali
${TITLE_DROPDOWN_XPATH}     (//div[@class="ant-flex css-xogyor css-var-_r_0_ ant-flex-align-center ant-flex-gap-small"]/child::div)[6]
${SELECT_TITLE_XPATH}       //div[text()='Name']
${CONDITION_DROPDOWN_XPATH}     (//div[@title="is equal to"])[2]
${SELECT_CONDITION_XPATH}       //div[@title="contains"]
${SECOND_FILTER_INPUT_XPATH}         (//input[@placeholder="Enter value"])[2]
${SECOND_FILTER_INPUT_TEXT}         Admin
${APPLY_BUTTON_XPATH}       //button[@class="ant-btn css-xogyor css-var-_r_0_ ant-btn-primary ant-btn-color-primary ant-btn-variant-solid"]
${FILTERED_ROW_XPATH}         //div[@class="ant-table-body"]

#Delete Lead
${DELETE_XPATH}     //li[@data-menu-id="rc-menu-uuid-delete"]
${DELETE_POPUP_XPATH}       //span[text()='Delete Record']
${DELETE_BUTTON_XPATH}      //button[@class="ant-btn css-xogyor css-var-root ant-btn-default ant-btn-dangerous ant-btn-color-dangerous ant-btn-variant-outlined"]
${DELETE_SUCCESS_MSG_XPATH}     //span[text()='Leads deleted successfully!']

#Table Settings
${RESET_ICON_XPATH}         //a[text()='Reset']
${COLUMN_DISPLAY_XPATH}     //span[@class="ant-checkbox ant-wave-target css-xogyor ant-checkbox-checked"]
${TABLE_SETTINGS_XPATH}     (//span[@aria-label="setting"])[2]
${NAME_CHECKBOX_XPATH}      //span[text()='Name']/ancestor::div[@role='treeitem']//span[@role='checkbox']
${MOBILE_CHECKBOX_XPATH}    //span[text()='Mobile']/ancestor::div[@role='treeitem']//span[@role='checkbox']
${NOTES_CHECKBOX_XPATH}     //span[text()='Notes']/ancestor::div[@role='treeitem']//span[@role='checkbox']
${ACTIONS_CHECKBOX_XPATH}   //span[text()='Actions']/ancestor::div[@role='treeitem']//span[@role='checkbox']
${MAIN_XPATH}               //main[@class="ant-layout-content css-xogyor"]

#Pagination
${NEXT_ARROW_XPATH}         //li[@title="Next Page"]
${PREV_ARROW_XPATH}         //li[@title="Previous Page"]
${ROW_PER_PAGE_XPATH}       //div[@title="20 / page"]
${SELECT_ROW_PER_PAGE_XPATH}    //div[text()='10 / page']