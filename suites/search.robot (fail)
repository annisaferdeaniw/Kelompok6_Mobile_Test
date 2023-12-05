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

(positive) search flight number
    open flight application
    click sign in button home
    input username    ${valid-username}
    password input    ${valid-password}
    click sign in button
    click search in button home
    input number flight     ${valid-number}
    click search
    close flight application

(negative) Verify Failed Search Flight Number - Empty Flight Number
    open flight application
    click sign in button home
    input username    ${valid-username}
    password input    ${valid-password}
    click sign in button
    click search in button home
    Input Empty Flight Number 
    click search
    close flight application

(negative) Verify Failed Search Flight Number - Lowercase Flight Number
    open flight application
    click sign in button home
    input username    ${valid-username}
    password input    ${valid-password}
    click sign in button
    click search in button home
    Input Valid Flight Number - Lowercase
    click search
    close flight application
