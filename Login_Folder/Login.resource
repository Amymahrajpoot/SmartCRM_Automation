*** Settings ***
Library    SeleniumLibrary


*** Variables ***
# login Folder XPath
${EMAIL_FIELD_XPATH}          //input[@id='email']
${PASSWORD_FIELD_XPATH}      //input[@id='password']
${LOGIN_BUTTON_XPATH}        //button[@type="submit"]
${SUCCESS_ELEMENT_XPATH}     //*[contains(text(),'Login successful!')]

*** Keywords ***
Open My Browser
    Open Browser     http://172.16.2.87/login      Chrome      options=add_experimental_option("detach", True)
#    Open Browser    https://test.salesforce.com/    Edge
    Maximize Browser Window
