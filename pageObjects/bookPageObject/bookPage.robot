*** Settings ***
Variables    bookPageLocators.yaml
Library    AppiumLibrary

*** Keywords ***
Verify Button Book Is Visible
    Wait Until Element Is Visible        ${bookButtonPage}
    Click Element                        ${bookButtonPage}
    Wait Until Element Is Visible        ${oneWayButtonPage}
    Click Element                        ${selectCityFromButton}
    Wait Until Element Is Visible        ${cityFromSelectedButton}
    Click Element                        ${cityFromSelectedButton}
    Click Element                        ${selectCityToButton}
    Wait Until Element Is Visible        ${cityToSelectedButton}
    Click Element                        ${cityToSelectedButton}
    Click Element                        ${classButton}
    Wait Until Element Is Visible        ${classSelectedButton}
    Click Element                        ${classSelectedButton}
    Click Element                        ${startDateButton}
    Wait Until Element Is Visible                        ${startDateSelectedButton}
    Click Element                        ${startDateSelectedButton}
    Click Element                        ${okStartDate}
    Click Element                        ${endDateButton}
    Wait Until Element Is Visible                        ${endDateSelectedButton}
    Click Element                        ${endDateSelectedButton}
    Click Element                        ${okEndDateButton}
    Click Element                        ${flightHotelsButton}
    Click Element                        ${checkBoxDays}
    Click Element                        ${bookButton}
    Wait Until Element Is Visible        ${validPriceButton}
    Click Element                        ${validPriceButton}
    Click Element                        ${priceButtonSelected}
    Click Element                        ${priceConfirmed}
    Wait Until Element Is Visible        ${validBookedSucceeded}
