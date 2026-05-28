*** Settings ***
Library    SeleniumLibrary

*** Keywords ***

Login With Credentials
    [Arguments]    ${username}    ${password}    
    Input Text    id=ap_email_login    ${username} 
    Sleep    2s 
    Wait Until Element Is Visible    //span[@class="a-button-inner"]//i[@class="a-icon a-icon-dropdown"]    10s
    # Wait Until Element Is Enabled    //span[@class="a-button-inner"]//i[@class="a-icon a-icon-dropdown"]    
    Click Element    //span[@class="a-button-inner"]//span[@class="a-dropdown-prompt"]
    Scroll Element Into View    //a//span[@dir="ltr" and text()='+91']
    Click Element     //a//span[@dir="ltr" and text()='+91']
    sleep    1s
    Click Element    //input[@class="a-button-input" and @type="submit"]  
    Wait Until Element Is Visible    //h1[@class="a-spacing-small" and normalize-space()='Sign in'] 
    Input Text    id=ap_password    ${password}
    Click Element    //input[@id="signInSubmit"]