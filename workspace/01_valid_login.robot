*** Settings ***
Library           SeleniumLibrary

*** Variables ***


*** Test Cases ***
Valid Username And Password
    เปิดหน้า Login
    ใส่ Username    demo
    ใส่ Password
    กดปุ่ม
    จะต้องเห็นข้อความ Welcome Page
    ปิด Browser

*** Keywords ***
เปิดหน้า Login
    Open Browser    url=https://dminer.in.th/    browser=edge

ใส่ Username
    [Arguments]    ${username}
    Wait Until Element Is Visible    id=username_field
    Input Text    id=username_field    text=${username}

ใส่ Password
    Input Password   id=password_field    password=mode

กดปุ่ม
    Click Button    id=login_button
    
จะต้องเห็นข้อความ Welcome Page
    Wait Until Page Contains     Welcome Page

ปิด Browser
    Close Browser
 