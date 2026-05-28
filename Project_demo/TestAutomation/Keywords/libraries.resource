*** Settings ***
Library            SeleniumLibrary
Library            CSVLibrary
#Library            ExcelLibrary
Library            DateTime
Library            String
#Library            RequestLibrary
Library            Collections
Resource            C:/Project_demo/TestAutomation/Resources/idcredmapper.txt
Resource            C:/Project_demo/TestAutomation/Keywords/common.resource
Library            C:/Project_demo/TestAutomation/Keywords/python_keywords/MyKeywords.py


*** Keywords ***

End Execution
    Log    ${TEST STATUS}
    Close All Browsers

Open Application
    Open Browser    https://amazon.com    chrome
    Maximize Browser Window
    Wait Until Element Is Visible   //div[@class="nav-line-1-container"]//span[text()='Hello, sign in']     30s
    Scroll Element Into View    //div[@class="nav-line-1-container"]//span[text()='Hello, sign in']
    #Click Element    //span[normalize-space()='Account & Lists']//ancestor::div[@class="nav-div"]//button
    Wait Until Element Is Visible    //span[@class="nav-action-inner" and normalize-space()='Sign in']
    Click Element    //span[@class="nav-action-inner" and normalize-space()='Sign in']
    Wait Until Element Is Visible    //h1[normalize-space()='Sign in or create account']  
    Login With Credentials    8639526608    HitherSONIhere@
            

