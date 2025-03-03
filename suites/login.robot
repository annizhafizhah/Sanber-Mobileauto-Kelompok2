*** Settings ***
Library            AppiumLibrary

*** Variables ***

*** Keywords ***
Open Flight Application
    Open Application    remote_url=http://127.0.0.1:124/ 
    ...    platformName=    
    ...    platformVersion=    
    ...    deviceName=    
    ...    appPackage=    
    ...    appActivity=    
    ...    automationName=

Verify Homepage Appears
Click Sign In Button On Home Screen 
Verify Sign In Appears
Input Username
Input Password
Click Sign In Buttonn On Sign In Screen
Verify User Successfully Login
Close Flight Application
    Close Application




*** Test Cases ***
User Should Be Able To Login with Valid Data