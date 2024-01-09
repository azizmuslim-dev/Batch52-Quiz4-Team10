*** Settings ***
Resource        loginSuite.robot
Library    AppiumLibrary

*** Test Cases ***
User Should Be Able To Login With Valid Credentials
    Run Keywords
