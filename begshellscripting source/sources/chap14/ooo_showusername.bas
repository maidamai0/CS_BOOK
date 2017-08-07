REM  *****  BASIC  *****

Sub Main
    REM Call our macros, for testing.
    call ShowUserName
End Sub


REM Shows a dialog with the user name.
Sub ShowUserName
    userName = Environ("USER")
    MsgBox "User name is " + userName, 0, "User"
End Sub

