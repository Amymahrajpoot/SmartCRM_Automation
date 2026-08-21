*** Settings ***
Library         SeleniumLibrary
Resource        Task.resource

*** Keywords ***
Edit Task
    Log To Console    <<<Editing the Task>>>>
    Click Element    ${MORE_ICON_XPATH}
    Wait Until Element Is Visible    ${EDIT_XPATH}     5s
    Click Element    ${EDIT_XPATH}
    Wait Until Element Is Visible    ${EDIT_TASK_POPUP_XPATH}    5s
    Click Element    ${SELECTED_TASK_SUBTYPE_DROPDOWN_XPATH}
    Click Element    ${SELECT_EDITED_TASK_SUBTYPE_XPATH}
    Click Element    ${COMMENTS_XPATH}
    Press Keys       ${COMMENTS_XPATH}      CTRL+A+BACKSPACE
    Input Text    ${COMMENTS_XPATH}    ${EDITED_COMMENT_TEXT}
    Click Element    ${SELECTED_PRIORITY_DROPDOWN_XPATH}
    Click Element    ${SELECT_EDITED-PRIORITY_XPATH}
    Click Element    ${UPDATE_RECORD_BUTTON_XPATH}
    Log To Console    <<<Task record updated successfully!>>>
    Wait Until Element Is Visible    ${UPDATE_SUCCESS_MESSAGE_XPATH}    5S


*** Test Cases ***
Verfiy that the user can Edit/Update the Contact
    [Documentation]    Requirement: 42 - Update the Task
    [Tags]    smoke
    Edit Task