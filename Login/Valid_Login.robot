*** Settings ***
Resource    Launch_Website.resource
Suite Teardown    Close Browser

*** Test Cases ***
Valid Login
    [Documentation]    Logs in with correct credentials and verifies successful login
    Login
    Log    Login successful
