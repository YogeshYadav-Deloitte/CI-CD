*** Settings ***
Documentation           Create the channel in Application
Resource                ../Resources/Setup.robot
Resource                ../Resources/PageObjects/Web/LoginWebPage.robot
Resource                ../Resources/PageObjects/Web/StatusWebPage.robot
Variables               ../Constants/Constants.py
Library                 SeleniumLibrary
Suite Setup             Run Keywords
...                     Open Chrome Browser
...         AND         GO TO       ${URL}
Suite Teardown          Close Browser


# robot -d Report --loglevel TRACE Tests/CrossPlatform/VerifyChannelExists_Test.robot

*** Test Cases ***
Login And Create Channel Via Web

        # verifying the same on Web
        GO TO       ${URL}
        Login using email and password
        Select Create new option and add a channel
        Check if the channel is created or not












