VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   3195
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   4680
   LinkTopic       =   "Form1"
   ScaleHeight     =   3195
   ScaleWidth      =   4680
   StartUpPosition =   3  '����ȱʡ
   Begin VB.CommandButton Command1 
      Caption         =   "Command1"
      Height          =   615
      Left            =   3480
      TabIndex        =   2
      Top             =   2160
      Width           =   1095
   End
   Begin VB.TextBox Text2 
      Height          =   615
      Left            =   480
      TabIndex        =   1
      Top             =   2400
      Width           =   2175
   End
   Begin VB.TextBox Text1 
      Height          =   615
      Left            =   480
      TabIndex        =   0
      Top             =   1440
      Width           =   2295
   End
   Begin VB.Label Label1 
      Height          =   975
      Left            =   240
      TabIndex        =   3
      Top             =   240
      Width           =   4215
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
'1������Len��x���Ĺ��ܣ�ȡ�ַ���x�ĳ���ֵ�����ַ�����ֵ������x=��abc������Len��x����ֵΪ3
'2������Mid��x,y,z���Ĺ��ܣ����ַ���x�е�y���ַ���ʼȡx���ַ�����x=��zbcdefg������Mid��x,4,3��ȡ�õ�ֵ��def
'3������Asc��x���Ĺ��ܣ����ַ�x��ASCII�����ֵ����x=��A������Asc��x����ֵΪ65

Dim a As String, c As String, s As String
Dim I As Integer, b As Integer
a = Text1.Text  'a�������ڴӵ�һ���ı����ڶ�ȡ�ַ���ֵ
b = Len(a)      'b�������ڴ���ַ����ĳ���ֵ�����ַ�����ֵ��
'�����Ƕ������������aֵ����ȷ���룬�������޸�
s = "": c = ""
For I = 1 To b '���ڻ��ߴ�������ȷ�Ĵ��룬Ȼ��ɾ���»���
   c = Mid(a, I, 1)
   If Asc(c) < 0 Or Asc(c) > 127 Then
     s = s + c
   End If
Next I

'���������������ȷ���룬Ҳ�������޸�

Text2.Text = s  '������Ľ��д�ڵڶ����ı�����
End Sub

