REM  *****  BASIC  *****

Sub Main
    REM Call our macros, for testing.
    call ShowUserName
    call ShowMsgBox "Hello from OpenOffice.org", "Hello"
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

