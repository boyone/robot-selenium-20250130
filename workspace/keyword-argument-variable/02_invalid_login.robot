*** Settings ***
Library           SeleniumLibrary

*** Variables ***
${URL}    https://dminer.in.th/
${BROWSER}    edge

*** Test Cases ***
Invalid Username
    เปิดหน้า Login
    ใส่ Username    invalid
    ใส่ Password    mode
    กดปุ่ม
    จะต้องเห็นข้อความ    Error Page
    ปิด Browser

Invalid Password
    เปิดหน้า Login
    ใส่ Username    demo
    ใส่ Password    invalid
    กดปุ่ม
    จะต้องเห็นข้อความ    Error Page
    ปิด Browser

Invalid Username And Password
    เปิดหน้า Login
    ใส่ Username    invalid
    ใส่ Password    whatever
    กดปุ่ม
    จะต้องเห็นข้อความ    Error Page
    ปิด Browser

Empty Username
    เปิดหน้า Login
    ใส่ Username    ${EMPTY}
    ใส่ Password    mode
    กดปุ่ม
    จะต้องเห็นข้อความ    Error Page
    ปิด Browser

Empty Password
    เปิดหน้า Login
    ใส่ Username    demo
    ใส่ Password    ${EMPTY}
    กดปุ่ม
    จะต้องเห็นข้อความ    Error Page
    ปิด Browser

Empty Username And Password
    เปิดหน้า Login
    ใส่ Username    ${EMPTY}
    ใส่ Password    ${EMPTY}
    กดปุ่ม
    จะต้องเห็นข้อความ    Error Page
    ปิด Browser

*** Keywords ***
เปิดหน้า Login
    Open Browser    url=${URL}    browser=${BROWSER}

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
 