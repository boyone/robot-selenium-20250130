*** Settings ***
Library    DateTime
Library    String

Suite Setup    Setup All
Suite Teardown    Teardown All
Test Setup    Setup
Test Teardown    Teardown

*** Test Cases ***
Test Case 1
    Log    Test Case 1
    Sleep   5s

Test Case 2
    Log    Test Case 2
    Sleep   5s

Test Case 3
    Log    Test Case 3
    Sleep   5s

*** Keywords ***
Setup All
    ${date} =    Get Current Date
    ${random} =    Generate Random String    4    [NUMBERS]
    Log    Test Setup All: ${random}, ${date}
    VAR    ${RANDOM}    ${random}    scope=SUITE

Teardown All
    ${date} =	Get Current Date
    Log    Teardown All: ${RANDOM}, ${date}

Setup
    ${random} =    Generate Random String    4    [NUMBERS]abc
    Log    Test Setup: ${random}
    VAR    ${test_random}    ${random}    scope=TEST

Teardown
    Log    Teardown: ${test_random}