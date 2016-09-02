*** Setting ***
Documentation     Tests the AutoItLibrary by using various AutoIt keywords on the GUI of the Windows Calculator application.
Test Teardown     Close All Browsers
Resource          ../Login.robot
Resource          ../DataBase.robot

*** Test Cases ***
Valid Login
    Open Broser and Login automatically
