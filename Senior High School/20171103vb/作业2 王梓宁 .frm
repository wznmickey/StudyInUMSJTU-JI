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
   Begin VB.ListBox List1 
      Height          =   2400
      Left            =   3240
      TabIndex        =   0
      Top             =   240
      Width           =   1095
   End
   Begin VB.Label Label5 
      Caption         =   "��ͷ֣�"
      Height          =   375
      Left            =   120
      TabIndex        =   4
      Top             =   1680
      Width           =   3015
   End
   Begin VB.Label Label4 
      Caption         =   "��߷֣�"
      Height          =   375
      Left            =   120
      TabIndex        =   3
      Top             =   1080
      Width           =   3015
   End
   Begin VB.Label Label3 
      Caption         =   "ƽ���֣�"
      Height          =   375
      Left            =   120
      TabIndex        =   2
      Top             =   600
      Width           =   3015
   End
   Begin VB.Label Label1 
      Caption         =   "������"
      Height          =   255
      Left            =   120
      TabIndex        =   1
      Top             =   120
      Width           =   1095
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim score As Double: Dim i As Integer: Dim s As Double: Dim max As Double: Dim min As Double: Dim ave As Double
Private Sub Form_Load()
score = 0
i = 0
s = 0
max = -5
min = 105
Do While score <> -1
score = InputBox("������ɼ�,����-1����")
If score >= 0 And score <= 100 Then
i = i + 1
s = s + score
List1.AddItem score
If score < min Then
min = score
End If
If score > max Then
max = score
End If
Else
If score <> -1 Then
MsgBox ("��������ȷ����,����-1����")
End If
If score = -1 And i = 0 Then
MsgBox ("����������1������")
score = 0
End If
End If
Loop
ave = s / i
Label3.Caption = "ƽ���֣�" & Int(ave * 100 + 0.5) / 100
Label4.Caption = "��߷֣�" & max
Label5.Caption = "��ͷ֣�" & min
End Sub

