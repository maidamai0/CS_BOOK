REM  *****  BASIC  *****

Sub Main
    REM Call our macros, for testing.
    REM call ShowUserName
    REM call ShowMsgBox "Hello from OpenOffice.org", "Hello"
    call CreateTpsReport("tps1.doc", "This is my TPS Report")
End Sub


REM Shows a dialog with the user name.
Sub ShowUserName
    userName = Environ("USER")
    MsgBox "User name is " + userName, 0, "User"
End Sub

REM Shows a handy message dialog.
Sub ShowMsgBox(pMessage as String, pTitle as String)
    MsgBox pMessage, 0 + 48 + 128, pTitle
End Sub


REM Create a TPS report from text passed in.
Sub CreateTpsReport(fileName, fileText)
    fileNum = Freefile
    Open fileName For Output As #fileNum
    Print #fileNum, fileText
    Close #fileNum

    MsgBox "TPS Report " + fileName + " created.", 64, "Done"
End Sub

