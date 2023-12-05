*** Settings ***
Variables                            signInPage-locators.yaml
Resource                             ../base/base.robot

*** Keywords ***

Verify Sign In Page Appears
    Wait Until Element Is Visible    ${appLogo2}
    Wait Until Element Is Visible    ${signInButton2}
    Wait Until Element Is Visible    ${userNameField}
    Wait Until Element Is Visible    ${passwordField}

Input Valid User Name
    Input Text                        ${userNameField}    support@ngendigital.com

Input Invalid User Name
    Input Text                        ${userNameField}    emailtes@gmail.com

Input Empty User Name
    Input Text                        ${userNameField}    ${EMPTY}

Input Valid Password 
    Input Password                    ${passwordField}    abc123

Input Invalid Password
    Input Password                    ${passwordField}    Akuntes1

Input Empty Password 
    Input Text                        ${userNameField}    ${EMPTY}

Click Sign In Button 
    Click Element                     ${signInButton2}


# Verify Invalid Toast Message
#     Wait Until Element Is Visible   ${invalidMessage}
#     Element Text Should Be          ${invalidMessage}   Invalid username/password
#  (Belum tau cara mengambil variable toast message)

