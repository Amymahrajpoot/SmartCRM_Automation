*** Settings ***
Library         SeleniumLibrary
Resource        Lead.resource

*** Keywords ***
Convert Lead
    Click Element    ${MORE_ICON_XPATH}
    Click Element    ${CONVERT_LEAD_XPATH}
    Wait Until Element Is Visible    ${CONVERT_POPUP_XPATH}
    Click Element    ${RECORD_OWNER_XPATH}
    Click Element    ${SELECT_RECORD_OWNER_XPATH}
    Click Element    ${COONVERT_BUTTON_XPATH}
    Wait Until Element Is Visible    ${CONVERT_SUCCESS_MESSAGE_XPATH}    5s
    Log To Console    <<<Lead record converted successfully!>>>

*** Test Cases ***
Converting Lead Successfully
    [Documentation]    Requirement: 42 Convert the lead
    [Tags]    smoke
    Convert Lead