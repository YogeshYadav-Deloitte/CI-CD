*** Settings ***
Documentation    This robot files includes keywords of login page of rocket chat in web.
Library          SeleniumLibrary

*** Variables ***
${email}            //input[@id='username']
${password}         //input[@id='password']
${login_button}     //*[@id="react-root"]/div/div/div[2]/form/footer/div/button

*** Keywords ***
Login using email and password
    SeleniumLibrary.wait until element is visible      ${email}           30s
    SeleniumLibrary.input text       ${email}           ${user_email}
    SeleniumLibrary.input text       ${password}        ${user_password}
    SeleniumLibrary.click element    ${login_button}

