VERSION 5.00
Begin VB.Form Form1 
   BackColor       =   &H8000000B&
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
      Caption         =   "����һ�η���"
      Height          =   375
      Left            =   2280
      TabIndex        =   12
      Top             =   1080
      Width           =   2175
   End
   Begin VB.CommandButton Command2 
      Caption         =   "���"
      Height          =   375
      Left            =   240
      TabIndex        =   10
      ToolTipText     =   "����Tab������һ����"
      Top             =   2520
      Width           =   1815
   End
   Begin VB.CommandButton Command1 
      Caption         =   "������η���"
      Height          =   375
      Left            =   240
      TabIndex        =   7
      ToolTipText     =   "����Tab������һ����"
      Top             =   2040
      Width           =   1815
   End
   Begin VB.TextBox Text3 
      BackColor       =   &H00FF0000&
      ForeColor       =   &H8000000B&
      Height          =   270
      Left            =   480
      TabIndex        =   6
      ToolTipText     =   "����Tab������һ����"
      Top             =   1680
      Width           =   1575
   End
   Begin VB.TextBox Text2 
      BackColor       =   &H0000C000&
      ForeColor       =   &H8000000B&
      Height          =   270
      Left            =   480
      TabIndex        =   5
      ToolTipText     =   "����Tab������һ����"
      Top             =   1320
      Width           =   1575
   End
   Begin VB.TextBox Text1 
      BackColor       =   &H000000FF&
      ForeColor       =   &H8000000B&
      Height          =   270
      Left            =   480
      TabIndex        =   4
      ToolTipText     =   "����Tab������һ����"
      Top             =   960
      Width           =   1575
   End
   Begin VB.Label Label7 
      AutoSize        =   -1  'True
      Caption         =   "����Tab������һ����"
      Height          =   180
      Left            =   240
      TabIndex        =   11
      Top             =   480
      Width           =   1710
   End
   Begin VB.Label Label6 
      AutoSize        =   -1  'True
      Caption         =   "x="
      Height          =   180
      Left            =   2280
      TabIndex        =   9
      Top             =   2520
      Visible         =   0   'False
      Width           =   180
   End
   Begin VB.Label Label5 
      AutoSize        =   -1  'True
      Caption         =   "x="
      Height          =   180
      Left            =   2280
      TabIndex        =   8
      Top             =   2160
      Width           =   180
   End
   Begin VB.Label Label4 
      Alignment       =   1  'Right Justify
      AutoSize        =   -1  'True
      Caption         =   "c="
      BeginProperty Font 
         Name            =   "����"
         Size            =   12
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   240
      Left            =   120
      TabIndex        =   3
      Top             =   1680
      Width           =   240
   End
   Begin VB.Label Label3 
      Alignment       =   1  'Right Justify
      AutoSize        =   -1  'True
      Caption         =   "b="
      BeginProperty Font 
         Name            =   "����"
         Size            =   12
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   240
      Left            =   120
      TabIndex        =   2
      Top             =   1320
      Width           =   240
   End
   Begin VB.Label Label2 
      Alignment       =   1  'Right Justify
      AutoSize        =   -1  'True
      Caption         =   "a="
      BeginProperty Font 
         Name            =   "����"
         Size            =   12
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   240
      Left            =   120
      TabIndex        =   1
      Top             =   960
      Width           =   240
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      AutoSize        =   -1  'True
      Caption         =   "��ҵ2������"
      Height          =   180
      Left            =   105
      TabIndex        =   0
      Top             =   120
      Width           =   2085
      WordWrap        =   -1  'True
   End
   Begin VB.Image Image1 
      Height          =   765
      Left            =   2280
      Picture         =   "��ҵ2������.frx":0000
      Stretch         =   -1  'True
      Top             =   120
      Width           =   2160
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim a As Double
Private Sub Command1_Click()
a = Text1.Text
B = Text2.Text
C = Text3.Text
If a = 0 Then
    MsgBox ("��a=0ʱ���÷��̲�Ϊ���η��̣���ʹ�á�����һ�η��̡����")
Else
    d = B * B - 4 * a * C
    If d > 0 Then
        Label5.Caption = "x1=" & Format(((-B + Sqr(d)) / (2 * a)), "0.00")
        Label5.Visible = True
        Label6.Caption = "x2=" & Format(((-B - Sqr(d)) / (2 * a)), "0.00")
        Label6.Visible = True
    Else
        If d = 0 Then
            Label5.Caption = "x1=x2=" & Format(((-B) / (2 * a)), "0.00")
            Label5.Visible = True
            Label6.Visible = False
        Else
            MsgBox ("�÷�����ʵ����")
            Label5.Caption = "�÷�����ʵ����"
            Label5.Visible = True
            Label6.Visible = False
        End If
    End If
End If
End Sub

Private Sub Command2_Click()
Text1.Text = ""
Text2.Text = ""
Text3.Text = ""
Label5.Caption = "x="
Label5.Visible = True
Label6.Visible = False
End Sub

Private Sub Command3_Click()
a = Text1.Text
B = Text2.Text
C = Text3.Text
If a <> 0 Then
    MsgBox ("��a<>0ʱ���÷��̲�Ϊһ�η��̣���ʹ�á�������η��̡����")
Else
    If (B <> 0) Then
        Label5.Caption = "x=" & Format((C / (-B)), "0.00")
    Else
        If (B = 0) And (C = 0) Then
            Label5.Caption = "xΪһ��ʵ��"
        Else
            If (B = 0) And (C <> 0) Then
                Label5.Caption = "��ʵ����"
            End If
        End If
    End If
End If
End Sub
