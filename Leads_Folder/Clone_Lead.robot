*** Settings ***
Library         SeleniumLibrary
Resource        Lead.resource

*** Keywords ***
Clone Lead
    Set Selenium Speed    0.1s
    Click Element    ${MORE_ICON_XPATH}
    Click Element    ${CLONE_OPTION_XPATH}
    Wait Until Element Is Visible    ${CLONE_POPUP_XPATH}    5s
    Click Element    ${CLONE_BUTTON_XPATH}
    Wait Until Element Is Visible    ${SUCCESS_MESSAGE_XPATH}    5s
    Log To Console    <<<Lead cloned successfully!>>>
    Wait Until Element Is Visible    ${BACK_ICON_XPATH}     5s
    Click Element    ${BACK_ICON_XPATH}

*** Test Cases ***
Verfiy that the user can Clone the Lead
    [Documentation]    Requirement: 42 - clone lead
    [Tags]    smoke    critical    login
    Clone Lead