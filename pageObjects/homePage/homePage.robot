*** Settings ***
Variables                            homePage-locators.yaml
Resource                             ../base/base.robot

*** Keywords ***

Verify Homepage Appears
    Wait Until Element Is Visible    ${appLogo}
    Wait Until Element Is Visible    ${signInButton}
    Wait Until Element Is Visible    ${searchButton}
    Wait Until Element Is Visible    ${checkInButton}

Click Sign In on Homepage
    Click Element                    ${signInButton}
