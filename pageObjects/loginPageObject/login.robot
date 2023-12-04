*** Settings ***
Resource        ../base/base.robot
Variables       login-locator.yaml


*** Keywords ***
click sign in button home
    Click Element    ${home-sign-in-button}

input username
    [Arguments]    ${username}
    Wait Until Element Is Visible    ${username-input}
    Input Text    ${username-input}    ${username}

password input
    [Arguments]    ${password}
    Wait Until Element Is Visible    ${password-input}
    Input Text    ${password-input}    ${password}

click sign in button
    Click Element    ${sign-in-button}
