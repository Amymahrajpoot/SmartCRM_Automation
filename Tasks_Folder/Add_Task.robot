*** Settings ***
Library         SeleniumLibrary
Resource        Task.resource
Resource        ../Login_Folder/Login.resource
Library    DataDriver    ../Data_Folder/Task_Data.xlsx    sheet_name=Sheet1
Test Template      Create Task

*** Keywords ***
Check Task Exists
    [Arguments]    ${Subject_name}
    Wait Until Element Is Not Visible    ${SUCCESS_ELEMENT_XPATH}    10s
    Click Element    ${TASK_OPTION_XPATH}
    Click Element    ${TABLE_SETTINGS_XPATH}
    Click Element    ${SUBJECT_CHECKBOX_XPATH}
    Wait Until Element Is Visible    ${SEARCH_BAR_XPATH}      10s
    Input Text    ${SEARCH_BAR_XPATH}    ${Subject_name}
    Click Element    ${SEARCH_ICON_XPATH}
    Sleep    1s
    ${count}=    Get Element Count    //a[text()='${Subject_name}']
    IF    ${count} > 0
        RETURN    ${TRUE}
    ELSE
        RETURN    ${FALSE}
    END

Create Task
    [Arguments]    ${SUBJECT_FIELD_TEXT}    ${COMMENTS_FIELD_TEXT}   ${MOBILE_CODE_TEXT}  ${MOBILE_NUMBER_TEXT}   ${EMAIL_TEXT}
    Set Selenium Speed    0.2
    Log To Console    <<<Checking if Task already exists>>>
    ${Task_exists}=    Check Task Exists    ${SUBJECT_FIELD_TEXT}

    IF    ${Task_exists}
        Log To Console    <<<Task with Subject name: "${SUBJECT_FIELD_TEXT}" already exists, skipping creation>>>
    ELSE
        Log To Console    <<<Task does not exist, proceeding to create>>>
        Click Element    ${ADD_TASK_BTN_XPATH}
        Wait Until Element Is Visible    ${ADD_TASK_POPUP_XPATH}    timeout=10s

        Log To Console   <<<Validating Subject on Add Task popup>>>
        Click Element    ${CREATE_RECORD_BTN_XPATH}
        Wait Until Element Is Visible    ${VALIDATION_ERROR_MSG_XPATH}     5s
        Log To Console    <<<Task cannot be added since Subject field is empty>>>

        Log To Console   <<<Adding Task Information>>>
        Click Element    ${ASSIGNED_PERSON_DROPDOWN_XPATH}
        Wait Until Element Is Visible    ${SELECT_ASSIGNED_PERSON_XPATH}    5s
        Click Element    ${SELECT_ASSIGNED_PERSON_XPATH}
        Click Element    ${SUBJECT_XPATH}
        Input Text     ${SUBJECT_XPATH}    ${SUBJECT_FIELD_TEXT}
        Click Element    ${ASSIGNED_TO_DROPDOWN_XPATH}
        Click Element    ${SELECT_ASSIGNED_TO_XPATH}
        Click Element    ${TYPE_DROPDOWN_XPATH}
        Click Element    ${SELECT_TYPE_XPATH}
        Click Element    ${TASK_SUBTYPE_DROPDOWN_XPATH}
        Click Element    ${SELECT_TASK_SUBTYPE_XPATH}
        Click Element    ${CALLTYPE_DROPDOWN_XPATH}
        Click Element    ${SELECT_CALLTYPE_XPATH}
        Click Element    ${RELATED_TO_DROPDOWN_XPATH}
        Click Element    ${SELECT_RELATED_TO_XPATH}
        Click Element    ${COMMENTS_XPATH}
        Input Text    ${COMMENTS_XPATH}     ${COMMENTS_FIELD_TEXT}

        Log To Console   <<<Adding Schedule>>>
        Click Element    ${DUE_DATE_CALENDAR_XPATH}
        Click Element    ${SELECT_DUE_DATE_XPATH}
        Sleep    0.5s

        ${completed_date_field}=    Get WebElement    ${COMPLETED_DATE_TIME_CALENDAR_XPATH}
        Execute Javascript    arguments[0].click()    ARGUMENTS    ${completed_date_field}
        Sleep    1s

        ${SELECT_COMPLETED_DATE_SCOPED_XPATH}=    Set Variable
        ...    //div[contains(@class,'ant-picker-dropdown') and not(contains(@class,'ant-picker-dropdown-hidden'))]//td[@title='2026-08-25']

        Wait Until Element Is Visible    ${SELECT_COMPLETED_DATE_SCOPED_XPATH}    timeout=10s
        ${date_cell}=    Get WebElement    ${SELECT_COMPLETED_DATE_SCOPED_XPATH}
        Execute Javascript    arguments[0].click()    ARGUMENTS    ${date_cell}

        Click Element    ${SELECT_COMPLETED_HOUR_XPATH}
        Scroll Element Into View    ${SELECT_COMPLETED_MINUTES_XPATH}
        Click Element    ${SELECT_COMPLETED_MINUTES_XPATH}
        Click Element    ${SELECT_COMPLETED_SECONDS_XPATH}
        Click Element    ${OK_BTN_XPATH}
        Click Element    ${REMINDER_SET_CHECKBOX_XPATH}

        Log To Console   <<<Adding Contact Information>>>
        Click Element    ${EMAIL_XPATH}
        Input Text    ${EMAIL_XPATH}    ${EMAIL_TEXT}
        Click Element    ${MOBILE_CODE_XPATH}
        Input Text    ${MOBILE_CODE_XPATH}     ${MOBILE_CODE_TEXT}
        Click Element    ${SELECT_MOBILE_CODE_XPATH}
        Click Element    ${MOBILE_FIELD_XPATH}
        Input Text    ${MOBILE_FIELD_XPATH}    ${MOBILE_NUMBER_TEXT}

        Log To Console   <<<Adding Additional Information>>>
        Click Element    ${STATUS_DROPDOWN_XPATH}
        Click Element    ${SELECT_STATUS_DROPDOWN_XPATH}
        Click Element    ${PRIORITY_DROPDOWN_XPATH}
        Click Element    ${SELECT_PRIORITY_XPATH}

        Log To Console   <<<Adding Recurrence>>>
        Click Element    ${CREATE_RECURR_SERIES_OF_TASKS_XPATH}
        Click Element    ${RECURRENCE_INTERVAL_XPATH}

        FOR    ${i}    IN RANGE    4
            Click Element    ${RECURRENCE_INTERVAL_COUNTER_XPATH}
        END

        Click Element    ${REPEAT_THIS_TASK_DROPDOWN_XPATH}
        Click Element    ${SELECT_REPEAT_THIS_TASK_XPATH}
        Click Element    ${CREATE_RECORD_BTN_XPATH}
        Wait Until Element Is Visible    ${CREATE_SUCCESS_MSG_XPATH}    5s

    END

*** Test Cases ***
Verfiy that the user can create the task using ${SUBJECT_FIELD_TEXT}    ${COMMENTS_FIELD_TEXT}   ${MOBILE_CODE_TEXT}  ${MOBILE_NUMBER_TEXT}   ${EMAIL_TEXT}
    [Documentation]    Requirement: 42 - create the Task
    [Tags]    smoke