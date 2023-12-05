*** Settings ***
Resource        ../base/base.robot
Variables       search-locator.yaml


*** Keywords ***
click search in button home
    Wait Until Element Is Visible    ${home-search-button}
    Click Element    ${home-search-button}
    
input number flight
    [Arguments]    ${number}
    Wait Until Element Is Visible    ${number-input}
    Input Text    ${number-input}    ${number}

click search
    Wait Until Element Is Visible    ${search-button}
    Click Element    ${search-button}
