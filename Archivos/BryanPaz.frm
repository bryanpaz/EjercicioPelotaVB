VERSION 5.00
Begin VB.Form Pelotita 
   BackColor       =   &H00000000&
   Caption         =   "Form1"
   ClientHeight    =   6285
   ClientLeft      =   120
   ClientTop       =   465
   ClientWidth     =   9045
   LinkTopic       =   "Form1"
   ScaleHeight     =   6285
   ScaleWidth      =   9045
   StartUpPosition =   3  'Windows Default
   Begin VB.Timer Timer2 
      Enabled         =   0   'False
      Interval        =   200
      Left            =   1800
      Top             =   240
   End
   Begin VB.Timer Timer1 
      Enabled         =   0   'False
      Interval        =   200
      Left            =   1200
      Top             =   240
   End
   Begin VB.CommandButton Command2 
      BackColor       =   &H000000FF&
      Caption         =   "P A U S A"
      BeginProperty Font 
         Name            =   "Century Gothic"
         Size            =   18
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   3000
      Style           =   1  'Graphical
      TabIndex        =   1
      Top             =   3120
      Width           =   2775
   End
   Begin VB.CommandButton Command1 
      BackColor       =   &H0000FF00&
      Caption         =   "I N I C I O"
      BeginProperty Font 
         Name            =   "Century Gothic"
         Size            =   18
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   3000
      Style           =   1  'Graphical
      TabIndex        =   0
      Top             =   2040
      Width           =   2775
   End
   Begin VB.Shape Shape5 
      BackColor       =   &H00FFFFFF&
      BackStyle       =   1  'Opaque
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H00FFFFFF&
      Height          =   375
      Left            =   8640
      Top             =   0
      Width           =   495
   End
   Begin VB.Shape Shape4 
      BackColor       =   &H00FFFFFF&
      BackStyle       =   1  'Opaque
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H00FFFFFF&
      Height          =   375
      Left            =   8640
      Top             =   6000
      Width           =   495
   End
   Begin VB.Shape Shape3 
      BackColor       =   &H00FFFFFF&
      BackStyle       =   1  'Opaque
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H00FFFFFF&
      Height          =   255
      Left            =   0
      Top             =   0
      Width           =   375
   End
   Begin VB.Shape Shape2 
      BackColor       =   &H00FFFFFF&
      BackStyle       =   1  'Opaque
      BorderColor     =   &H00FFFFFF&
      FillColor       =   &H00FFFFFF&
      Height          =   375
      Left            =   0
      Top             =   6000
      Width           =   375
   End
   Begin VB.Shape Shape1 
      BackColor       =   &H000000FF&
      BackStyle       =   1  'Opaque
      Height          =   375
      Left            =   0
      Top             =   -120
      Width           =   375
   End
End
Attribute VB_Name = "Pelotita"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
Timer1.Enabled = True
If Shape1.Left = 200 Then
Timer1.Enabled = True
ElseIf Shape1.Top = 6000 Then
Timer1.Enabled = True
ElseIf Shape1.Left = 7680 Then
Timer2.Enabled = True
ElseIf Shape1.Top = 200 Then
Timer2.Enabled = True
End If
End Sub

Private Sub Command2_Click()
Timer1.Enabled = False
Timer2.Enabled = False
End Sub

Private Sub Timer1_Timer()
x = Shape1.Top
x = x + 150
Shape1.Top = x
If Shape1.Top > 6000 Then
Shape1.Top = 6000

x = Shape1.Left
x = x + 150
Shape1.Left = x
If Shape1.Left > 8680 Then
Shape1.Left = 8680
Timer2.Enabled = True
Timer1.Enabled = False
End If
End If
End Sub

Private Sub Timer2_Timer()
x = Shape1.Top
x = x - 150
Shape1.Top = x
If Shape1.Top < 100 Then
Shape1.Top = 100

x = Shape1.Left
x = x - 150
Shape1.Left = x
If Shape1.Left < 200 Then
Shape1.Left = 200
Timer2.Enabled = False
Timer1.Enabled = True
End If
End If
End Sub
