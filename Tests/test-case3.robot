*** Settings ***
Documentation    This is my third test case
Resource    ../Resources/resources.robot

*** Test Cases ***
TEST3
    [Tags]    demo2    demo
    Log    This is the third test case
    Log My Specific Username And Password    ${DICT}[username]    ${DICT}[password]
