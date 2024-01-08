*** Settings ***
Resource    ../../pageObjects/base/base.robot
Resource    homePageLocators.yaml
Library    AppiumLibrary

*** Keywords ***
Verify Home Page Appears
    Wait Until Element Is Visible    ${logoHomePage}

Click Sign In Button On Home Page
    