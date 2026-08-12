*** Settings ***
Library         SeleniumLibrary
Resource        Contact.resource

*** Keywords ***
Delete Contact
    Log To Console    <<<Deleting Contact Record>>>
    Click Element    ${MORE_ICON_XPATH}
    Click Element    ${DELETE_ICON_XPATH}
    Wait Until Element Is Visible    ${DELETE_POPUP_XPATH}      5s
    Click Element    ${DELETE_BTN_XPATH}
    Wait Until Element Is Visible    ${DELETED_SUCCESS_MSG_XPATH}    5s
    Log To Console    <<<Contact record deleted successfully!>>>

*** Test Cases ***
Verfiy that the user can delete the Contact
    [Documentation]    Requirement: 42 - Delete Contact
    [Tags]    smoke    critical    login
    Delete Contact