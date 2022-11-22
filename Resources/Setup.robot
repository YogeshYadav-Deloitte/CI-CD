*** Settings ***
Documentation    Generic Methods for all Tests
Library          Process
Library          OperatingSystem
Variables        ../Libraries/ReadConfig.py
Library          ../Libraries/WebDriverSync.py
Library          ../Libraries/CustomKeyword.py

*** Keywords ***
Open Chrome with block notifications
    ${web_driver_path}=     Get Driver Path
    &{prefs}=      Create Dictionary       download.default_directory=${EXECDIR}${/}TestDownloads
    ${options}=    Evaluate  sys.modules['selenium.webdriver.chrome.options'].Options()    sys,selenium.webdriver
    Built In.Call Method     ${options}    add_experimental_option    prefs     ${prefs}
    Built In.Call Method     ${options}    add_argument    --disable-notifications
    Built In.Call Method     ${options}    add_argument    --use-fake-ui-for-media-stream
  #  Built In.Call Method     ${options}    add_argument    --use-fake-device-for-media-stream

    SeleniumLibrary.Create Webdriver    Chrome      executable_path=${web_driver_path}      options=${options}
    SeleniumLibrary.maximize browser window
