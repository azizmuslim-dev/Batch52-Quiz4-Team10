*** Settings ***
# get all keywords from the appium libraries
Library    AppiumLibrary

*** Variables ***
${REMOTE_URL}                      http://127.0.0.1:4723/wd/hub
${PLATFORM_NAME}                   android
${PLATFORM_VERSION}                13.0
${DEVICE_NAME}                     emulator-5554
${APP_PACKAGE}                     com.example.myapplication
${APP_ACTIVITY}                    com.example.myapplication.MainActivity

*** Keywords ***
Open Flights application
    Open Application               remote_url=${REMOTE_URL}
    ...                            platformName=${PLATFORM_NAME}
    ...                            platformVersion=${PLATFORM_VERSION}
    ...                            deviceName=${DEVICE_NAME}
    ...                            appPackage=${APP_PACKAGE}
    ...                            appActivity=${APP_ACTIVITY}    
Close Flights application
    Close Application