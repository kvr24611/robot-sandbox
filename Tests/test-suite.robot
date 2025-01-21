*** Settings ***
Documentation    This is a test suite
Library    OperatingSystem

*** Test Cases ***
TEST
    Log    This is a sample test case
    Remove Directory    test

TEST2
    Log    This is the second test case
