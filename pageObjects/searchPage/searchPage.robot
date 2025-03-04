*** Settings ***
Library    AppiumLibrary
Variables  search-page-locators.yaml

*** Variables ***
${VALID_USERNAME}        support@ngendigital.com
${VALID_PASSWORD}        abc123
${VALID_FLIGHT_NUMBER}    123456
${INVALID_FLIGHT_NUMBER}    999999
${SPECIAL_CHAR_FLIGHT_NUMBER}    @#$%^&*
${EMPTY_FLIGHT_NUMBER}    
${SEARCH_BUTTON}           

*** Keywords ***
Open Search Page
    Wait Until Element Is Visible    ${search_button}    timeout=10s
    Click Element    ${search_button}

Search Flight By Number
    [Arguments]    ${flight_number}
    Wait Until Element Is Visible    ${input_flight_number}    timeout=10s
    Input Text    ${input_flight_number}    ${flight_number}
    Press Keycode    66   # Tekan Enter

Verify Search Results Displayed
    Wait Until Page Contains    Flight details

Verify No Results Found Message Displayed
    Wait Until Page Contains    No flights found

Verify Search Field Error Displayed
    Wait Until Page Contains    Please enter a valid flight number