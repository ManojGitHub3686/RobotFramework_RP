*** Settings ***
Library    SeleniumLibrary    

Suite Setup    Log    I am inside Test Suite SetUp    
Suite Teardown    Log    I am inside Test Suite TearDown    
Test Setup    Log    I am inside Test SetUp    
Test Teardown    Log    I am inside Test TearDown    

Default Tags    Sanity


*** Test Cases ***

MyFirstTest
    [Tags]    Smoke
    Log    Hello World!! I am inside 1st test
    
MySecondTest
    [Tags]    Acceptance
    Log    I am inside 2nd test
    Set Tags    Regression
    Remove Tags    Regression
    
MyThirdTest
    Log    I am inside 3rd test
    
MyForthTest
    Log    I am inside 4th test
    
    
    
# MyFirstSeleniumTest
    # Open Browser    https://google.com    chrome
    # Set Browser Implicit Wait    5
    # Input Text    name=q    Automation step by step  
    # Press Keys    name=q    ENTER  
    # # Click Button    name=btnK    
    # Sleep    2    
    # Close Browser
    # Log    Test Completed    
    
# SampleLoginTest
    # [Documentation]    This is a sample login test
    # Open Browser    ${URL}    chrome
    # Set Browser Implicit Wait    5
    # LoginKW
    # Click Element    id=welcome       
    # Click Link    link=Logout    
    # Close Browser
    # Log    Test Completed
    # Log    This test is executed by %{Username} on %{os}    
    
*** Variables ***
${URL}    https://opensource-demo.orangehrmlive.com/ 
@{CREDENTIALS}    Admin    admin123
&{LOGINCREDENTIALS}    Username=Admin    Password=admin123    

*** Keywords ***
LoginKW
    Input Text    id=txtUsername    @{CREDENTIALS}[0]    
    Input Password    id=txtPassword    &{LOGINCREDENTIALS}[Password]    
    Click Button    id=btnLogin    
