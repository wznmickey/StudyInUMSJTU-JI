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
   Begin VB.CommandButton Command2 
      Caption         =   "���"
      Height          =   735
      Left            =   3000
      TabIndex        =   4
      Top             =   960
      Width           =   1455
   End
   Begin VB.ListBox List1 
      Height          =   2400
      Left            =   360
      TabIndex        =   3
      Top             =   480
      Width           =   2535
   End
   Begin VB.CommandButton Command1 
      Caption         =   "����"
      Height          =   1095
      Left            =   3000
      TabIndex        =   0
      Top             =   1800
      Width           =   1455
   End
   Begin VB.Label Label2 
      Caption         =   "��ҵ1 ������"
      Height          =   615
      Left            =   3120
      TabIndex        =   2
      Top             =   240
      Width           =   1335
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      AutoSize        =   -1  'True
      Caption         =   "���ýŹ�100ֻ������ֻ���ü�ֻ��"
      Height          =   360
      Left            =   120
      TabIndex        =   1
      Top             =   120
      Width           =   2895
      WordWrap        =   -1  'True
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim bool As Boolean
Private Sub Command1_Click()
If bool = True Then
    MsgBox ("�Զ����֮ǰ����")
    List1.Clear
    bool = False
End If
bool = True
List1.AddItem "��֪���ýŹ�100ֻ"
List1.AddItem "�󼦼�ֻ���ü�ֻ��"
List1.AddItem " ��ҵ1  ������"
List1.AddItem "  ��       ��"
For i = 1 To 49
    If ((100 - 2 * i) Mod 4 = 0) And ((100 - 2 * i) >= 1) Then
        a = Format(i, "00")
        b = Format((100 - 2 * i) / 4, "00")
        List1.AddItem " " & a & "ֻ     " & b & "ֻ"
    End If
Next
List1.AddItem " ��ҵ1  ������"
End Sub

Private Sub Command2_Click()
List1.Clear
bool = False
End Sub

Private Sub Form_Load()
bool = False
End Sub

Private Sub List1_Click()

End Sub
