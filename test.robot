*** Variables ***

${BROWSER}              chrome
${SERVER}               https://kitconcept.com


*** Settings ***

Documentation   StarterLibrary Acceptance Tests
Library         Selenium2Library  timeout=10  implicit_wait=0
Library         StarterLibrary
Test Setup      Test Setup
Test Teardown   Test Teardown


*** Test Cases ***

Scenario: Test StarterLibrary
  Go To  ${SERVER}
  Wait until page contains  kitconcept 
  Page Should Contain  kitconcept 


*** Keywords ***

Test Setup
  Open Browser  ${SERVER}  ${BROWSER}
  Set Window Size  1280  1024

Test Teardown
  Close Browser
