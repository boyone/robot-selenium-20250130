*** Settings ***

*** Test Cases ***
ทดสอบ สั่งซื้อสินค้า Balance Training Bicycle จัดส่งด้วย Kerry ชำระเงินด้วยบัตรเครดิต Visa สำเร็จ และตรวจสอบการได้แต้มสะสม
    [Tags]    prod
    No Operation

ทดสอบ สั่งซื้อสินค้า Balance Training Bicycle จัดส่งด้วย Thai Post ชำระเงินด้วยบัตรเครดิต Visa สำเร็จ และตรวจสอบการได้แต้มสะสม
    [Tags]    uat
    No Operation

ทดสอบ สั่งซื้อสินค้า Balance Training Bicycle จัดส่งด้วย Lineman ชำระเงินด้วยบัตรเครดิต Visa สำเร็จ และตรวจสอบการได้แต้มสะสม
    [Tags]    dev
    No Operation

ทดสอบ สั่งซื้อสินค้า Balance Training Bicycle จัดส่งด้วย Thai Post ชำระเงินด้วยบัตรเครดิต Master Card สำเร็จ และตรวจสอบการได้แต้มสะสม
    [Tags]    in-progress
    No Operation
