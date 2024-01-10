*** Settings ***
Variables    searchPageLocators.yaml
Library    AppiumLibrary

*** Keywords ***
Verify Button Search Is Visible
    Wait Until Element Is Visible    ${searchButton}
    Click Element                    ${searchButton}
    Wait Until Element Is Visible    ${verifySearchButton}
    Input Text                       ${fieldSearch}                DA935
    Click Element                    ${okSearch}