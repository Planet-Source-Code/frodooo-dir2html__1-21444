VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "mscomctl.ocx"
Begin VB.Form frmMain 
   BackColor       =   &H80000004&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Dir2HTML"
   ClientHeight    =   6510
   ClientLeft      =   4845
   ClientTop       =   2625
   ClientWidth     =   6675
   Icon            =   "Form1.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   6510
   ScaleWidth      =   6675
   Begin VB.Frame Frame2 
      Caption         =   "HTML Export"
      Height          =   2115
      Left            =   30
      TabIndex        =   13
      Top             =   3900
      Width           =   6585
      Begin VB.TextBox txtTarget 
         Height          =   285
         Left            =   3150
         TabIndex        =   22
         Text            =   "_self"
         ToolTipText     =   "Name of the target frame"
         Top             =   960
         Width           =   3345
      End
      Begin VB.CheckBox chkTarget 
         Caption         =   "Use target:"
         Height          =   255
         Left            =   90
         TabIndex        =   21
         Top             =   1020
         Width           =   2955
      End
      Begin VB.TextBox txtImages 
         Height          =   285
         Left            =   3150
         TabIndex        =   20
         Text            =   "c:\temp\images\"
         ToolTipText     =   "The path to the images, can be absolute or relative"
         Top             =   600
         Width           =   3345
      End
      Begin VB.CheckBox chkImages 
         Caption         =   "Path to images:"
         Height          =   255
         Left            =   90
         TabIndex        =   19
         Top             =   660
         Width           =   2955
      End
      Begin VB.CommandButton cmdExport 
         Caption         =   "Export"
         Height          =   315
         Left            =   5370
         TabIndex        =   17
         ToolTipText     =   "Start the export process"
         Top             =   1530
         Width           =   1095
      End
      Begin VB.TextBox Text4 
         Height          =   285
         Left            =   3150
         TabIndex        =   16
         Text            =   "http://"
         ToolTipText     =   "The name of the virtual directory"
         Top             =   240
         Width           =   3345
      End
      Begin VB.CheckBox Check2 
         Caption         =   "Use HTTP address (virtual directory):"
         Height          =   255
         Left            =   90
         TabIndex        =   15
         Top             =   330
         Width           =   2955
      End
      Begin VB.TextBox txtFileName 
         Height          =   285
         Left            =   930
         TabIndex        =   14
         Text            =   "c:\temp\Dir2HTML.htm"
         ToolTipText     =   "Name of the file to which the export is written"
         Top             =   1530
         Width           =   4335
      End
      Begin VB.Label Label1 
         Caption         =   "File name:"
         Height          =   195
         Left            =   90
         TabIndex        =   18
         Top             =   1560
         Width           =   825
      End
   End
   Begin VB.Frame Frame1 
      Caption         =   "Folders"
      Height          =   795
      Left            =   0
      TabIndex        =   8
      Top             =   3030
      Width           =   6615
      Begin VB.CommandButton cmdPlus 
         DownPicture     =   "Form1.frx":030A
         Height          =   360
         Left            =   150
         Picture         =   "Form1.frx":0494
         Style           =   1  'Graphical
         TabIndex        =   12
         ToolTipText     =   "Add a folder"
         Top             =   300
         Width           =   420
      End
      Begin VB.CommandButton cmdMin 
         DownPicture     =   "Form1.frx":0AE6
         Height          =   360
         Left            =   630
         Picture         =   "Form1.frx":0C70
         Style           =   1  'Graphical
         TabIndex        =   11
         ToolTipText     =   "Remove a folder"
         Top             =   300
         Width           =   375
      End
      Begin VB.TextBox Text1 
         BackColor       =   &H00C0C0C0&
         Height          =   285
         Left            =   1110
         TabIndex        =   10
         Text            =   "New Folder"
         ToolTipText     =   "Name of the new folder"
         Top             =   360
         Width           =   3195
      End
      Begin VB.CheckBox Check1 
         Caption         =   "Check for no confirmation"
         Height          =   240
         Left            =   4380
         TabIndex        =   9
         ToolTipText     =   "Check if you do not want to confirm each time"
         Top             =   375
         Width           =   2160
      End
   End
   Begin MSComctlLib.StatusBar StatusBar1 
      Align           =   2  'Align Bottom
      Height          =   255
      Left            =   0
      TabIndex        =   7
      Top             =   6255
      Width           =   6675
      _ExtentX        =   11774
      _ExtentY        =   450
      Style           =   1
      _Version        =   393216
      BeginProperty Panels {8E3867A5-8586-11D1-B16A-00C0F0283628} 
         NumPanels       =   1
         BeginProperty Panel1 {8E3867AB-8586-11D1-B16A-00C0F0283628} 
         EndProperty
      EndProperty
   End
   Begin VB.CommandButton Command6 
      Caption         =   "Get folder to delete name"
      Height          =   315
      Left            =   7050
      TabIndex        =   6
      Top             =   2400
      Width           =   1980
   End
   Begin VB.TextBox Text3 
      Height          =   330
      Left            =   6990
      TabIndex        =   5
      Text            =   "Text3"
      Top             =   2070
      Width           =   3360
   End
   Begin VB.CommandButton Command5 
      Caption         =   "New folder path?"
      Height          =   270
      Left            =   7005
      TabIndex        =   4
      Top             =   1350
      Width           =   1785
   End
   Begin VB.TextBox Text2 
      Height          =   300
      Left            =   7005
      TabIndex        =   3
      Text            =   "Text2"
      Top             =   1635
      Width           =   3405
   End
   Begin VB.FileListBox File1 
      BackColor       =   &H00C0C0C0&
      Height          =   3015
      Left            =   3240
      TabIndex        =   2
      ToolTipText     =   "Filelist"
      Top             =   30
      Width           =   3420
   End
   Begin VB.DirListBox Dir1 
      BackColor       =   &H00C0C0C0&
      Height          =   2565
      Left            =   15
      TabIndex        =   1
      ToolTipText     =   "Directories"
      Top             =   435
      Width           =   3150
   End
   Begin VB.DriveListBox Drive1 
      BackColor       =   &H00C0C0C0&
      Height          =   315
      Left            =   60
      TabIndex        =   0
      ToolTipText     =   "Drives"
      Top             =   60
      Width           =   3135
   End
End
Attribute VB_Name = "frmMain"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'===============================================
'Dir2HTML
'comments are welcome
'frodooo@hotmail.com
'===============================================
Dim Extra As String
Dim RemoveChars As Integer
Dim ImPath As String




Private Sub cmdPlus_Click()

On Error GoTo errorfolder:
Dim fso
  Set fso = CreateObject("Scripting.FileSystemObject")

MyFoldersPath$ = File1.Path
    If Not Right(MyFoldersPath$, 1) = "\" Then
       MyFoldersPPath$ = MyFoldersPath$ & "\" & Text1.Text
       fso.CreateFolder File1.Path & "\" & Text1.Text
       Else
       fso.CreateFolder File1.Path & Text1.Text
       End If
       Dir1.Refresh
errorfolder:
If err = 58 Then MsgBox "File already exists"

Exit Sub
End Sub





Private Sub cmdMin_Click()
If Check1.Value = 1 Then
Dim fso
  Set fso = CreateObject("Scripting.FileSystemObject")
  
  
  fso.DeleteFolder File1.Path, force = True
  
  Dir1.Path = Left$(Dir1.Path, InStrRev(Dir1.Path, "\"))
 
  Dir1.Refresh
  File1.Refresh
  Exit Sub
Else
Dim Msg, Style, Title, Help, Ctxt, Response, MyString
Msg = "Are you sure you want to delete " & Dir1.Path & " ?"
Style = vbYesNo + vbCritical + vbDefaultButton2
Title = "DELETE A FOLDER"
Response = MsgBox(Msg, Style, Title)
If Response = vbYes Then
   MyString = "Yes"
  Set fso = CreateObject("Scripting.FileSystemObject")
  
  
  fso.DeleteFolder File1.Path, force = True
 
  Dir1.Path = Left$(Dir1.Path, InStrRev(Dir1.Path, "\"))
  Dir1.Refresh
  File1.Refresh
  Else
   MyString = "No"
   MsgBox "Folder and it's contents remain intact", vbInformation, "Dir2HTML"
   Exit Sub
End If
End If
Exit Sub
End Sub

Private Sub cmdExport_Click()
Dim fso
If chkImages.Value = 1 Then
    ImPath = txtImages.Text
    If Not (Right(ImPath, 1) = "/") Then
           ImPath = ImPath & "/"
    End If
Else
    ImPath = ""
End If
If chkTarget.Value = 1 Then
    sTarget = txtTarget.Text
Else
    sTarget = ""
End If
Response = MsgBox("Export the selected directory?", vbYesNo, "Dir2HTML")
Dim k As Integer
If Response = vbYes Then

    Screen.MousePointer = vbHourglass
    If Check2.Value = 1 Then
    
        Extra = Text4.Text
        If Right(Extra, 1) = "/" Then
            Extra = Left(Extra, Len(Extra) - 1)
        End If
        TopName = Text4.Text
        RemoveChars = Len(Dir1.List(Dir1.ListIndex))
    Else
        Extra = ""
        TopName = Dir1.List(Dir1.ListIndex)
        RemoveChars = 0
    End If
    
  
    sFileName = txtFileName.Text
    
    Open sFileName For Output As #1
    Print #1, "<html>" & vbCrLf & "<head><title>Inventory of " & Drive1.Name & "</title></head><body><font face=""verdana"" size=""1"">"
    Print #1, "<b>" & TopName & "</b><br>" & vbCrLf
    For k = 0 To Dir1.ListCount - 1
        Print #1, "<img src=""" & ImPath & "node.gif"" valign=""baseline""><img src=""" & ImPath & "folderclosed.gif"" valign=""middle"">&nbsp;<a href=""" & Extra & Right(Dir1.List(k), Len(Dir1.List(k)) - RemoveChars) & """ target=""" & sTarget & """>" & Right(Dir1.List(k), Len(Dir1.List(k)) - InStrRev(Dir1.List(k), "\")) & "</a><br>" & vbCrLf
        If Not DirPath = "" Or DirParent = "" Then
            GoThroughDir 1, Dir1.List(k), Dir1.Path, 1
        End If
    Next
    For i = 0 To File1.ListCount - 1
            Print #1, ExtraSpace & "<img src=""" & ImPath & "node.gif"" height=""22"" align=""absmiddle""><a href=""" & Extra & Right(File1.Path, Len(File1.Path) - RemoveChars) & "\" & File1.List(i) & """ target=""" & sTarget & """>" & File1.List(i) & "</a><br>" & vbCrLf
    Next
    Print #1, "</font></body></html>"
    Close #1
    Screen.MousePointer = vbDefault
    MsgBox "HTML file written.", vbInformation, "Dir2HTML"
    
End If

    
    

End Sub
Private Sub GoThroughDir(FileNum As Integer, DirPath As String, DirParent As String, ByVal spaceCount As Integer)
    Dim i As Integer
    Dim ExtraSpace As String
    ExtraSpace = PrintSpace(spaceCount + 1)
    
    If Not DirPath = "" Or DirParent = "" Then
        Dir1.Path = DirPath
       
        Print #FileNum, ""
        For i = 0 To Dir1.ListCount - 1
            Print #FileNum, ExtraSpace & "<img src=""" & ImPath & "folderclosed.gif"" valign=""baseline""><a href=""" & Extra & Right(Dir1.List(i), Len(Dir1.List(i)) - RemoveChars) & """ target=""" & sTarget & """>" & Right(Dir1.List(i), Len(Dir1.List(i)) - InStrRev(Dir1.List(i), "\")) & "</a><br>" & vbCrLf
            GoThroughDir FileNum, Dir1.List(i), DirPath, spaceCount + 1
        Next
        For i = 0 To File1.ListCount - 1
            Print #FileNum, ExtraSpace & "<img src=""" & ImPath & "node.gif"" height=""22"" valign=""baseline""><a href=""" & Extra & Right(File1.Path, Len(File1.Path) - RemoveChars) & "\" & File1.List(i) & """ target=""" & sTarget & """>" & File1.List(i) & "</a><br>" & vbCrLf
        Next
        Dir1.Path = DirParent
    End If
End Sub
Private Function PrintSpace(amount As Integer) As String
Dim temp As String
   For k = 1 To amount
     temp = temp & "<img src=""" & ImPath & "vertline.gif"" height=""22"" width=""16"">"
   Next
   
    PrintSpace = temp
End Function


Private Sub Dir1_Change()
File1.Path = Dir1.Path
StatusBar1.SimpleText = Dir1.Path & "           Containing   " & File1.ListCount & "  Files"
End Sub
Private Sub Dir1_Click()
  With Dir1
    .Path = .List(.ListIndex)
  End With
End Sub


Private Sub Drive1_Change()
On Error GoTo errDrive
Dir1.Path = Drive1.Drive
errDrive:
    If err.Number = 68 Then
        MsgBox "Drive Not Ready!", vbOKOnly, "Dir2HTML"
        Exit Sub
    Else
        Exit Sub
    End If
End Sub

Private Sub Form_Load()
Dir1.Path = Drive1.Drive
File1.Path = Dir1.Path
End Sub


