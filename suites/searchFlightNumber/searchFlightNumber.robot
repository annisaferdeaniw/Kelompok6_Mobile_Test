*** Settings ***
Resource        ../../pageObjects/signInPage/signInPage.robot
Resource        ../../pageObjects/homePage/homePage.robot
Resource        ../../pageObjects/dashboardPage/dashboardPage.robot
Resource        ../../pageObjects/searchPage/searchPage.robot

*** Keywords ***
Click Search Flight Number  
   Click Element      //android.widget.Button[@resource-id="com.example.myapplication:id/search_flight"]

*** Test Cases ***
Verify Search Flight Number Successfully - Valid Flight Number
    Verify Login Successfully
    Click Search Flight Number         
    Verify Search Page Appears
    Input Valid Flight Number
    Click Search Flight Number Button
    Verify Flight Number Appears
    Close Application

Verify Failed Search Flight Number - Invalid Flight Number
    Verify Login Successfully
    Click Search Flight Number
    Verify Search Page Appears
    Input Invalid Flight Number
    Click Search Flight Number Button
    Close Application

Verify Failed Search Flight Number - Empty Flight Number
    Verify Login Successfully
    Click Search Flight Number
    Verify Search Page Appears
    Input Empty Flight Number
    Click Search Flight Number Button
    Close Application

Verify Failed Search Flight Number - Lowercase Flight Number
    Verify Login Successfully
    Click Search Flight Number
    Verify Search Page Appears
    Input Valid Flight Number - Lowercase
    Click Search Flight Number Button
    Close Application

Verify Failed Search Flight Number - Combination of Lowercase & Uppercase Flight Number
    Verify Login Successfully
    Click Search Flight Number
    Verify Search Page Appears
    Input Valid Flight Number - Lowercase and Uppercase Combination
    Click Search Flight Number Button
    Close Application

Verify Search Flight Number When User Not Logged In 
    Open Flight Application
    Verify Homepage Appears
    Close Application