VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   3030
   ClientLeft      =   120
   ClientTop       =   450
   ClientWidth     =   4560
   LinkTopic       =   "Form1"
   ScaleHeight     =   3030
   ScaleWidth      =   4560
   StartUpPosition =   3  '����ȱʡ
   Begin VB.CommandButton Command3 
      Caption         =   "����"
      Height          =   495
      Left            =   3480
      TabIndex        =   3
      Top             =   2040
      Width           =   735
   End
   Begin VB.CommandButton Command2 
      Caption         =   "��ӡ.2"
      Height          =   495
      Left            =   3480
      TabIndex        =   2
      Top             =   1320
      Width           =   735
   End
   Begin VB.CommandButton Command1 
      Caption         =   "��ӡ.1"
      Height          =   495
      Left            =   3480
      TabIndex        =   1
      Top             =   600
      Width           =   735
   End
   Begin VB.Label Label1 
      Caption         =   "������"
      Height          =   375
      Left            =   3840
      TabIndex        =   0
      Top             =   120
      Width           =   615
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim a As Long, b As Long, c As Long, i As Long, j As Long, n As Long
Private Sub Command1_Click()
a = InputBox("����������")
b = InputBox("����������")
Print "ʹ�� for"
For i = 1 To a
    For j = 1 To b
        Print "*";
    Next
    Print "��";
    Print i;
    Print "��"
Next
End Sub

Private Sub Command2_Click()
a = InputBox("����������")
b = InputBox("����������")
Print "ʹ�� do while"
i = 1
j = 1
Do While i <= a
    j = 1
    Do While j <= b
        Print "*";
        j = j + 1
    Loop
    Print "��";
    Print i;
    Print "��"
    i = i + 1
Loop
End Sub

Private Sub Command3_Click()
Cls
End Sub
