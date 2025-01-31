*** Settings ***
Library           SeleniumLibrary

*** Variables ***
${URL}    https://dminer.in.th/
${BROWSER}    edge

*** Test Cases ***
Valid Username And Password
    เปิดหน้า Login
    ใส่ Username    demo
    ใส่ Password    mode
    กดปุ่ม
    จะต้องเห็นข้อความ    Welcome Page
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
 