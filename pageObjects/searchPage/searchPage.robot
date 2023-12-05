*** Settings ***
Variables                            searchPage-locators.yaml
Resource                             ../base/base.robot
Resource                             ../../pageObjects/signInPage/signInPage.robot
Resource                             ../../pageObjects/homePage/homePage.robot
Resource                             ../../pageObjects/dashboardPage/dashboardPage.robot

*** Keywords ***
Verify Search Page Appears
    Wait Until Element Is Visible    ${flightNumberTitleField}
    Wait Until Element Is Visible    ${enterFlightNumberField}
    Wait Until Element Is Visible    ${searchFlightButton2}

Input Valid Flight Number 
    Input Text    ${enterFlightNumberField}    DA935

Input Invalid Flight Number 
    Input Text    ${enterFlightNumberField}    DA123


Input Empty Flight Number 
    Input Text    ${enterFlightNumberField}    ${EMPTY}

Input Valid Flight Number - Lowercase
    Input Text    ${enterFlightNumberField}    da935

Input Valid Flight Number - Lowercase and Uppercase Combination
    Input Text    ${enterFlightNumberField}    dA935

Click Search Flight Number Button 
    Click Element    ${searchFlightButton2}

Verify Flight Number Appears
    Wait Until Element Is Visible    ${flightNumber} 

Verify Login Successfully
    Open Flight Application
    Verify Homepage Appears
    Click Sign In on Homepage
    Verify Sign In Page Appears
    Input Valid User Name
    Input Valid Password
    Click Sign In Button
    Verify Dashboard Page Appears
    
