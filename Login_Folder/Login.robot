*** Settings ***
Library     SeleniumLibrary
Resource    Login.resource
Suite Setup     Open My Browser
Library    DataDriver   ../Data/Login_Data.xlsx    sheet_name=Sheet1
Library    Dialogs
Test Template   Login Scenario

*** Keywords ***
Login Scenario
    [Arguments]     ${email}     ${password}
    Sleep    2s
    Input Text    ${EMAIL_FIELD_XPATH}    ${email}
    Input Password    ${PASSWORD_FIELD_XPATH}    ${password}
    Click Element    ${LOGIN_BUTTON_XPATH}

       IF    '${email}' == 'it.teammobile01@gmail.com' and '${password}' == 'Bss@1234'
                Wait Until Element Is Visible    ${SUCCESS_ELEMENT_XPATH}      15s
       ELSE
            Page Should Contain    Please check your email and password.
       END

*** Test Cases ***
Verify that the user can login using ${email} and ${password}
    [Documentation]    Test has only tag 'requirement: 42'.
    [Tags]    smoke    critical    login
    Login Scenario


