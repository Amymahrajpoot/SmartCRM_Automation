*** Settings ***
Library    SeleniumLibrary

*** Variables ***
#Table Settings
${RESET_ICON_XPATH}         //a[text()='Reset']
${TABLE_SETTINGS_XPATH}     (//span[@aria-label="setting"])[2]
${NAME_CHECKBOX_XPATH}      //span[text()='Name']/ancestor::div[@role='treeitem']//span[@role='checkbox']
${MOBILE_CHECKBOX_XPATH}    //span[text()='Mobile']/ancestor::div[@role='treeitem']//span[@role='checkbox']
${NOTES_CHECKBOX_XPATH}     //span[text()='Notes']/ancestor::div[@role='treeitem']//span[@role='checkbox']

#Full Screen
${FULL_SCREEN_XPATH}        //span[@class="anticon anticon-fullscreen"]
${EXIST_FULL_SCREEN_XPATH}      //span[@class="anticon anticon-fullscreen-exit"]

#Pagination
${ROW_PER_PAGE_XPATH}       //div[@title="20 / page"]
${SELECT_ROW_PER_PAGE_XPATH}    //div[text()='10 / page']

#Mode
${DARH_MODE_XPATH}         (//button[@class="ant-btn css-xogyor css-var-_r_0_ ant-btn-text ant-btn-color-default ant-btn-variant-text ant-btn-icon-only"])[2]
${LIGHT_MODE_XPATH}         (//button[@class="ant-btn css-xogyor css-var-_r_0_ ant-btn-text ant-btn-color-default ant-btn-variant-text ant-btn-icon-only"])[2]

#Setup
${SETUP_ICON_XPATH}     (//span[@class="anticon anticon-setting"])[1]
${SETUP_POPUP_XPATH}    //div[text()='Setup']
${CONFG_DROPDOWN_XPATH}     (//div[@class="ant-menu-submenu-title"])[2]
${COLLECTIONS_XPATH}                         //li[@data-menu-id="rc-menu-uuid-/config/collections"]
${COLLECTIONS_PAGE_XPATH}                     //h2[text()='Collections']
${OPTIONSETS_XPATH}                          //li[@data-menu-id="rc-menu-uuid-/config/option-sets"]
${OPTIONSETS_PAGE_XPATH}                    //h2[text()='Option Sets']
${USERS_XPATH}                             //li[@data-menu-id="rc-menu-uuid-/users"]
${USERS_PAGE_XPATH}                         //h2[text()='Users Management']
${ROLES_XPATH}                             //li[@data-menu-id="rc-menu-uuid-/roles"]
${ROLES_PAGE_XPATH}                         //h2[text()='Roles Management']