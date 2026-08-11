*** Settings ***
Library         SeleniumLibrary
Resource        Lead.resource

*** Keywords ***
Delete Lead
    Log To Console    <<<Deleting Lead Record>>>
    Click Element    ${MORE_ICON_XPATH}
    Click Element    ${DELETE_XPATH}
    Wait Until Element Is Visible    ${DELETE_POPUP_XPATH}      5s
    Click Element    ${DELETE_BUTTON_XPATH}
    Wait Until Element Is Visible    ${DELETE_SUCCESS_MSG_XPATH}    5s
    Log To Console    <<<Lead record deleted successfully!>>>

*** Test Cases ***
Lead deleted Successfully
    [Documentation]    Requirement: 42 - Delete lead
    [Tags]    smoke    critical    login
    Delete Lead