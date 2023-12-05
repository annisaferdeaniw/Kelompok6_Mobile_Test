*** Settings ***
Resource    ../pageObjects/loginPageObject/login.robot
Resource    ../pageObjects/base/base.robot
Resource    ../pageObjects/bookPageObject/book.robot


*** Variables **
${VALID_USERNAME}            support@ngendigital.com
${VALID_PASSWORD}            abc123
${INVLAID_USERNAME}          invalid
${INVALID_PASSWORD}          invalid


*** Test Cases ***
Login Valid Credential
    Open Flight Application
    click sign in button home
    input username                            ${VALID_USERNAME}
    password input                            ${VALID_PASSWORD}
    Click Sign In Button 

(negative) one way trip booking tanpa click dropdown,radio button, dan date
    click book menu
    click oneway trip tab
    click book button

(negative) konfirmasi booking tanpa clik harga tiket
    click confirm button

(positive) oneway trip booking valid
    Open Flight Application
    click sign in button home
    input username                            ${VALID_USERNAME}
    password input                            ${VALID_PASSWORD}
    Click Sign In Button
    click book menu
    click oneway trip tab
    click dropdown from city
    click toronto city
    click dropdown to city
    click paris city
    click dropdown class
    click first class
    click star date
    click date 2 agustus
    click ok date
    click end date
    click date 3 agustus
    click ok date
    click radiobutton flight
    click book button
    click ticket price
    click confirm button
    validation