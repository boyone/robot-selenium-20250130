*** Settings ***
Library           SeleniumLibrary
Suite Setup       เปิด Browser
Suite Teardown    ปิด Browser
Test Setup        เข้าไปที่หน้า Login
Test Template     Login
Resource          keywords.resource

*** Test Cases ***               Username    Password    Expected Message
Invalid Username                 invalid     mode        Error Page
Invalid Password                 demo        invalid     Error Page
Invalid Username And Password    invalid     whatever    Error Page
Empty Username                   ${EMPTY}    mode        Error Page
Empty Password                   demo        ${EMPTY}    Error Page
Empty Username And Password      ${EMPTY}    ${EMPTY}    Error Page

