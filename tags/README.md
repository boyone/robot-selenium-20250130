# Tags

- Example

  ```robot
  *** Settings ***
  Test Tags       requirement: 42    smoke

  *** Variables ***
  ${HOST}         10.0.1.42

  *** Test Cases ***
  No own tags
      [Documentation]    Test has tags 'requirement: 42' and 'smoke'.
      No Operation

  Own tags
      [Documentation]    Test has tags 'requirement: 42', 'smoke' and 'not ready'.
      [Tags]    not ready
      No Operation

  Own tags with variable
      [Documentation]    Test has tags 'requirement: 42', 'smoke' and 'host: 10.0.1.42'.
      [Tags]    host: ${HOST}
      No Operation

  Remove common tag
      [Documentation]    Test has only tag 'requirement: 42'.
      [Tags]    -smoke
      No Operation

  Remove common tag using a pattern
      [Documentation]    Test has only tag 'smoke'.
      [Tags]    -requirement: *
      No Operation

  Set Tags and Remove Tags keywords
      [Documentation]    This test has tags 'smoke', 'example' and 'another'.
      Set Tags    example    another
      Remove Tags    requirement: *
  ```

---

## Tag by Environment

- online_shopping_card.robot

  ```robot
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

  ```

- run robot

  ```sh
  robot tags.robot
  ```

  ```sh
  robot --include prod tags.robot
  ```

  ```sh
  robot --exclude in-progress tags.robot
  ```

---

## References

1. [robotframewok-tags](https://robotframework.org/robotframework/latest/RobotFrameworkUserGuide.html#by-tag-names)
