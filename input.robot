*** Settings ***
Library                 SeleniumLibrary 
Test Setup              Open Browser        ${base_url}     ${browser_type}
Test Teardown           Close Browser

*** Variables ***
${base_url}             http://uitestingplayground.com/textinput
${browser_type}         firefox

*** Test Cases ***
I am typing My name in the field
    Maximize Browser Window
    Input Text                  //input[@class='form-control']      Muhammad Yusuf  
    sleep                       10s    
    Click Element               //button[@id='updatingButton']
    sleep                       10s
#untuk memastikan hasil input (element should be visible utk gambar)
    Element Should Contain      //button[@id='updatingButton']       Muhammad Yusuf
    sleep                       10s

    