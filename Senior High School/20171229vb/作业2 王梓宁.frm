VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   2445
   ClientLeft      =   105
   ClientTop       =   435
   ClientWidth     =   9105
   LinkTopic       =   "Form1"
   ScaleHeight     =   2445
   ScaleWidth      =   9105
   StartUpPosition =   3  '����ȱʡ
   Begin VB.TextBox Text2 
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   612
      Left            =   120
      TabIndex        =   2
      Top             =   1320
      Width           =   6252
   End
   Begin VB.TextBox Text1 
      Height          =   492
      Left            =   120
      TabIndex        =   1
      Text            =   "ADGDSFDSGFDFDJGFJHGLLGFHGFDSDFSGFFGFDSGHGHKJSDKGFDHFGGLKFSHGFSFGGFDJKHGFDJHGGHKJH:LLKJHL"
      Top             =   600
      Width           =   8892
   End
   Begin VB.CommandButton Command1 
      Caption         =   "����"
      Height          =   612
      Left            =   6720
      TabIndex        =   0
      Top             =   1320
      Width           =   1572
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
Dim a As String, s As String
Dim i As Integer, j As Integer, b As Integer
a = Text1.Text     'a�������ڴӵ�һ���ı����ڶ�ȡ�����ַ���ֵ
b = Len(a)         'b�������ڴ�������ַ����ĳ���ֵ�����ַ�����ֵ��

'�����Ƕ������������aֵ����ȷ���룬�������޸�

s = ""
For i = b To 1 Step -1
  s = s + Mid(a, i, 1)
Next i
a = s: s = ""
j = -2  '�»��߲���Ϊ�������λ��
For i = 1 To b Step 26
  j = j + 3
  s = s + Mid(a, i, j)
  i = i + j
Next i

'���������������ȷ���룬Ҳ�������޸�

Text2.Text = s      '������Ľ��д�ڵڶ����ı�����

'���������ȷ������Ҫ�����н�����ı����ڸ�����д���Ծ�ָ��λ��

'����뽫������ȷ�ı������ļ�������ԭ��λ��

End Sub

