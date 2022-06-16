*** Settings ***
Library                 SeleniumLibrary 
Test Setup              Open Browser        ${base_url}     ${browser_type}
Test Teardown           Close Browser

*** Variables ***
${base_url}             https://stockbit.com/
${browser_type}         firefox

*** Test Cases ***
I am LOGIN INVALID PASSWORD
    Maximize Browser Window
    Click Element               (//*[contains(@class,'login')])[1]
    sleep                       20s
    Input Text                  //input[@id='username']             muhammadyusuf.gunadarma@gmail.com 
    sleep                       20s
    Input Text                  //input[@id='password']             W4rsin4h
    sleep                       20s
    Click Element               //input[@id='loginbutton']
    sleep                       20s

I am LOGIN VALID  
    Maximize Browser Window
    Click Element               (//*[contains(@class,'login')])[1]
    sleep                       20s
    Input Text                  //input[@id='username']             muhammadyusuf.gunadarma@gmail.com 
    sleep                       20s
    Input Text                  //input[@id='password']             W4rsin4h
    sleep                       20s
    Click Element               //input[@id='loginbutton']
    sleep                       20s