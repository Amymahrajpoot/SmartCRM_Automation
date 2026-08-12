*** Settings ***
Library         SeleniumLibrary
Resource        Contact.resource

*** Keywords ***
View Contact
    Log To Console    <<<Viewing Contact>>>
    Set Selenium Speed    0.5s
    Click Element    ${CONTACTS_OPTION_XPATH}
    Click Element    ${MORE_ICON_XPATH}
    Click Element    ${VIEW_ICON_XPATH} 
    Wait Until Element Is Visible    ${VIEW_CONTACT_PAGE_XPATH}     5s
    Click Element    ${BACK_ICON_XPATH} 

*** Test Cases ***
Verfiy that the user can View the Contact
    [Documentation]    Requirement: 42 - View Contact
    [Tags]    smoke    critical
    View Contact