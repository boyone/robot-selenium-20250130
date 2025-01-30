*** Settings ***
Library           SeleniumLibrary
Suite Setup       เปิด Browser
Suite Teardown    ปิด Browser
Test Setup        เข้าไปที่หน้า Login
Test Template     Login
Resource          keywords.resource

*** Test Cases ***
Valid Username And Password    demo    mode    Welcome Page

