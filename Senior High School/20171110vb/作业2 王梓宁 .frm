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
   Begin VB.CommandButton Command1 
      Caption         =   "���ֵ"
      Height          =   495
      Left            =   720
      TabIndex        =   2
      Top             =   2160
      Width           =   1575
   End
   Begin VB.ListBox List1 
      Height          =   1680
      Left            =   3480
      TabIndex        =   1
      Top             =   1200
      Width           =   975
   End
   Begin VB.Label Label1 
      Caption         =   "������"
      Height          =   735
      Left            =   3600
      TabIndex        =   0
      Top             =   360
      Width           =   855
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim i As Double
Dim max As Double
Dim n As Double
Dim a As Double
Private Sub Command1_Click()
List1.Clear
i = 1
max = InputBox("Please input a number ������1����")
List1.AddItem max
n = 10 - 1
Do While i <= n
a = InputBox("Please input a number ������1����")
List1.AddItem a
If max < a Then
max = a
End If
i = i + 1
Loop
Print max
End Sub

