*** Settings ***
Library     AppiumLibrary


*** Variables ***
${remote-url}           http://127.0.0.1:4723/wd/hub
${platform-name}        Android
${platform-version}     12.0
${device-name}          emulator-5554
${app-package}          com.example.myapplication
${app-activity}         com.example.myapplication.MainActivity


*** Keywords ***
open flight application
    Open Application    remote_url=${remote-url}
    ...    platformName=${platform-name}
    ...    platformVersion=${platform-version}
    ...    deviceName=${device-name}
    ...    appPackage=${app-package}
    ...    appActivity=${app-activity}

close flight application
    Close Application
