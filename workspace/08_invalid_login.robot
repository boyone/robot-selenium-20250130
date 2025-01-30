*** Settings ***
Library           SeleniumLibrary
Suite Setup       เปิด Browser
Suite Teardown    ปิด Browser
Test Setup        เข้าไปที่หน้า Login

*** Variables ***
${URL}    https://dminer.in.th/
${BROWSER}    edge

*** Test Cases ***
Invalid Username
    Login    invalid    mode    Error Page

Invalid Password
    Login    demo    invalid    Error Page

Invalid Username And Password
    Login    invalid    whatever    Error Page

Empty Username
    Login    ${EMPTY}    mode    Error Page

Empty Password
    Login    demo    ${EMPTY}    Error Page

Empty Username And Password
    Login    ${EMPTY}    ${EMPTY}    Error Page

*** Keywords ***
Login
    [Arguments]    ${username}    ${password}    ${expected_message}
    ใส่ Username    ${username}
    ใส่ Password    ${password}
    กดปุ่ม
    จะต้องเห็นข้อความ    ${expected_message}

เปิด Browser
    Open Browser    browser=${BROWSER}

เข้าไปที่หน้า Login
    Go To    ${URL}

ใส่ Username
    [Arguments]    ${username}
    Wait Until Element Is Visible    id=username_field
    Input Text    id=username_field    text=${username}

ใส่ Password
    [Arguments]    ${password}
    Input Password   id=password_field    password=${password}

กดปุ่ม
    Click Button    id=login_button
    
จะต้องเห็นข้อความ
    [Arguments]    ${expected_message}
    Wait Until Page Contains     ${expected_message}

ปิด Browser
    Close Browser
 