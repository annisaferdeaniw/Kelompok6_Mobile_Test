*** Settings ***
Resource        ../base/base.robot
Variables       signin-locator.yaml

*** Keywords ***
Input Username On Sign in Page
    [Arguments]   ${username}
    Input Text    ${username-input}    ${username}

Input Password On Sign in Page
    [Arguments]   ${password}
    Input Text    ${password-input}    ${password}

Click Sign In Button On Sign in Page
    Click Element    ${sign-in-button}
