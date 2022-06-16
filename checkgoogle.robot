*** Settings ***
Library                 SeleniumLibrary 

*** Test Cases ***
I am access Google Page
    Open Browser        https://www.google.com/     firefox
    Maximize Browser Window
    sleep               10s
    Close Browser