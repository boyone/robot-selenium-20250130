*** Settings ***
Library           SeleniumLibrary

*** Variables ***


*** Test Cases ***
Valid Username And Password
    เปิดหน้า Login
    ใส่ Username
    ใส่ Password
    กดปุ่ม
    จะต้องเห็นข้อความ Welcome Page
    ปิด Browser

*** Keywords ***
เปิดหน้า Login
    Open Browser    url=https://dminer.in.th/    browser=edge

ใส่ Username
    Input Text    id=username_field    text=demo

ใส่ Password
    Input Password   id=password_field    text=mode
    