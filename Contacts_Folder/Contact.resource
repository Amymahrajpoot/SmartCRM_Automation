*** Settings ***
Library    SeleniumLibrary

*** Variables ***
#Add Contact
${CONTACTS_OPTION_XPATH}            //li[@data-menu-id="rc-menu-uuid-/collections/contacts"]
${CONTACTS_PAGE_XPATH}              //h5[text()='Contacts']
${ADD_BUTTON_XPATH}                 (//button[@class="ant-btn css-xogyor css-var-_r_0_ ant-btn-primary ant-btn-color-primary ant-btn-variant-solid ant-btn-sm"])[3]
${ADD_RECORD_POPUP_XPATH}           //div[text()='Add Record - Contacts']
${TITLE_FIELD_XPATH}                 //input[@id="Title"]
${FIRST_NAME_FIELD_XPATH}           //input[@id="FirstName"]
${LAST_NAME_FIELD_XPATH}            //input[@id="LastName"]
${MOBILE_CODE_XPATH}                (//div[@class="ant-select-content"]/child::input)[1]
${SELECT_MOBILE_CODE_XPATH}         //div[@title="🇵🇰 +92"]
${MOBILE_FIELD_XPATH}               (//input[@placeholder="Phone number"])[1]
${PHONE_CODE_XPATH}                 (//div[contains(@class,'ant-form-item')][.//label[text()='Phone']]//input[@class='ant-select-input'])[1]
${SELECT_PHONE_CODE_XPATH}           //div[@title='мн +692']
${PHONE_FIELD_XPATH}                (//input[@placeholder="Phone number"])[2]
${EMAIL_FIELD_XPATH}                //input[@id="Email"]
${UPDATES_FIELD_XPATH}               //input[@id="Updates"]
${ACCOUNTNAME_DROPDOWN_XPATH}               //input[@id="AccountId"]
${SELECT_ACCOUNTNAME_DROPDOWN_XPATH}        //div[contains(@class,'ant-select-item-option') and @title='Test Lead']
${REPORT_TO_DROPDOWN_XPATH}                 //input[@id="reportToId"]
${SELECT_REPORT_TO_DROPDOWN_XPATH}          //div[@title="Admin User"]
${CONTACTOWNER_DROPDOWN_XPATH}              //input[@id="OwnerId"]
${SELECT_CONTACTOWNER_DROPDOWN_XPATH}       (//div[@title="Test Bss"])[2]
${MAILINGADDRESS_FIELD_XPATH}               //input[@id="MailingAddress"]
${OTHERADDRESS_FIELD_XPATH}                 //input[@id="otherAddress"]
${DESCRIPTION_FIELD_XPATH}                  //input[@id="Description"]
${BIRTHDAY_CALENDAR_XPATH}                  //input[@id="Birthdate"]
${SELECT_MONTH_XPATH}                       //div[text()='Sep']
${SELECT_DATE_XPATH}                        //td[@title="2001-09-07"]
${YEAR_XPATH}                               //button[@class="ant-picker-year-btn"]
${PREV_BTN_YEAR_XPATH}                      //button[@class="ant-picker-header-super-prev-btn"]
${SELECT_YEAR_XPATH}                        //td[@title="2001"]
${HOMEPHONE_CODE_XPATH}                     (//div[contains(@class,'ant-form-item')][.//label[text()='Home Phone']]//input[@class='ant-select-input'])
${SELECT_HOMEPHONE_CODE_XPATH}              //div[@title="🇫🇮 +358"]
${HOMEPHONE_FIELD_XPATH}                    (//input[@placeholder="Phone number"])[3]
${OTHERPHONE_CODE_XPATH}                    (//div[contains(@class,'ant-form-item')][.//label[text()='Other Phone']]//input[@class='ant-select-input'])
${SELECT_OTHERPHONE_CODE_XPATH}             //div[@title="🇬🇺 +1671"]
${OTHERPHONE_FIELD_XPATH}                   (//input[@placeholder="Phone number"])[4]
${ASSISTANTPHONE_CODE_XPATH}                (//div[contains(@class,'ant-form-item')][.//label[text()='Assistant Phone']]//input[@class='ant-select-input'])
${SELECT_ASSISTANTPHONE_CODE_XPATH}          //div[@title="🇩🇿 +213"]
${ASSISTANTPHONE_FIELD_XPATH}                (//input[@placeholder="Phone number"])[5]
${ASSISTANT_FIELD_XPATH}                      //input[@id="AssisstantName"]
${LAST_STAY_IN_TOIUCH_CALENDAR_XPATH}         //input[@id="LastStayInTouch"]
${PREVIOUS_BTN_CALENDAR_XPATH}                (//button[@class="ant-picker-header-prev-btn"])[2]
${SELECT_LAST_STAY_IN_TOIUCH_CALENDAR_XPATH}        //td[@title="2026-06-02"]
${DEPT_FIELD_XPATH}                                 //input[@id="Department"]
${CREATE_BTN_XPATH}                                 //button[@class="ant-btn css-xogyor css-var-_r_0_ ant-btn-primary ant-btn-color-primary ant-btn-variant-solid"]
${CREATE_SUCCESS_MSG_XPATH}                         //span[text()='Record created successfully!']

#Email Validation
${CONTACT_EMAIL_VALIDATION_MSG_XPATH}               //div[text()='Please enter Email']

#View Contact
${MORE_ICON_XPATH}          (//button[@class="ant-btn css-xogyor css-var-_r_0_ ant-btn-text ant-btn-color-default ant-btn-variant-text ant-btn-sm ant-btn-icon-only ant-dropdown-trigger"])[1]
${VIEW_ICON_XPATH}          //li[@data-menu-id="rc-menu-uuid-view"]
${VIEW_CONTACT_PAGE_XPATH}      //h2[text()='Contacts']
${BACK_ICON_XPATH}          (//button[@class="ant-btn css-xogyor css-var-_r_0_ ant-btn-text ant-btn-color-default ant-btn-variant-text ant-btn-icon-only"])[5]

#Edit Contact
${EDIT_ICON_XPATH}              //li[@data-menu-id="rc-menu-uuid-edit"]
${EDIT_CONTACT_POPUP_XPATH}      //div[text()='Edit Record - Contacts']
${TITLE_FIELD_EDITED_TEXT}          Amymah
${FIRST_NAME_FIELD_EDITED_TEXT}     Amymahtest
${LAST_NAME_FIELD_EDITED_TEXT}      usman
${EMAIL_FIELD_EDITED_TEXT}          amymahtest@gmail.com
${UPDATES_FIELD_EDITED_TEXT}        updating amymatest contact
${SELECT_REPORT_TO_DROPDOWN_EDITED_XPATH}          //div[@title="Ashfaq Ali"]
${SELECT_CONTACTOWNER_DROPDOWN_EDITED_XPATH}       (//div[@title="Admin User"])[2]
${UPDATE_BTN_XPATH}                                 //button[@class="ant-btn css-xogyor css-var-_r_0_ ant-btn-primary ant-btn-color-primary ant-btn-variant-solid"]
${EDITED_SUCCESS_MSG_XPATH}                         //span[text()='Contacts updated successfully!']

#Clone Contact
${CLONE_ICON_XPATH}                  //li[@data-menu-id="rc-menu-uuid-clone"]
${CLONE_CONTACT_POPUP_XPATH}        //div[text()='Clone Record - Contacts']
${CLONE_BTN_XPATH}                  //button[@class="ant-btn css-xogyor css-var-_r_0_ ant-btn-primary ant-btn-color-primary ant-btn-variant-solid"]
${CLONE_SUCCESS_MSG_XPATH}          //span[text()='Record created successfully!']

#Delete Contact
${DELETE_ICON_XPATH}                //li[@data-menu-id="rc-menu-uuid-delete"]
${DELETE_POPUP_XPATH}               //span[text()='Delete Record']
${DELETE_BTN_XPATH}                 //button[@class="ant-btn css-xogyor css-var-root ant-btn-default ant-btn-dangerous ant-btn-color-dangerous ant-btn-variant-outlined"]
${DELETED_SUCCESS_MSG_XPATH}        //span[text()='Contacts deleted successfully!']

#Filter Contact
${FILTER_BTN_XPATH}                 //span[@class="ant-badge css-xogyor css-var-_r_0_"]
${FILTER_POPUP_XPATH}               //div[text()='Advanced Filters']
${ADD_CONDITION_BTN_XPATH}          //button[@class="ant-btn css-xogyor css-var-_r_0_ ant-btn-dashed ant-btn-color-default ant-btn-variant-dashed ant-btn-sm ant-btn-block"]
${TITLE_DROPDOWN_XPATH}             (//div[@class="ant-flex css-xogyor css-var-_r_0_ ant-flex-align-center ant-flex-gap-small"]/child::div)[3]
${SELECT_TITLE_XPATH}               //div[text()='Assistant']
${CONDITION_DROPDOWN_XPATH}         //div[@title="is equal to"]
${SELECT_CONDITION_XPATH}           //div[text()='contains']
${ENTER_VALUE_XPATH}                (//input[@placeholder="Enter value"])[1]
${ENTER_VALUE_TEXT}                 vid
${SECOND_TITLE_DROPDOWN_XPATH}      (//div[@class="ant-select ant-select-sm ant-select-outlined css-var-_r_0_ ant-select-css-var css-xogyor ant-select-single ant-select-show-arrow"])[4]
${SELECT_SECOND_TITLE_XPATH}        (//div[text()='Email'])[2]
${SECOND_VALUE_ENTER_XPATH}         (//input[@placeholder="Enter value"])[2]
${ENTER_SECOND_VALUE_TEXT}          amymahtest@gmail.com
${APPLY_FILTER_BTN_XPATH}           //button[@class="ant-btn css-xogyor css-var-_r_0_ ant-btn-primary ant-btn-color-primary ant-btn-variant-solid"]
${FILTERED_ROW_XPATH}               //tr[@class="ant-table-row ant-table-row-level-0"]

#Search Contact
${SEARCH_BAR_XPATH}                 //input[@placeholder="Search..."]
${SEARCH_TEXT}                      amymah
${SEARCH_ICON_XPATH}                //span[@class="anticon anticon-search"]
${SEARCHED_RECORD_XPATH}            //div[@class="ant-table-body"]

#Table Settings
${TABLE_SETTINGS_XPATH}             (//span[@class="anticon anticon-setting"])[2]
${FIRSTNAME_CHECKBOX_XPATH}         //span[text()='First Name']/ancestor::div[@role='treeitem']//span[@role='checkbox']
${BIRTHDATE_CHECKBOX_XPATH}         //span[text()='Birthdate']/ancestor::div[@role='treeitem']//span[@role='checkbox']
${DESCRIPTION_CHECKBOX_XPATH}       //span[text()='Description']/ancestor::div[@role='treeitem']//span[@role='checkbox']
${RESET_ICON_XPATH}                 //a[text()='Reset']
${COLUMN_DISPLAY_XPATH}             //span[@class="ant-checkbox ant-wave-target css-xogyor ant-checkbox-checked"]
${ACTIONS_CHECKBOX_XPATH}           //span[text()='Actions']/ancestor::div[@role='treeitem']//span[@role='checkbox']
${MAIN_XPATH}                       //main[@class="ant-layout-content css-xogyor"]