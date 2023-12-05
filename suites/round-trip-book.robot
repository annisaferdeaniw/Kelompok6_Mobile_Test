*** Settings ***
Resource    ../pageObjects/loginPageObject/login.robot
Resource    ../pageObjects/base/base.robot
Resource    ../pageObjects/bookPageObject/book.robot
Resource    ../pageObjects/searchPageObject/search.robot


*** Variables ***
${valid-username}       support@ngendigital.com
${valid-password}       abc123
${invalid-username}     invalid
${invalid-password}     invalid
${valid-number}         DA935


*** Test Cases ***

(negative) Login
    open flight application
    click sign in button home
    input username    ${invalid-username} 
    password input    ${invalid-password}
    click sign in button

login
    open flight application
    click sign in button home
    input username    ${valid-username}
    password input    ${valid-password}
    click sign in button

(negative) round trip booking tanpa click dropdown,radio button, dan date
    click book menu
    click round trip tab
    click book button

(negative) konfirmasi booking tanpa clik harga tiket
    click confirm button

(positive) round trip booking valid
    open flight application
    click sign in button home
    input username    ${valid-username}
    password input    ${valid-password}
    click sign in button
    click book menu
    click round trip tab
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

(positive) search flight number
    open flight application
    click sign in button home
    input username    ${valid-username}
    password input    ${valid-password}
    click sign in button
    click search in button home
    input number flight     ${valid-number}
    click search



