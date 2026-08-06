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
    Open Browser    http://172.16.2.87/login    Chrome    options=add_experimental_option("detach", True); add_experimental_option("prefs", {"autofill.profile_enabled": False, "autofill.credit_card_enabled": False, "credentials_enable_service": False, "profile.password_manager_enabled": False})
    Maximize Browser Window
