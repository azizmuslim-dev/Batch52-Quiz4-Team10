*** Settings ***
# import resources and libraries
Resource    ../pageObjects/homePageObject/homePage.robot
Resource    ../pageObjects/loginPageObject/loginPage.robot
Resource    ../pageObjects/searchPageObject/searchPage.robot
Library    AppiumLibrary
Test Setup           Run Keywords 
...                  Open Flights application    
...                  AND    Login With Valid Credentials
# Test Teardown        Close Flights application

# *** Variables ***
# ${VALID_EMAIL}            support@ngendigital.com
# ${VALID_PASSWORD}         abc123

*** Test Cases ***
User should be able to login with valid credentials
    # Step 2: Verify home page appears
    Verify Home Page Appears
    # Step 8: Verify that the user is logged in
    Verify User Is logged In
    Verify Button Search Is Visible
    Click Search Button In Home Page
    Verify Search Page Is Visible
    Input Search Field With Valid Value
    Click Search Button For Get The Search Result
    Verify Search Result Page Is Visible
    Close Flights application


# User should be able to Book Flights