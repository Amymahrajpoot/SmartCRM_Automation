*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${TABLE_SETTINGS_XPATH}     (//span[@aria-label="setting"])[2]
${NAME_CHECKBOX_XPATH}      //span[text()='Name']/ancestor::div[@role='treeitem']//span[@role='checkbox']
${MOBILE_CHECKBOX_XPATH}    //span[text()='Mobile']/ancestor::div[@role='treeitem']//span[@role='checkbox']
${NOTES_CHECKBOX_XPATH}     //span[text()='Notes']/ancestor::div[@role='treeitem']//span[@role='checkbox']