*** Settings ***
Resource        ../base/base.robot
Variables       book-locator.yaml


*** Keywords ***
click book menu
    Wait Until Element Is Visible    ${book-menu}
    Click Element    ${book-menu}

click round trip tab
    Wait Until Element Is Visible    ${round-trip}
    Click Element    ${round-trip}

click book button
    Wait Until Element Is Visible    ${book-button}
    Click Element    ${book-button}

click confirm button
    Wait Until Element Is Visible    ${confirm-button}
    Click Element    ${confirm-button}

click dropdown from city
    Wait Until Element Is Visible    ${DD-from-city}
    Click Element    ${DD-from-city}

click toronto city
    Wait Until Element Is Visible    ${toronto}
    Click Element    ${toronto}

click dropdown to city
    Wait Until Element Is Visible    ${DD-to-city}
    Click Element    ${DD-to-city}

click paris city
    Wait Until Element Is Visible    ${paris}
    Click Element    ${paris}

click dropdown class
    Wait Until Element Is Visible    ${DD-class}
    Click Element    ${DD-class}

click first class
    Wait Until Element Is Visible    ${class}
    Click Element    ${class}

click star date
    Wait Until Element Is Visible    ${star-date}
    Click Element    ${star-date}

click end date
    Wait Until Element Is Visible    ${end-date}
    Click Element    ${end-date}

click date 2 agustus
    Wait Until Element Is Visible    ${pilih-star-date}
    Click Element    ${pilih-star-date}

click date 3 agustus
    Wait Until Element Is Visible    ${pilih-end-date}
    Click Element    ${pilih-end-date}

click ok date
    Wait Until Element Is Visible    ${ok-button}
    Click Element    ${ok-button}

click radiobutton flight
    Wait Until Element Is Visible    ${RB-flight}
    Click Element    ${RB-flight}

click ticket price
    Wait Until Element Is Visible    ${ticket-price}
    Click Element    ${ticket-price}

validation
    Wait Until Element Is Visible    ${reservation-number}
    Element Text Should Be    ${reservation-number}    Your flight is booked. Reservation number is CADX2214
