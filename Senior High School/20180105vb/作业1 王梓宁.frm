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
   Begin VB.CommandButton Command2 
      Caption         =   "�Էֲ���"
      Height          =   375
      Left            =   1680
      TabIndex        =   5
      Top             =   1800
      Width           =   975
   End
   Begin VB.CommandButton Command1 
      Caption         =   "˳�����"
      Height          =   375
      Left            =   1680
      TabIndex        =   4
      Top             =   1080
      Width           =   975
   End
   Begin VB.ListBox List2 
      Height          =   2400
      Left            =   2880
      TabIndex        =   2
      Top             =   480
      Width           =   1455
   End
   Begin VB.ListBox List1 
      Height          =   2400
      Left            =   240
      TabIndex        =   0
      Top             =   480
      Width           =   1335
   End
   Begin VB.Label Label2 
      Caption         =   "�������"
      Height          =   255
      Left            =   3000
      TabIndex        =   3
      Top             =   240
      Width           =   855
   End
   Begin VB.Label Label1 
      Caption         =   "��������"
      Height          =   255
      Left            =   240
      TabIndex        =   1
      Top             =   240
      Width           =   855
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim a(1 To 10) As Integer, b(1 To 10) As Integer
Private Sub sort(ByVal Left As Long, ByVal Right As Long)
Dim Mid As Long, l As Long, r As Long
If Left >= Right Then Exit Sub
l = Left
r = Right
Mid = (Left + Right) \ 2
Do While (l <= r) And (l <= Right) And (r >= Left)
    Do While a(l) < a(Mid)
        l = l + 1
        If l > Right Then Exit Do
    Loop
    Do While a(r) > a(Mid)
        r = r - 1
        If r < Left Then Exit Do
    Loop
    If l <= r Then
        t = a(l)
        a(l) = a(r)
        a(r) = t
        t = b(l)
        b(l) = b(r)
        b(r) = t
        l = l + 1
        r = r - 1
    End If
Loop
If r < Right Then Call sort(Left, r)
If l > Left Then Call sort(l, Right)
End Sub
Private Sub Command1_Click()
Key = InputBox("����Ҫ�ҵ���")
flag = False
For i = 1 To 10
    If a(i) = Key Then
        List2.AddItem "��" & i & "��"
        flag = True
    End If
Next i
If flag = False Then List2.AddItem "δ�ҵ�"
End Sub
Private Sub Command2_Click()
Key = InputBox("����Ҫ�ҵ���")
Call sort(1, 10)
List1.Clear
For i = 1 To 10
  List1.AddItem a(i)
Next
i = 1
j = 10
flag = False
Do While i <= j
    Midd = (i + j) \ 2
    If a(Midd) < Key Then
        i = Midd + 1
    Else
        If a(Midd) > Key Then
            j = Midd - 1
        Else
            flag = True
            Exit Do
        End If
    End If
Loop
If flag = True Then List2.AddItem "ԭ��" & b(Midd) & "�����ֵ�" & Midd & "��"
If flag = False Then List2.AddItem "δ�ҵ�"
End Sub
Private Sub Form_Load()
For i = 1 To 10
  a(i) = InputBox("����������10��������")
  List1.AddItem a(i)
  b(i) = i
Next
End Sub



