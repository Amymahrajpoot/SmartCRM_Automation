*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${MORE_ICON_XPATH}          (//button[@class="ant-btn css-xogyor css-var-_r_0_ ant-btn-text ant-btn-color-default ant-btn-variant-text ant-btn-sm ant-btn-icon-only ant-dropdown-trigger"])[1]
${CLONE_OPTION_XPATH}       //li[@data-menu-id="rc-menu-uuid-clone"]
${CLONE_POPUP_XPATH}        //div[text()='Clone Record - Leads']
${CLONE_BUTTON_XPATH}       //button[@class="ant-btn css-xogyor css-var-_r_0_ ant-btn-primary ant-btn-color-primary ant-btn-variant-solid"]
${SUCCESS_MESSAGE_XPATH}    //span[text()='Record created successfully!']
${BACK_ICON_XPATH}          (//button[@class="ant-btn css-xogyor css-var-_r_0_ ant-btn-text ant-btn-color-default ant-btn-variant-text ant-btn-icon-only"])[5]