*** Settings ***
Library                         SeleniumLibrary 
Test Setup                      Open Browser                            ${base_url}     ${browser_type}
Test Teardown                   Close Browser

*** Variables ***
${base_url}                     https://demoqa.com/checkbox
${browser_type}                 firefox

*** Test Cases ***
I am click "Notes" in checkbox
    Maximize Browser Window  
    Click Element               (//button[@aria-label="Toggle"])[1]
    sleep                       3s
#untuk memastikan hasil input (element should be visible utk gambar)
    Click Element               (//button[@aria-label="Toggle"])[2]             
    sleep                       3s
    Click Element               //label[@for="tree-node-notes"]
    sleep                       3s
    Element Should Be Visible   //div[@id="result"]
    Element Should Contain      //span[@class="text-success"]           notes