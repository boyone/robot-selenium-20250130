*** Settings ***
Library           SeleniumLibrary

*** Variables ***


*** Test Cases ***
Invalid Username
    เปิดหน้า Login
    ใส่ Username    invalid
    ใส่ Password    mode
    กดปุ่ม
    จะต้องเห็นข้อความ    Error Page
    ปิด Browser

*** Keywords ***
เปิดหน้า Login
    Open Browser    url=https://dminer.in.th/    browser=edge

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
 