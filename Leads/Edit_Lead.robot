*** Settings ***
Resource    ../Login/Launch_Website.resource
Suite Setup       Launch Website
Suite Teardown    Close Browser

*** Variables ***
${TABLE_SETTINGS_XPATH}     (//div[@class="ant-pro-table-list-toolbar-setting-items css-xogyor"]//child::div)[2]
${NAME_CHECKBOX_XPATH}      //span[@aria-labelledby="_r_1uf_-Name"]
${EMAIL_CHECKBOX_XPATH}     //span[@aria-labelledby="_r_1uf_-Email"]
${NOTES_CHECKBOX_XPATH}     //span[@aria-labelledby="_r_1uf_-Notes"]
${MORE_ICON_XPATH}          (//button[@class="ant-btn css-xogyor css-var-_r_0_ ant-btn-text ant-btn-color-default ant-btn-variant-text ant-btn-sm ant-btn-icon-only ant-dropdown-trigger"])[1]
${EDIT_XPATH}               //li[@data-menu-id="rc-menu-uuid-edit"]
${EDIT_POPUP_XPATH}         //div[@id="_r_2j1_"]

*** Test Cases ***
Edit Lead
    [Documentation]    Edit Lead
    Log To Console   <<<Adding Columns from the Table Settings>>>
    Set Selenium Speed    1s
    Click Element    ${TABLE_SETTINGS_XPATH}
    Click Element    ${NAME_CHECKBOX_XPATH}
    Click Element    ${EMAIL_CHECKBOX_XPATH}
    Click Element    ${NOTES_CHECKBOX_XPATH}

    Log To Console   <<<Editing Lead from the Actions column>>>
    Click Element    ${MORE_ICON_XPATH}
    Click Element    ${EDIT_XPATH}
    Wait Until Element Is Visible    ${EDIT_POPUP_XPATH}        5s


    Log To Console   <<<Editing Prospect Information>>>
