*** Settings ***
Variables    searchPageLocators.yaml
Library    AppiumLibrary

*** Variables ***
${SEARCH_KEY}    DA935

*** Keywords ***
Verify Button Search Is Visible
    Wait Until Element Is Visible    ${searchButtonPage}

Click Search Button In Home Page
    Click Element                    ${searchButtonPage}

Verify Search Page Is Visible
    Wait Until Element Is Visible    ${verifySearchPage}

Input Search Field With Valid Value
    [Arguments]    ${seachKey}=${SEARCH_KEY}
    Input Text                       ${fieldSearch}             ${seachKey}

Click Search Button For Get The Search Result
    Click Element                    ${searchButton}

Verify Search Result Page Is Visible
    Wait Until Element Is Visible    ${verifySearchResult}