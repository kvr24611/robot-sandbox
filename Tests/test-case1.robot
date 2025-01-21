*** Settings ***
Documentation    First test case
Resource    ../Resources/resources.robot

*** Test Cases ***
TEST
    [Tags]    demo
    Remove Directory    test
    Log    This is my first test case
    Log    ${SEARCH-FIELD}
    Log    ${LIST}[2]
    Log    ${DICTIONARY}[password]
