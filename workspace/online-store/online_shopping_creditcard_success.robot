*** Settings ***
Library             SeleniumLibrary

Test Teardown       Close All Browsers


*** Variables ***
${URL}          http://159.223.86.92/product/list
${BROWSER}      edge


*** Test Cases ***
ทดสอบ สั่งซื้อสินค้า Balance Training Bicycle จัดส่งด้วย Kerry ชำระเงินด้วยบัตรเครดิต Visa สำเร็จ และตรวจสอบการได้แต้มสะสม
    ค้นหาสินค้าด้วย คำค้นหา    Bicycle
    ตรวจสอบผลการค้นหา    product-card-name-1    Balance Training Bicycle
    เลือกดูสินค้า    product-card-name-1
    ตรวจสอบจำนวนแต้มต่อชิ้นที่จะได้รับของ    product-detail-point    43 Points
    เพิ่มสินค้าลงตะกร้า    Balance Training Bicycle
    # ตรวจสอบจำนวนแต้มต่อชิ้นที่จะได้รับของสินค้าในตะกร้า    product-1-point
    # ใส่ที่อยู่จัดส่งสินค้า
    # ...    พงศกร    รุ่งเรืองทรัพย์
    # ...    189/413 หมู่ 2    สมุทรปราการ
    # ...    เมืองสมุทรปราการ    แพรกษาใหม่
    # ...    10280    0909127991
    # เลือกวิธีจัดส่งสินค้าเป็น    shipping-method-1-card
    # ตรวจสอบค่าจัดส่งสินค้าของ Kerry เท่ากันกับ 50.00 บาท    shipping-method-1-fee    ฿50.00
    # เลือกช่องทางการชำระเงินแบบ VISA Credit Card
    # ตรวจสอบราคารวมที่ต้องชำระเงิน ต้องเท่ากันกับ    ฿4,364.60
    # ยืนยัน OTP
    # ตรวจสอบหมายเลขพัสดุ
    # ยืนยันการส่งการแจ้งเตือนด้วย email และ เบอร์โทรศัพท์
    # ...    ponsakorn@gmail.com
    # ...    0909127991


*** Keywords ***
ค้นหาสินค้าด้วย คำค้นหา
    [Arguments]    ${keyword}
    Open Browser    ${URL}    ${BROWSER}
    Wait Until Element Is Visible    id=search-product-input
    Input Text    id=search-product-input    ${keyword}
    Click Button    id=search-product-btn

ตรวจสอบผลการค้นหา
    [Arguments]    ${element_id}    ${expected_text}
    Wait Until Element Contains    id=${element_id}    ${expected_text}

เลือกดูสินค้า
    [Arguments]    ${product_locator}
    Click Element    id=${product_locator}

ตรวจสอบจำนวนแต้มต่อชิ้นที่จะได้รับของ
    [Arguments]    ${product_detail_point_locator}    ${expected_point}
    Wait Until Element Contains    id=${product_detail_point_locator}    ${expected_point}

เพิ่มสินค้าลงตะกร้า
    [Arguments]    ${product_name}
    Click Button    id=product-detail-add-to-cart-btn
    Click Button    id=header-menu-cart-btn
    Wait Until Element Contains    xpath=//*[@id="product-1-name"]/a    ${product_name}