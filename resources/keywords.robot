*** Settings ***
Library     SeleniumLibrary
Resource    locators.robot

*** Keywords ***
Open Application
    Open Browser    ${URL}    chrome
    Maximize Browser Window

Login To Application
    Input Text      ${USERNAME_FIELD}    ${USERNAME}
    Input Text      ${PASSWORD_FIELD}    ${PASSWORD}
    Click Element   ${LOGIN_BUTTON}

Verify Login Success
    Page Should Contain    Dashboard