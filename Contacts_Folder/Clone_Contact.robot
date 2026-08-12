*** Settings ***
Library         SeleniumLibrary
Resource        Contact.resource

*** Keywords ***
Clone Contact
    Set Selenium Speed    0.5s
    Click Element    ${MORE_ICON_XPATH}
    Click Element    ${CLONE_ICON_XPATH}
    Wait Until Element Is Visible    ${CLONE_CONTACT_POPUP_XPATH}    5s
    Click Element    ${CLONE_BTN_XPATH}
    Wait Until Element Is Visible    ${CLONE_SUCCESS_MSG_XPATH}    5s
    Log To Console    <<<Contact cloned successfully!>>>
    Click Element    ${BACK_ICON_XPATH}

*** Test Cases ***
Verfiy that the user can Clone the Contact
    [Documentation]    Requirement: 42 - clone Contact
    [Tags]    smoke    critical    login
    Clone Contact