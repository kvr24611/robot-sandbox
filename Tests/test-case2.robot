*** Settings ***
Documentation    This is my second test case
Resource    ../Resources/resources.robot


*** Test Cases ***
TEST2
    [Tags]    demo2
    Log My Message 2
    Log Username and Password
    Log My Specific Username And Password    ${DICT}[username]    ${DICT}[password]
    Log My Specific Username And Password    ${DICT2}[username]    ${DICT2}[password]
