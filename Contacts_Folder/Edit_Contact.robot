*** Settings ***
Library         SeleniumLibrary
Resource        Contact.resource

*** Keywords ***
Edit Contact
    Log To Console    <<<Editing the Contact>>>>
    Click Element    ${MORE_ICON_XPATH}
    Wait Until Element Is Visible    ${EDIT_ICON_XPATH}     5s
    Click Element    ${EDIT_ICON_XPATH} 
    Wait Until Element Is Visible    ${EDIT_CONTACT_POPUP_XPATH}    5s
    Click Element    ${TITLE_FIELD_XPATH}
    Press Keys      ${TITLE_FIELD_XPATH}       CTRL+A+BACKSPACE
    Input Text    ${TITLE_FIELD_XPATH}       ${TITLE_FIELD_EDITED_TEXT}
    Click Element    ${FIRST_NAME_FIELD_XPATH}
    Press Keys      ${FIRST_NAME_FIELD_XPATH}        CTRL+A+BACKSPACE
    Input Text    ${FIRST_NAME_FIELD_XPATH}    ${FIRST_NAME_FIELD_EDITED_TEXT}
    Click Element    ${LAST_NAME_FIELD_XPATH}
    Press Keys      ${LAST_NAME_FIELD_XPATH}        CTRL+A+BACKSPACE
    Input Text    ${LAST_NAME_FIELD_XPATH}    ${LAST_NAME_FIELD_EDITED_TEXT}
    Click Element    ${EMAIL_FIELD_XPATH}
    Press Keys       ${EMAIL_FIELD_XPATH}       CTRL+A+BACKSPACE
    Input Text    ${EMAIL_FIELD_XPATH}    ${EMAIL_FIELD_EDITED_TEXT}
    Click Element    ${UPDATES_FIELD_XPATH}
    Press Keys       ${UPDATES_FIELD_XPATH}       CTRL+A+BACKSPACE
    Input Text    ${UPDATES_FIELD_XPATH}    ${UPDATES_FIELD_EDITED_TEXT}
    Click Element    ${REPORT_TO_DROPDOWN_XPATH}
    Wait Until Element Is Visible    ${SELECT_REPORT_TO_DROPDOWN_EDITED_XPATH}           5s
    Click Element    ${SELECT_REPORT_TO_DROPDOWN_EDITED_XPATH}
    Click Element    ${CONTACTOWNER_DROPDOWN_XPATH}
    Wait Until Element Is Visible    ${SELECT_CONTACTOWNER_DROPDOWN_EDITED_XPATH}       5s
    Click Element    ${SELECT_CONTACTOWNER_DROPDOWN_EDITED_XPATH}
    Click Element    ${UPDATE_BTN_XPATH}
    Wait Until Element Is Visible    ${EDITED_SUCCESS_MSG_XPATH}

*** Test Cases ***
Verfiy that the user can Edit/Update the Contact
    [Documentation]    Requirement: 42 - Update the Contact
    [Tags]    smoke
    Edit Contact