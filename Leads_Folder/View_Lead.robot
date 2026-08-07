*** Settings ***
Library         SeleniumLibrary
Resource        View_Lead.resource

*** Keywords ***
view Lead
    Log To Console   <<<Viewing created Lead>>>
    Set Selenium Speed    1s
    Click Element    ${MORE_ICON_XPATH}
    Click Element    ${VIEW_XPATH}
    Wait Until Element Is Visible    ${LEADS_PAGE_XPATH}      5s
    Log To Console    <<<Lead Viewed Successfully>>>

    #navigating back
    Click Element    ${BACK_IOCN_XPATH}

*** Test Cases ***
view Lead Successfully
    [Documentation]    Requirement: 42 - View lead
    [Tags]    smoke    critical
    view Lead