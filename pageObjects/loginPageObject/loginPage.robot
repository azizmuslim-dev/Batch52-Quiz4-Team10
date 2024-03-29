*** Settings ***
Resource    ../../pageObjects/base/base.robot
Resource    ../homePageObject/homePage.robot
Variables    loginPageLocators.yaml

*** Variables ***
${VALID_EMAIL}            support@ngendigital.com
${VALID_PASSWORD}         abc123

*** Keywords ***
Verify Login Appears
    Wait Until Element Is Visible    ${emailInputLoginPage}
    Wait Until Element Is Visible    ${passwordinputLoginPage}
    Wait Until Element Is Visible    ${signInButtonLoginPage}

Input User Email on Login Page
    [Arguments]    ${email}
    Input Text        ${emailInputLoginPage}     ${email}

Input User password on Login Page
    [Arguments]    ${password}
    Input Text        ${passwordinputLoginPage}     ${password}

Click Sign In Button on Login Page
    Click Element    ${signInButtonLoginPage}

Login With Valid Credentials
    [Arguments]        ${email}=${VALID_EMAIL}    ${password}=${VALID_PASSWORD}
    Verify Home Page Appears
    Click Sign In Button On Home Page
    Verify Login Appears
    Input User Email on Login Page        ${email}
    Input User password on Login Page     ${password}
    Click Sign In Button on Login Page