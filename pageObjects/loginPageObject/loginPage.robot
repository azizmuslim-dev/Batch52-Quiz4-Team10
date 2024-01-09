*** Settings ***
Resource    ../../pageObjects/base/base.robot
Variables    loginPageLocators.yaml

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