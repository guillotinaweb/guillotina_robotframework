*** Variables ***

${BROWSER}              chrome
${SERVER}               http://localhost:8080/pastanaga


*** Settings ***

Documentation   GuillotinaLibrary Acceptance Tests
Library         Selenium2Library  timeout=10  implicit_wait=0
Library         GuillotinaLibrary
Test Setup      Test Setup
Test Teardown   Test Teardown


*** Test Cases ***

Scenario: Test Start Guillotina Keyword
  Start Guillotina


*** Keywords ***

Test Setup
  Open Headless Browser

Test Teardown
  Close Browser

Open Headless Browser
  ${options}=  Evaluate  sys.modules['selenium.webdriver'].ChromeOptions()  sys, selenium.webdriver
  Call Method  ${options}  add_argument  headless
  Call Method  ${options}  add_argument  disable-gpu
  Call Method  ${options}  add_argument  disable-web-security
  Call Method  ${options}  add_argument  window-size\=1280,1024
  # Call Method  ${options}  add_argument  remote-debugging-port\=9223
  Create WebDriver  Chrome  chrome_options=${options}
