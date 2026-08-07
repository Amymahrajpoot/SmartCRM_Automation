*** Settings ***
Library         SeleniumLibrary
Resource        Search_Lead.resource
Library    DataDriver    ../Data/Lead_Data.xlsx    sheet_name=Sheet1
Test Template       Search Lead

*** Keywords ***
Search Lead
