*** Settings ***
# import resources and libraries
Resource    ../pageObjects/homePageObject/homePage.robot
Resource    ../pageObjects/loginPageObject/loginPage.robot
Library    AppiumLibrary
Test Setup           Open Flights application
Test Teardown        Close Flights application

*** Variables ***
${VALID_EMAIL}            support@ngendigital.com
${VALID_PASSWORD}         abc123

*** Test Cases ***
User should be able to login with valid credentials
    # Step 2: Verify home page appears
    Verify Home Page Appears
    # Step 3: Click on the login button
    Click Sign In Button On Home Page
    # Step 4: Verify Login page appears
    Verify Login Appears
    # Step 4: Input the username
    Input User Email on Login Page    ${VALID_EMAIL} 
    # Step 5: Input the password
    Input User password on Login Page    ${VALID_PASSWORD}
    # Step 6: Click on the login button
    Click Sign In Button on Login Page
    # Step 7: Verify that the user is logged in
    Verify User Is logged In

# User should not be able to login with invalid credentials
    # Step 1: Open the application
    Open Flights application
    # Step 2: Verify home page appears
    Verify Home Page Appears
    # Step 3: Click on the login button
    Click Sign In Button On Home Page
    # Step 4: Verify Login page appears
    Verify Login Appears
    # Step 4: Input the username
    Input User Email on Login Page    ${VALID_EMAIL} 
    # Step 5: Input the password
    Input User password on Login Page    ${VALID_PASSWORD}
    # Step 6: Click on the login button
    Click Sign In Button on Login Page
    # Step 7: Verify that the user is logged in
    Verify User Is logged In
    # Step 8: Close the application
    Close Flights application