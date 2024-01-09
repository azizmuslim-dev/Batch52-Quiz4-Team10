*** Settings ***
Variables    homePageLocators.yaml
Library      AppiumLibrary

*** Keywords ***
Verify Home Page Appears
    Wait Until Element Is Visible    ${logoHomePage}

Click Sign In Button On Home Page
    Wait Until Element Is Visible    ${signInButtonHomePage}
    Click Element                    ${signInButtonHomePage}
    
Verify User Is Logged In
    Wait Until Element Is Visible    ${userNameTextHomePage}
