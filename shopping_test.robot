*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}      https://www.digikala.com
${BROWSER}  Chrome
${USERNAME}   09128130622
${PASSWORD}   @Alireza0014621827
${INVALIDPASSWORD}   invalid


*** Test Cases ***
Test Successful Login
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Wait Until Element Is Visible    xpath=//div[.='فعلا نه']  timeout=10
    Click Element    xpath=//div[.='فعلا نه']
    Wait Until Element Is Visible    xpath=(//button[@data-cro-id='header-profile']//div)[1]  timeout=10
    Click Element    xpath=(//button[@data-cro-id='header-profile']//div)[1]
    Wait Until Element Is Visible    xpath=//label//input[@name='username']  timeout=10
    Input Text    xpath=//label//input[@name='username']    ${USERNAME}
    Wait Until Element Is Visible    xpath=//button[@data-cro-id='login-register']//div[1]    timeout=10
    Click Element    xpath=//button[@data-cro-id='login-register']//div[1]
    Wait Until Element Is Visible    xpath=//input[@name='password']    timeout=10
    Input Text    xpath=//input[@name='password']    ${PASSWORD}  # وارد کردن پسورد
    Click Button    xpath=(//div[@class='w-full']//button)[3]
    Wait Until Element Is Visible    xpath=(//div[contains(@class,'flex items-center')]//a)[1]    timeout=10
    Click Button    xpath=(//div[contains(@class,'flex items-center')]//a)[1]
    Wait Until Element Is Visible    xpath=//p[normalize-space(text())='علیرضا کثیری']    timeout=10
    Page Should Contain    علیرضا کثیری


Test Unsuccessful Login
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Wait Until Element Is Visible    xpath=(//button[@data-cro-id='header-profile']//div)[1]  timeout=10
    Click Element    xpath=(//button[@data-cro-id='header-profile']//div)[1]
    Wait Until Element Is Visible    xpath=//label//input[@name='username']  timeout=10
    Input Text    xpath=//label//input[@name='username']    ${USERNAME}
    Wait Until Element Is Visible    xpath=//button[@data-cro-id='login-register']//div[1]    timeout=10
    Click Element    xpath=//button[@data-cro-id='login-register']//div[1]
    Wait Until Element Is Visible    xpath=//input[@name='password']    timeout=10
    Input Text    xpath=//input[@name='password']    ${INVALIDPASSWORD}
    Click Button    xpath=(//div[@class='w-full']//button)[3]
    Page Should Contain    "اطلاعات کاربری نادرست است"


