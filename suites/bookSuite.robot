*** Settings ***
# import resources and libraries
Resource    ../pageObjects/homePageObject/homePage.robot
Resource    ../pageObjects/loginPageObject/loginPage.robot
Resource    ../pageObjects/bookPageObject/bookPage.robot
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
    Verify Button Book Is Visible
    Click Book Book Button In Home Page
    Verify Book Page Is Visible
    Click Field City From
    Verify Field City From Is Visible
    Click Field City From Which Are Desired
    Click Field City To
    Verify Field City To Is Visible
    Click Field City To Which Are Desired
    Click Field Class 
    Verify Field Class Is Visible
    Click Field Class To Which Are Desired
    Click Start Date Button
    Verify Field Start Date Is Visible
    Click Field Start Date To Which Are Desired
    Click Button Ok
    Click End Date Button
    Verify Field End Date Is Visible
    Click Field End Date To Which Are Desired
    Click Ok Button
    Checklist Field Flights And Hotels 
    Checklist Field Days
    Click Button Book In Book Page
    Verify List Book Price Is Visible
    Select Price Book Which Are Desired
    Click Button Book With Selected Price
    Confirmed Book Price
    Verify Book Is Succesfully
    Close Flights application

# User should be able to Book Flights