# Working with Chrome for Test and ChromeDriver

1. Download `Chrome-for-Testing` and `ChromeDriver` via [link](https://googlechromelabs.github.io/chrome-for-testing/last-known-good-versions-with-downloads.json)
2. Unzip `Chrome-for-Testing` and `ChromeDriver` to specific path
3. Set up `Open Browser` keyword for `Chrome-for-Testing` and `ChromeDriver`

   1. macOS

      ```robot
      *** Settings ***
      Library           SeleniumLibrary

      *** Test Cases ***
      Open Browser Google
          Open Browser    url=https://www.google.com
          ...    browser=chrome
          ...    options=add_experimental_option("detach", True); binary_location="${EXECDIR}${/}chrome-mac-arm64${/}Google${SPACE}Chrome${SPACE}for${SPACE}Testing.app${/}Contents${/}MacOS${/}Google Chrome for Testing"
          ...    service=executable_path="${EXECDIR}${/}chromedriver"
          Close Browser
      ```

   2. windows

      ```robot
      Open Browser Google
          Open Browser    url=https://www.google.com
          ...    browser=chrome
          ...    options=add_experimental_option("detach", True); binary_location="${EXECDIR}${/}chrome-win64${/}chrome.exe"
          ...    service=executable_path="${EXECDIR}${/}chromedriver-win64${/}chromedriver.exe"
          Close Browser
      ```

---

## References

1. [ChromeDriver Download](https://developer.chrome.com/docs/chromedriver/downloads)
2. [https://github.com/GoogleChromeLabs/chrome-for-testing](https://github.com/GoogleChromeLabs/chrome-for-testing)
3. [last-known-good-versions-with-downloads.json](https://googlechromelabs.github.io/chrome-for-testing/last-known-good-versions-with-downloads.json)
