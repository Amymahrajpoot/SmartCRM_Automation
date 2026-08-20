*** Settings ***
Library    SeleniumLibrary

*** Variables ***
#Add Task
${SUCCESS_ELEMENT_XPATH}     //*[contains(text(),'Login successful!')]
${TASK_OPTION_XPATH}                     //span[text()='Tasks']
${ADD_TASK_BTN_XPATH}                    //span[text()='Add']
${ADD_TASK_POPUP_XPATH}                  //div[text()='Add Record - Tasks']
${ASSIGNED_PERSON_DROPDOWN_XPATH}        //input[@id="AssignPersonId"]
${SELECT_ASSIGNED_PERSON_XPATH}          //div[text()='Admin User']
${SUBJECT_XPATH}                        //input[@id="Subject"]
${ASSIGNED_TO_DROPDOWN_XPATH}           //input[@id="OwnerId"]
${SELECT_ASSIGNED_TO_XPATH}             //div[@class="ant-select-item ant-select-item-option ant-select-item-option-active"]
${TYPE_DROPDOWN_XPATH}                  (//div[@class="ant-select-content"]/child::input)[1]
${SELECT_TYPE_XPATH}                    //div[text()='Other']
${TASK_SUBTYPE_DROPDOWN_XPATH}          //div[text()='Select Task Subtype']/ancestor::div[contains(@class,'ant-select-single')]
${SELECT_TASK_SUBTYPE_XPATH}            //div[text()='Email']
${CALLTYPE_DROPDOWN_XPATH}              //div[text()='Select Call Type']/ancestor::div[contains(@class,'ant-select-single')]
${SELECT_CALLTYPE_XPATH}                //div[text()='Outbound']
${RELATED_TO_DROPDOWN_XPATH}            //div[text()='Select Related To']/ancestor::div[contains(@class,'ant-select-single')]
${SELECT_RELATED_TO_XPATH}              //div[text()='Leads']
${COMMENTS_XPATH}                       //textarea[@id="Description"]
${DUE_DATE_CALENDAR_XPATH}              //input[@id="DueDate"]
${SELECT_DUE_DATE_XPATH}                //td[@title="2026-08-31"]
${COMPLETED_DATE_TIME_CALENDAR_XPATH}              //input[@id="CompletedDateTime"]
${SELECT_COMPLETED_DATE_XPATH}                     //td[@title="2026-08-25"]
${SELECT_COMPLETED_HOUR_XPATH}                      (//div[text()='09'])[1]
${SELECT_COMPLETED_MINUTES_XPATH}                   (//li[@data-value="25"])[1]
${SELECT_COMPLETED_SECONDS_XPATH}                   (//div[text()='00'])[3]
${OK_BTN_XPATH}                                     //li[@class="ant-picker-ok"]/child::button
${REMINDER_SET_CHECKBOX_XPATH}                      (//div[@class="ant-form-item-control-input-content"]/child::label)[1]
${EMAIL_XPATH}                                      //input[@id="Email"]
${MOBILE_CODE_XPATH}                                //div[text()='Code']/ancestor::div[contains(@class,'ant-form-item')]//input[@class='ant-select-input']
${SELECT_MOBILE_CODE_XPATH}                         //div[text()='🇵🇰 +92']
${MOBILE_FIELD_XPATH}                               //input[@placeholder="Phone number"]
${STATUS_DROPDOWN_XPATH}                            //div[text()='Select Status']/ancestor::div[contains(@class,'ant-form-item')]//input[@class='ant-select-input']
${SELECT_STATUS_DROPDOWN_XPATH}                     //div[@title="Waiting on someone else"]
${PRIORITY_DROPDOWN_XPATH}                          //div[text()='Select Priority']/ancestor::div[contains(@class,'ant-form-item')]//input[@class='ant-select-input']
${SELECT_PRIORITY_XPATH}                            //div[@title="Medium"]
${CREATE_RECURR_SERIES_OF_TASKS_XPATH}              (//div[@class="ant-form-item-control-input-content"]/child::label)[2]
${RECURRENCE_INTERVAL_XPATH}                        //input[@id="RecurrenceInterval"]
${RECURRENCE_INTERVAL_COUNTER_XPATH}                //span[@class="ant-input-number-action ant-input-number-action-up"]
${REPEAT_THIS_TASK_DROPDOWN_XPATH}                  //div[text()='Select Repeat This Task']/ancestor::div[contains(@class,'ant-form-item')]//input[@class='ant-select-input']
${SELECT_REPEAT_THIS_TASK_XPATH}                    //div[@title="Yearly"]
${CREATE_RECORD_BTN_XPATH}                          //button[@class="ant-btn css-xogyor css-var-_r_0_ ant-btn-primary ant-btn-color-primary ant-btn-variant-solid"]
${CREATE_SUCCESS_MSG_XPATH}                         //span[text()='Record created successfully!']

#Subject validation
${VALIDATION_ERROR_MSG_XPATH}                       //div[text()='Please enter Subject']

#View Lead
${MORE_ICON_XPATH}        (//button[@class="ant-btn css-xogyor css-var-_r_0_ ant-btn-text ant-btn-color-default ant-btn-variant-text ant-btn-sm ant-btn-icon-only ant-dropdown-trigger"])[1]
${VIEW_XPATH}             //li[@data-menu-id="rc-menu-uuid-view"]
${TASKS_PAGE_XPATH}        //h2[text()='Tasks']
${BACK_IOCN_XPATH}         (//button[@type="button"])[4]

#Search
${SEARCH_BAR_XPATH}         //input[@placeholder="Search..."]
${SEARCH_ICON_XPATH}        //button[@class="ant-btn css-xogyor css-var-_r_0_ ant-btn-default ant-btn-color-default ant-btn-variant-outlined ant-btn-icon-only ant-btn-compact-item ant-btn-compact-last-item ant-input-search-btn"]

#Table Settings
${TABLE_SETTINGS_XPATH}     (//span[@aria-label="setting"])[2]
${SUBJECT_CHECKBOX_XPATH}      //span[text()='Subject']/ancestor::div[@role='treeitem']//span[@role='checkbox']