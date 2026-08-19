*** Settings ***
Library    SeleniumLibrary

*** Variables ***
#Add Task
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
${CALLTYPE_DROPDOWN_XPATH}              (//div[@class="ant-select-content"]/child::input)[3]
${SELECT_CALLTYPE_XPATH}                //div[text()='Outbound']
${RELATED_TO_DROPDOWN_XPATH}            //input[@id="_r_1ht_"]
${SELECT_RELATED_TO_XPATH}              //div[text()='Leads']
${COMMENTS_XPATH}                       //input[@id="Description"]
${DUE_DATE_CALENDAR_XPATH}              //input[@id="DueDate"]
${SELECT_DUE_DATE_XPATH}                //td[@title="2026-08-31"]
${COMPLETED_DATE_TIME_CALENDAR_XPATH}              //input[@id="CompletedDateTime"]
${SELECT_COMPLETED_DATE_XPATH}                      //td[@title="2026-08-25"]
${SELECT_COMPLETED_HOUR_XPATH}                      (//div[text()='09'])[1]
${SELECT_COMPLETED_MINUTES_XPATH}                   (//div[text()='25'])[2]
${SELECT_COMPLETED_SECONDS_XPATH}                   (//div[text()='00'])[3]
${OK_BTN_XPATH}                                     //li[@class="ant-picker-ok"]/child::button
${REMINDER_SET_CHECKBOX_XPATH}                      (//div[@class="ant-form-item-control-input-content"]/child::label)[1]
${EMAIL_XPATH}                                      //input[@id="Email"]
${MOBILE_CODE_XPATH}                                (//div[@class="ant-select-content"]/child::input)[8]
${SELECT_MOBILE_CODE_XPATH}                         //div[text()='🇵🇰 +92']
${MOBILE_FIELD_XPATH}                               //input[@placeholder="Phone number"]
${STATUS_DROPDOWN_XPATH}                            //input[@id="_r_ai_"]
${SELECT_STATUS_DROPDOWN_XPATH}                     //div[@title="Waiting on someone else"]
${PRIORITY_DROPDOWN_XPATH}                          //input[@id="_r_ak_"]
${SELECT_PRIORITY_XPATH}                            //div[@title="Medium"]
${CREATE_RECURR_SERIES_OF_TASKS_XPATH}              (//div[@class="ant-form-item-control-input-content"]/child::label)[2]
${RECURRENCE_INTERVAL_XPATH}                        //input[@id="RecurrenceInterval"]
${RECURRENCE_INTERVAL_COUNTER_XPATH}                //span[@class="ant-input-number-action ant-input-number-action-up"]
${REPEAT_THIS_TASK_DROPDOWN_XPATH}                  //input[@id="_r_am_"]
${SELECT_REPEAT_THIS_TASK_XPATH}                    //div[@title="Yearly"]
${CREATE_RECORD_BTN_XPATH}                          //button[@class="ant-btn css-xogyor css-var-_r_0_ ant-btn-primary ant-btn-color-primary ant-btn-variant-solid"]
${CREATE_SUCCESS_MSG_XPATH}                         //span[text()='Record created successfully!']

#Subject validation
${VALIDATION_ERROR_MSG_XPATH}                       //div[text()='Please enter Subject']

#Search Contact
${SEARCH_BAR_XPATH}                 //input[@placeholder="Search..."]
${SEARCH_TEXT}
${SEARCH_ICON_XPATH}                //span[@class="anticon anticon-search"]