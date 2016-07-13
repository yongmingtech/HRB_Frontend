*** Settings ***
Documentation     A resource file with reusable keywords and variables.
...
...               The system specific keywords created here form our own
...               domain specific language. They utilize keywords provided
...               by the imported Selenium2Library.
Resource          Resource.robot
Resource          Library.robot

*** Variables ***
${DELAY}          0
${SERVER}         http://10.32.86.132/login.html    # Backend
${User_Name}      FC750
${User_Password}    0929
${Submit_Button}    xpath=//*[@id="tab-content-0"]/div/md-content/form/p[3]/input

*** Keywords ***
Open Broser to Login Page
    Open Browser    ${SERVER}    ${BROWSER}
    Maximize Browser Window
    Set Selenium Speed    ${DELAY}

Input Username
    Input Text    username    ${User_Name}

Input Password
    Input Text    password    ${User_Password}

Submit Credentials
    Click Element    ${Submit_Button}

Open Broser and Login automatically
    Open Broser to Login Page
    Input Username
    Input Password
    Submit Credentials
