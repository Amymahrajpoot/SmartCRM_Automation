*** Settings ***
Library         SeleniumLibrary
Resource        Lead.resource
Resource        ../Login_Folder/Login.resource
Library         DataDriver    ../Data_Folder/Edit_Lead.xlsx    sheet_name=Sheet1
Test Template      Edit_Lead

*** Keywords ***
Edit Lead
    [Arguments]    ${TITLE_FIELD_EDITED_TEXT}   ${FIRSTNAME_FIELD_EDITED_TEXT}   ${LASTNAME_FIELD_EDITED_TEXT}  ${NAME_FIELD_EDITED_TEXT}     ${LINKDIN_EDITED_TEXT}
    [Documentation]    Edit Lead

    Log To Console   <<<Editing Lead from the Actions column>>>
    Click Element    ${LEADS_XPATH}
    Click Element    ${MORE_ICON_XPATH}
    Click Element    ${EDIT_XPATH}
    Wait Until Element Is Visible    ${EDIT_POPUP_XPATH}        5s


    Log To Console   <<<Editing Prospect Information>>>
    Click Element    ${TITLE_FIELD_XPATH}
    Press Keys       ${TITLE_FIELD_XPATH}    CTRL+A+BACKSPACE
    Input Text       ${TITLE_FIELD_XPATH}    ${TITLE_FIELD_EDITED_TEXT}

    Click Element    ${FIRSTNAME_FIELD_XPATH}
    Press Keys       ${FIRSTNAME_FIELD_XPATH}    CTRL+A+BACKSPACE
    Input Text       ${FIRSTNAME_FIELD_XPATH}    ${FIRSTNAME_FIELD_EDITED_TEXT}

    Click Element    ${LASTNAME_FIELD_XPATH}
    Press Keys       ${LASTNAME_FIELD_XPATH}    CTRL+A+BACKSPACE
    Input Text       ${LASTNAME_FIELD_XPATH}    ${LASTNAME_FIELD_EDITED_TEXT}

    Click Element    ${NAME_FIELD_XPATH}
    Press Keys    ${NAME_FIELD_XPATH}    CTRL+A+BACKSPACE
    Input Text    ${NAME_FIELD_XPATH}    ${NAME_FIELD_EDITED_TEXT}

    Log To Console   <<<Editing Contact Information>>>
    Click Element    ${LINKDIN_XPATH} 
    Press Keys    ${LINKDIN_XPATH}     CTRL+A+BACKSPACE
    Input Text    ${LINKDIN_XPATH}    ${LINKDIN_EDITED_TEXT}
    
    Log To Console    <<<Editing Company Information>>>
    Click Element    ${INDUSTRY_XPATH}
    Wait Until Element Is Visible    ${SELECT_INDUSTRY_EDITED_XPATH}        5s
    Click Element    ${SELECT_INDUSTRY_EDITED_XPATH}

    Click Element    ${EMPLOYEES_XPATH}
    Press Keys    ${EMPLOYEES_XPATH}    CTRL+A+BACKSPACE
    FOR    ${i}    IN RANGE    7
        Click Element    ${EMPLOYEES_COUNTER_EDITED_XPATH}
    END

    Log To Console    <<<Editing Financial Information>>>
    Click Element    ${NUMER_OF_LOCATIONS_XPATH}
    Press Keys     ${NUMER_OF_LOCATIONS_XPATH}     CTRL+A+BACKSPACE
    FOR    ${i}    IN RANGE    9
        Click Element   ${NUMER_OF_LOCATIONS_COUNTER_EDITED_XPATH}
    END

    Log To Console    <<<Editing Lead Details>>>
    Click Element    ${RATING_XPATH}
    Wait Until Element Is Visible    ${SELECT_RATING_EDITED_XPATH}      5s
    Click Element    ${SELECT_RATING_EDITED_XPATH}

    Log To Console    <<<Editing Address & Prefrences>>>
    Click Element    ${EMIAL_OPT_OUT_EDITED_XPATH}

    Log To Console    <<<Editing Dates>>>
    Click Element    ${LAST_ACTIVITY_DATE_XPATH}  
    Click Element    ${PREVIOUS_LAST_ACTIVITY_DATE_XPATH} 
    Click Element    ${SELECT_LAST_ACTIVITY_DATE_EDITED_XPATH}
    
    Click Element    ${LAST_TRANSFER_DATE_XPATH}
    Click Element    ${SELECT_LAST_TRANSFER_DATE_EDITED_XPATH}
    
#    Log To Console    <<<Editing Relationships>>>
#    Click Element    ${LEAD_PARTNER_CONTACT_XPATH}
#    Click Element    ${SELECT_LEAD_PARTNER_CONTACT_XPATH}

    Log To Console    <<<Updating the Lead record>>>
    Click Element    ${UPDATE_RECORD_BUTTON_XPATH}

    Log To Console    <<<Lead record updated successfully!>>>
    Wait Until Element Is Visible    ${UPDATE_SUCCESS_MESSAGE_XPATH}

*** Test Cases ***
Verfiy that the user can Edit/Update the Lead using  ${TITLE_FIELD_EDITED_TEXT}   ${FIRSTNAME_FIELD_EDITED_TEXT}   ${LASTNAME_FIELD_EDITED_TEXT}  ${NAME_FIELD_EDITED_TEXT}     ${LINKDIN_EDITED_TEXT}
    [Documentation]    Requirement: 42 - Update the lead
    [Tags]    smoke

