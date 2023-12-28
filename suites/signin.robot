*** Settings ***
Resource        ../pageObjects/signInPageObject/signInPage.robot
Resource        ../pageObjects/homePageObject/homePage.robot
Variables       ../pageObjects/signInPageObject/signin-locator.yaml
Variables       ../pageObjects/homePageObject/home-locators.yaml

*** Variables ***
${VALID_USERNAME}        support@ngendigital.com
${VALID_PASSWORD}        abc123
${INVALID_USERNAME}      invalid
${INVALID_PASSWORD}      invalid
*** Test Cases ***
Login Valid Credential
    Open Flight Application
    Wait Until Element Is Visible    ${signin-button}
    Click Sign In Button On Home Page
    Wait Until Element Is Visible    ${username-input}
    Input Username On Sign in Page    ${VALID_USERNAME}
    Input Password On Sign in Page    ${VALID_PASSWORD}
    Click Sign In Button On Sign in Page
    Close Flight Application

Login Invalid Credential
    Open Flight Application
    Wait Until Element Is Visible    ${signin-button}
    Click Sign In Button On Home Page
    Wait Until Element Is Visible    ${username-input}
    Input Username On Sign in Page    ${INVALID_USERNAME}
    Input Password On Sign in Page    ${INVALID_PASSWORD}
    Click Sign In Button On Sign in Page
    Close Flight Application