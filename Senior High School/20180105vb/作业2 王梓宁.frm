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
      Caption         =   "Command1"
      Height          =   495
      Left            =   1200
      TabIndex        =   0
      Top             =   2160
      Width           =   1335
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
bz = 0: m = 1
n = Val(InputBox("Input n="))
Do While bz = 0  '�»��߲���Ϊ�������λ�ã������ɾ���»���
  If Int(Sqr(m + n)) = Sqr(m + n) Then  '�»��߲���Ϊ�������λ�ã������ɾ���»���
     Print m
     bz = 1
  End If
      m = m + 1 '�»��߲���Ϊ�������λ�ã������ɾ���»���
Loop
End Sub


