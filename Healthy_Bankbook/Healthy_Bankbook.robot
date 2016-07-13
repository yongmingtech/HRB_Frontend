*** Setting ***
Documentation     Tests the AutoItLibrary by using various AutoIt keywords on the GUI of the Windows Calculator application.
Test Teardown     Close All Browsers
Resource          ../Login.robot
Resource          ../DataBase.robot

*** Variables ***
${Healthy_Bankbook_FileName}    E:\\HRB_Frontend_Test\\測試資料-健康存摺\\月份_健康存摺_1050604.zip
${Open_File_Dialog_Name}    開啟舊檔
${Healthy_Bankbook_Password}    D221202975

*** Test Cases ***
File Upload
    Open Broser and Login automatically
    Sleep    5
    Click Element    xpath=/html/body/md-content/md-sidenav/md-whiteframe[4]/a/div/div[2]/div[2]
    Sleep    2
    Click Element    xpath=//*[@id="popupContainer"]/form/table/tbody/tr/td[4]/button[2]/span
    Sleep    2
    Click Element    xpath=//*[@id="popupContainer"]/form[1]/table/tbody[2]/tr[1]/td/button
    Sleep    1
    Wait For Active Window    WindowTitle=${Open_File_Dialog_Name}
    Win Active    ${Open_File_Dialog_Name}    ${Open_File_Dialog_Name}
    Send    ${Healthy_Bankbook_FileName}
    Control Click    ${Open_File_Dialog_Name}    開啟(&O)    [CLASS:Button; INSTANCE:1]
    Sleep    1
    Input Text    password    ${Healthy_Bankbook_Password}
    Sleep    2
    Click Element    xpath=//*[@id="popupContainer"]/form[1]/div[2]/button[1]
    Sleep    2
    Click Element    xpath=/html/body/div[2]/div/md-dialog/md-dialog-actions/button[1]/span
    Sleep    2
    Click Element    xpath=/html/body/div[2]/div/md-dialog/md-dialog-actions/button/span
    Sleep    3
    : FOR    ${INDEX}    IN RANGE    0    3
    \    Click Element    xpath=//*[@id="mainDiv"]/div[1]/table/tbody/tr[1]/td[2]
    \    Click Element    xpath=//*[@id="contentDivId"]/div[1]/button[1]
    \    Sleep    2
    \    Click Element    xpath=/html/body/div[2]/div/md-dialog/md-dialog-actions/button[1]/span
    \    Sleep    1
    \    Click Element    xpath=/html/body/div[2]/div/md-dialog/md-dialog-actions/button/span
    \    Sleep    2
