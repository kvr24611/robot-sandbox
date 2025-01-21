*** Settings ***
Documentation    First test case
Library    OperatingSystem

*** Keywords ***

*** Variables ***
${MY-VARIABLE}    my test variable
${SEARCH-FIELD}    //input[@id="searchbox_input"]
@{LIST}    test1    test2    test3    test4
&{DICTIONARY}    username=testuser    password=demo

*** Test Cases ***
TEST
    [Tags]    demo
    Remove Directory    test
    Log    This is my first test case
    Log    ${SEARCH-FIELD}
    Log    ${LIST}[2]
    Log    ${DICTIONARY}[password]
