*** Settings ***
Documentation    This is my second test case
Library    OperatingSystem

*** Variables ***
&{DICT}    username=sam    password=demo
&{DICT2}    username=dolores    password=demo2

*** Keywords ***
Log My Message
    Log    This is the second test case

Log My Username
    Log    ${DICT}[username]

Log Username and Password
    Log My Username
    Log    ${DICT}[password]


Log My Specific Username And Password
    [Arguments]    ${USERNAME}    ${PASSWORD}
    Log    ${USERNAME}
    Log    ${PASSWORD}

*** Test Cases ***
TEST2
    [Tags]    demo2
    Log My Message
    Log Username and Password
    Log My Specific Username And Password    ${DICT}[username]    ${DICT}[password]
    Log My Specific Username And Password    ${DICT2}[username]    ${DICT2}[password]
