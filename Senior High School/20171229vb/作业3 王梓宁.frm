VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   2340
   ClientLeft      =   105
   ClientTop       =   435
   ClientWidth     =   3630
   LinkTopic       =   "Form1"
   ScaleHeight     =   2340
   ScaleWidth      =   3630
   StartUpPosition =   3  '����ȱʡ
   Begin VB.CommandButton Command1 
      Caption         =   "Command1"
      Height          =   372
      Left            =   1200
      TabIndex        =   0
      Top             =   1320
      Width           =   972
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()

Dim n As Integer
n = Val(InputBox(""))      'n�������ڴ�������ȡö�ٳ�������ʱ�ıȽ�ֵ

'�����Ƕ������n�ͶԱ���n��ֵ����ȷ���룬Ϊ�����ṩ��Ҫ�����ݣ����������޸ġ����򲻵÷�

'�����Ǵ����д��
s = 0
For i = 100001 To 999999 Step 2
    c = i \ 100 Mod 100
    If (i Mod n = 3) And (n = c) Then
        s = s + i
    End If
Next
Print s










End Sub


