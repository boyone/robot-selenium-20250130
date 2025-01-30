# WebDriver

## Selenium Manager

The Selenium project has created Selenium Manager, the official driver manager for Selenium, shipped out of the box with each Selenium release as of version `4.6`.

## Install WebDriver

1. [Package Manager](#package-manager)
2. [Manual](#manual)
   1. [Check Browser Version](#1check-browser-version)
   2. [Download](#2download)
   3. [Install](#3install)

---

## Package Manager

### 1.mac(brew)

#### Prerequisite

1. Install `brew`

   ```sh
   /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
   ```

#### Install webdriver

1. Chrome

   ```sh
   brew install chromedriver
   ```

2. Firefox

   ```sh
   brew install geckodriver
   ```

### 2.windows(winget)

#### Prerequisite

WinGet the Windows Package Manager is available on Windows 11, modern versions of Windows 10, and Windows Server 2025 as a part of the App Installer

1. Install `winget`

   ```powershell
   Add-AppxPackage -RegisterByFamilyName -MainPackage Microsoft.DesktopAppInstaller_8wekyb3d8bbwe
   ```

#### Install webdriver

1. Chrome

   ```sh
   winget install chromedriver
   ```

2. Firefox

   ```sh
   winget install geckodriver
   ```

3. Edge

   ```sh
   winget install edgedriver
   ```

---

## Manual

### 1.Check Browser Version

1. Chrome
2. Firefox
3. Edge

### 2.Download

1. [ChromeDriver](https://developer.chrome.com/docs/chromedriver/downloads)
2. [Firefox GeckoDriver](https://github.com/mozilla/geckodriver/releases)
3. [Microsoft Edge WebDriver](https://developer.microsoft.com/en-us/microsoft-edge/tools/webdriver/)

### 3.Install

1. Unzip
2. Set PATH
   1. windows
   2. mac

---

## References

1. [Introducing Selenium Manager](https://www.selenium.dev/blog/2022/introducing-selenium-manager/)
2. [Selenium Manager(Beta)](https://www.selenium.dev/documentation/selenium_manager/)
3. [Winget](https://learn.microsoft.com/en-us/windows/package-manager/)
4. [Windows Package Manager Community Repository](https://github.com/microsoft/winget-pkgs)