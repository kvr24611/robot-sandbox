*** Settings ***
Library    OperatingSystem


*** Variables ***
${MY-VARIABLE}    my test variable
${SEARCH-FIELD}    //input[@id="searchbox_input"]
@{LIST}    test1    test2    test3    test4
&{DICTIONARY}    username=testuser    password=demo
&{DICT}    username=sam    password=demo
&{DICT2}    username=dolores    password=demo2


*** Keywords ***
Log My Message 2
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

