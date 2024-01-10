*** Settings ***
Variables    bookPageLocators.yaml
Library    AppiumLibrary

*** Keywords ***
Verify Button Book Is Visible
    Wait Until Element Is Visible        ${bookButtonPage}

Click Book Book Button In Home Page
    Click Element                        ${bookButtonPage}

Verify Book Page Is Visible
    Wait Until Element Is Visible        ${oneWayButtonPage}

Click Field City From
    Click Element                        ${selectCityFromButton}

Verify Field City From Is Visible
    Wait Until Element Is Visible        ${cityFromSelectedButton}

Click Field City From Which Are Desired
    Click Element                        ${cityFromSelectedButton}

Click Field City To
    Click Element                        ${selectCityToButton}
    
Verify Field City To Is Visible
    Wait Until Element Is Visible        ${cityToSelectedButton}

Click Field City To Which Are Desired
    Click Element                        ${cityToSelectedButton}

Click Field Class 
    Click Element                        ${classButton}

Verify Field Class Is Visible
    Wait Until Element Is Visible        ${classSelectedButton}

Click Field Class To Which Are Desired
    Click Element                        ${classSelectedButton}

Click Start Date Button
    Click Element                        ${startDateButton}

Verify Field Start Date Is Visible
    Wait Until Element Is Visible                        ${startDateSelectedButton}

Click Field Start Date To Which Are Desired
    Click Element                        ${startDateSelectedButton}
    
Click Button Ok
    Click Element                        ${okStartDate}

Click End Date Button
    Click Element                        ${endDateButton}

Verify Field End Date Is Visible
    Wait Until Element Is Visible                        ${endDateSelectedButton}

Click Field End Date To Which Are Desired
    Click Element                        ${endDateSelectedButton}

Click Ok Button
    Click Element                        ${okEndDateButton}

Checklist Field Flights And Hotels 
    Click Element                        ${flightHotelsButton}

Checklist Field Days
    Click Element                        ${checkBoxDays}

Click Button Book In Book Page
    Click Element                        ${bookButton}

Verify List Book Price Is Visible
    Wait Until Element Is Visible        ${validPriceButton}

Select Price Book Which Are Desired
    Click Element                        ${validPriceButton}

Click Button Book With Selected Price
    Click Element                        ${priceButtonSelected}

Confirmed Book Price
    Click Element                        ${priceConfirmed}

Verify Book Is Succesfully
    Wait Until Element Is Visible        ${validBookedSucceeded}
