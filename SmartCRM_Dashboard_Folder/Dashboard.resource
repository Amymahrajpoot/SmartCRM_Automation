*** Settings ***
Library    SeleniumLibrary

*** Variables ***
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

#Logout
${PROFILE_ICON_XPATH}                   //span[@class="ant-avatar ant-avatar-sm ant-avatar-circle ant-avatar-icon css-var-_r_0_ ant-avatar-css-var css-xogyor"]
${LOGOUT_BTN_XPATH}                     //button[@class="ant-btn css-xogyor css-var-_r_0_ ant-btn-primary ant-btn-dangerous ant-btn-color-dangerous ant-btn-variant-solid ant-btn-block"]
${LOGIN_PAGE_XPATH}                     //div[@class="ant-card ant-card-bordered css-xogyor css-var-_r_0_"]