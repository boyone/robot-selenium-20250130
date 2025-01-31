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
    ใส่ Username    invalid
    ใส่ Password    mode
    กดปุ่ม
    จะต้องเห็นข้อความ    Error Page

Invalid Password
    ใส่ Username    demo
    ใส่ Password    invalid
    กดปุ่ม
    จะต้องเห็นข้อความ    Error Page

Invalid Username And Password
    ใส่ Username    invalid
    ใส่ Password    whatever
    กดปุ่ม
    จะต้องเห็นข้อความ    Error Page

Empty Username
    ใส่ Username    ${EMPTY}
    ใส่ Password    mode
    กดปุ่ม
    จะต้องเห็นข้อความ    Error Page

Empty Password
    ใส่ Username    demo
    ใส่ Password    ${EMPTY}
    กดปุ่ม
    จะต้องเห็นข้อความ    Error Page

Empty Username And Password
    ใส่ Username    ${EMPTY}
    ใส่ Password    ${EMPTY}
    กดปุ่ม
    จะต้องเห็นข้อความ    Error Page

*** Keywords ***
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
 