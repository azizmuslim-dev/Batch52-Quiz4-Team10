*** Settings ***
# import from directory base.robot
Resource    ../pageObjects\homePageObject\homePage.robot
Library    AppiumLibrary

*** Test Cases ***
User should be able to login with valid credentials
    # Step 1: Open the application
    Open Flights application
    # Step 2: Verify home page appears
    Verify Home Page Appears
    # Step 3: Click on the login button
    Click Sign In Button On Home Page
    # Step 4: Verify Login page appears
    # Step 4: Input the username
    # Step 5: Input the password
    # Step 6: Click on the login button
    # Step 7: Verify that the user is logged in
    # Step 8: Close the application
    Close Flights application

# User should not be able to login with invalid credentials