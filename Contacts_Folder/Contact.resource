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
${MOBILE_CODE_XPATH}                (//input[@class="ant-select-input"])[2]
${SELECT_MOBILE_CODE_XPATH}         //div[@title="🇵🇰 +92"]
${MOBILE_FIELD_XPATH}               (//input[@placeholder="Phone number"])[1]
${PHONE_CODE_XPATH}                 (//input[@class="ant-select-input"])[3]
${SELECT_PHONE_CODE_XPATH}           //div[@title='мн +692']
${PHONE_FIELD_XPATH}                (//input[@placeholder="Phone number"])[2]
${EMAIL_FIELD_XPATH}                //input[@id="Email"]
${UPDATES_FIELD_XPATH}               //input[@id="Updates"]
${ACCOUNTNAME_DROPDOWN_XPATH}               //input[@id="AccountId"]
${SELECT_ACCOUNTNAME_DROPDOWN_XPATH}        //div[@title="Test Lead"]
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
${HOMEPHONE_CODE_XPATH}                     (//input[@class="ant-select-input"])[7]
${SELECT_HOMEPHONE_CODE_XPATH}              //div[@title="🇫🇮 +358"]
${HOMEPHONE_FIELD_XPATH}                    (//input[@placeholder="Phone number"])[3]
${OTHERPHONE_CODE_XPATH}                    (//input[@class="ant-select-input"])[8]
${SELECT_OTHERPHONE_CODE_XPATH}             //div[@title="🇬🇺 +1671"]
${OTHERPHONE_FIELD_XPATH}                   (//input[@placeholder="Phone number"])[4]
${ASSISTANTPHONE_CODE_XPATH}                 (//input[@class="ant-select-input"])[9]
${SELECT_ASSISTANTPHONE_CODE_XPATH}          //div[@title="🇩🇿 +213"]
${ASSISTANTPHONE_FIELD_XPATH}                (//input[@placeholder="Phone number"])[5]
${ASSISTANT_FIELD_XPATH}                      //input[@id="AssisstantName"]
${LAST_STAY_IN_TOIUCH_CALENDAR_XPATH}         //input[@id="LastStayInTouch"]
${PREVIOUS_BTN_CALENDAR_XPATH}                (//button[@class="ant-picker-header-prev-btn"])[2]
${SELECT_LAST_STAY_IN_TOIUCH_CALENDAR_XPATH}        //td[@title="2026-06-02"]
${DEPT_FIELD_XPATH}                                 //input[@id="Department"]
${CREATE_BTN_XPATH}                                 //button[@class="ant-btn css-xogyor css-var-_r_0_ ant-btn-primary ant-btn-color-primary ant-btn-variant-solid"]
${CREATE_SUCCESS_MSG_XPATH}                         //span[text()='Record created successfully!']

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
${SELECT_REPORT_TO_DROPDOWN_EDITED_XPATH}          //div[@title="Ashfaq Ali"]
${SELECT_CONTACTOWNER_DROPDOWN_EDITED_XPATH}       (//div[@title="Admin User"])[2]
${UPDATE_BTN_XPATH}                                 //button[@class="ant-btn css-xogyor css-var-_r_0_ ant-btn-primary ant-btn-color-primary ant-btn-variant-solid"]
${EDITED_SUCCESS_MSG_XPATH}                         //span[text()='Contacts updated successfully!']

#Clone Contact
${CLONE_ICON_XPATH}                  //li[@data-menu-id="rc-menu-uuid-clone"]
${CLONE_CONTACT_POPUP_XPATH}        //div[text()='Clone Record - Contacts']
${CLONE_BTN_XPATH}                  //button[@class="ant-btn css-xogyor css-var-_r_0_ ant-btn-primary ant-btn-color-primary ant-btn-variant-solid"]
${CLONE_SUCCESS_MSG_XPATH}          //span[text()='Record created successfully!']

