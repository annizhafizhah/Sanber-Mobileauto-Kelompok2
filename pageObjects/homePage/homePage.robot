*** Settings ***
Library    AppiumLibrary
Variables  .//home-page-locators.yaml

*** Keywords ***
Verify Home Screen Appears
    Element Should Be Visible    locator=//android.widget.ImageView[@resource-id="com.example.myapplication:id/imageView4"]

Click Sign In Button On Home Screen
    Click Element    locator=${button_signin_homescreen}