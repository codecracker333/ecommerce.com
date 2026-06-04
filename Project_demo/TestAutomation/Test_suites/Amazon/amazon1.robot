*** Settings ***
Resource            ../../Keywords/libraries.resource
Suite Setup            Open Application
Test Setup            Reload Page           
Suite Teardown            End Execution

*** Variables ***
${li1}    1    7    3    6
${li2}    4    0    2    5


*** Test Cases ***
# TC 1 Login to Amazon
#     [Tags]    a:kp111    test1
#     Wait Until Element Is Visible    //input[@aria-label="Search Amazon"]    15s    
#     Input Text    //input[@aria-label="Search Amazon"]    shoes
#     Click Element    //input[@type="submit"]
    
# TC2 
#     [Tags]    a:kp111    test3    er    rg    hj    jk
#     ${run_testcase_with_tags}    set variable    ${RUN_tags}
#     log to console   ${run_testcase_with_tags}
#     ${num}    create list    ${run_testcase_with_tags}    7    3    6
#     ${num2}    Create List    4    0    2    5
#     ${combined}    Combining Lists    ${num}    ${num2}
#     ${sorted}    MyKeywords.Sort List    ${combined}
#     log    ${sorted}

tc3
    [Tags]    a:kp111    test2
    [Template]    Create and sort list   
     ${li1}    ${li2}
    


*** Keywords ***

Create and sort list
    [Arguments]    ${li1}    ${li2}
    ${combined}    Combining Lists    ${li1}    ${li2}
    ${sorted}    MyKeywords.Sort List    ${combined}
    log    ${sorted}
    RETURN    ${sorted}
   
