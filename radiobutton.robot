*** Settings ***
Library                         SeleniumLibrary 
Test Setup                      Open Browser                            ${base_url}     ${browser_type}
Test Teardown                   Close Browser

*** Variables ***
${base_url}                     https://demoqa.com/radio-button
${browser_type}                 firefox

*** Test Cases ***
I am click radio button impressive
    Maximize Browser Window  
    Click Element               //label[@for='impressiveRadio']
    sleep                       3s
#untuk memastikan hasil input (element should be visible utk gambar)
    Element Should Be Visible   //p[@class='mt-3']              
    sleep                       3s
    Element Should Contain      //span[@class='text-success']           Impressive
    sleep                       3s

I am click radio button Yes
    Maximize Browser Window  
    Click Element               //label[@for='yesRadio'] 
    sleep                       3s
#untuk memastikan hasil input (element should be visible utk gambar)
    Element Should Be Visible   //p[@class='mt-3']              
    sleep                       3s
    Element Should Contain      //span[@class='text-success']           Yes
    sleep                       3s

I am click radio button No
    Maximize Browser Window  
    Element Should Be Disabled  //label[@for='noRadio']             
    sleep                       3s