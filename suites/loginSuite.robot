*** Settings ***
# import resources and libraries
Resource    ../pageObjects/homePageObject/homePage.robot
Resource    ../pageObjects/loginPageObject/loginPage.robot
Library    AppiumLibrary
Test Setup           Run Keywords 
...                  Open Flights application    
...                  AND    Login With Valid Credentials

# *** Variables ***
# ${VALID_EMAIL}            support@ngendigital.com
# ${VALID_PASSWORD}         abc123

*** Test Cases ***
User should be able to login with valid credentials
    # Step 2: Verify home page appears
    Verify Home Page Appears
    # Step 3: Click on the login button
    # Click Sign In Button On Home Page
    # Step 4: Verify Login page appears
    # Verify Login Appears
    # Step 5: Input the username
    # Input User Email on Login Page    ${VALID_EMAIL} 
    # Step 6: Input the password
    # Input User password on Login Page    ${VALID_PASSWORD}
    # Step 7: Click on the login button
    # Click Sign In Button on Login Page
    # Step 8: Verify that the user is logged in
    Verify User Is logged In