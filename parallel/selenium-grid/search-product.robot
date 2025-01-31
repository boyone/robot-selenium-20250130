*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    http://159.223.86.92/product/list

*** Test Cases ***
ทดสอบซื้อสินค้าเลือกวิธีจัดส่งสินค้าเป็น Kerry และชำระเงินด้วย credit card ของ visa และชำระเงินสำเร็จ
    ค้นหาสินค้าด้วย คำค้นหา
    ตรวจสอบผลการค้นหา
    เลือกดูสินค้า
    ตรวจสอบจำนวนแต้มต่อชิ้นที่จะได้รับของ
    [Teardown]    Close Browser

*** Keywords ***
ค้นหาสินค้าด้วย คำค้นหา
    # Open Browser    url=${URL}    browser=firefox    remote_url=http://127.0.0.1:4444/wd/hub
    Open Browser    url=${URL}    browser=edge
    Input Text    id:search-product-input    Bicycle
    Click Element    id:search-product-btn    

ตรวจสอบผลการค้นหา
    Wait Until Element Is Visible    id:product-card-1
    Element Should Contain    id:product-card-name-1    Balance Training Bicycle
    Element Should Contain    id:product-card-price-1    ฿4,314.60

เลือกดูสินค้า
    Click Element    id:product-card-1
    
ตรวจสอบจำนวนแต้มต่อชิ้นที่จะได้รับของ
    Wait Until Element Is Visible    id:product-detail-point
    Element Should Contain    id:product-detail-point    434 Points
