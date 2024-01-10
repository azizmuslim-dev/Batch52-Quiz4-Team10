*** Settings ***
Resource    ../pageObjects/homePageObject/homePage.robot
Resource    ../pageObjects/loginPageObject/loginPage.robot
Resource    ../pageObjects/bookPageObject/bookPage.robot
Resource    ../pageObjects/searchPageObject/searchPage.robot
Library    AppiumLibrary

Test Setup    Run Keywords 
...    Open Flights application    
...    AND    Login With Valid Credentials
Test Teardown    Close Flights application

*** Test Cases ***
Login Test Case
    Verify Home Page Appears
    Verify User Is logged In

Book Test Case
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

Search Test Case
    Verify Button Search Is Visible
    Click Search Button In Home Page
    Verify Search Page Is Visible
    Input Search Field With Valid Value
    Click Search Button For Get The Search Result
    Verify Search Result Page Is Visible