*** Settings ***
Library    AppiumLibrary
Variables  login-page-locators.yaml

*** Variables ***
${VALID_USERNAME}        support@ngendigital.com
${VALID_PASSWORD}        abc123
${INVALID_USERNAME}      kelompok2@sanber.com
${INVALID_PASSWORD}      kelompok2   

*** Keywords ***
Input Username
    [Arguments]   ${username}
    Input Text    locator=${input_username} 
    ...    text=${username}

Input Password
    [Arguments]    ${password}
    Input Text    locator=${input_password}    
    ...    text=${password}

Click Sign In Button On Sign In Screen
    Click Element    locator=${button_signin}

Show Failed Sign In Message
    Wait Until Page Contains    text=Invalid username/password