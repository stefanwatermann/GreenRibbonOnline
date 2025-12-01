#tag WebPage
Begin WebDialog DialogGraphicInput
   Compatibility   =   ""
   ControlCount    =   0
   ControlID       =   ""
   CSSClasses      =   ""
   Enabled         =   True
   Height          =   600
   Index           =   -2147483648
   Indicator       =   0
   LayoutDirection =   0
   LayoutType      =   0
   Left            =   0
   LockBottom      =   False
   LockHorizontal  =   False
   LockLeft        =   False
   LockRight       =   False
   LockTop         =   False
   LockVertical    =   False
   PanelIndex      =   0
   Position        =   0
   TabIndex        =   0
   Top             =   0
   Visible         =   True
   Width           =   760
   _mDesignHeight  =   0
   _mDesignWidth   =   0
   _mPanelIndex    =   -1
   Begin WebButton btnOk
      AllowAutoDisable=   False
      Cancel          =   False
      Caption         =   "OK"
      ControlID       =   ""
      CSSClasses      =   ""
      Default         =   True
      Enabled         =   True
      Height          =   38
      Index           =   -2147483648
      Indicator       =   1
      Left            =   384
      LockBottom      =   True
      LockedInPosition=   False
      LockHorizontal  =   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   False
      LockVertical    =   False
      Outlined        =   False
      PanelIndex      =   0
      Scope           =   2
      TabIndex        =   4
      TabStop         =   True
      Tooltip         =   ""
      Top             =   542
      Visible         =   True
      Width           =   100
      _mPanelIndex    =   -1
   End
   Begin WebButton btnCancel
      AllowAutoDisable=   False
      Cancel          =   True
      Caption         =   "Abbruch"
      ControlID       =   ""
      CSSClasses      =   ""
      Default         =   False
      Enabled         =   True
      Height          =   38
      Index           =   -2147483648
      Indicator       =   0
      Left            =   276
      LockBottom      =   True
      LockedInPosition=   False
      LockHorizontal  =   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   False
      LockVertical    =   False
      Outlined        =   False
      PanelIndex      =   0
      Scope           =   2
      TabIndex        =   5
      TabStop         =   True
      Tooltip         =   ""
      Top             =   542
      Visible         =   True
      Width           =   100
      _mPanelIndex    =   -1
   End
   Begin WebLabel lbCaption
      Bold            =   False
      ControlID       =   ""
      CSSClasses      =   ""
      Enabled         =   True
      FontName        =   ""
      FontSize        =   22.0
      Height          =   38
      Index           =   -2147483648
      Indicator       =   0
      Italic          =   False
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   True
      LockHorizontal  =   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      LockVertical    =   False
      Multiline       =   False
      PanelIndex      =   0
      Scope           =   2
      TabIndex        =   17
      TabStop         =   True
      Text            =   "Grafik"
      TextAlignment   =   2
      TextColor       =   &c000000FF
      Tooltip         =   ""
      Top             =   15
      Underline       =   False
      Visible         =   True
      Width           =   720
      _mPanelIndex    =   -1
   End
   Begin WebTabPanel TabPanel1
      ControlCount    =   0
      ControlID       =   ""
      CSSClasses      =   "nav-fill"
      Enabled         =   True
      HasBorder       =   True
      Height          =   400
      Index           =   -2147483648
      Indicator       =   0
      LayoutDirection =   0
      LayoutType      =   0
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   True
      LockHorizontal  =   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      LockVertical    =   False
      PanelCount      =   2
      PanelIndex      =   0
      Scope           =   2
      SelectedPanelIndex=   0
      TabDefinition   =   "Linke Seite\rRechte Seite"
      TabIndex        =   18
      TabStop         =   True
      Tooltip         =   ""
      Top             =   120
      Visible         =   True
      Width           =   720
      _mDesignHeight  =   0
      _mDesignWidth   =   0
      _mPanelIndex    =   -1
      Begin GraphicsGrid GraphicsGridLeft
         BorderRadius    =   6
         BorderThickness =   0
         ColorHover      =   &cEDEDED00
         ColorSelected   =   &cAFCDB000
         ControlCount    =   0
         ControlID       =   ""
         CSSClasses      =   ""
         Enabled         =   True
         Height          =   345
         Index           =   -2147483648
         Indicator       =   0
         ItemHeight      =   130
         ItemMargin      =   5
         ItemPadding     =   10
         ItemWidth       =   130
         LayoutDirection =   0
         LayoutType      =   0
         Left            =   30
         LockBottom      =   True
         LockedInPosition=   False
         LockHorizontal  =   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         LockVertical    =   False
         PanelIndex      =   0
         Parent          =   "TabPanel1"
         Scope           =   2
         ScrollDirection =   0
         TabIndex        =   20
         TabPanelIndex   =   0
         TabStop         =   True
         Tooltip         =   ""
         Top             =   174
         Visible         =   True
         Width           =   709
         _mDesignHeight  =   0
         _mDesignWidth   =   0
         _mPanelIndex    =   -1
      End
      Begin GraphicsGrid GraphicsGridRight
         BorderRadius    =   6
         BorderThickness =   0
         ColorHover      =   &cEDEDED00
         ColorSelected   =   &cAFCDB000
         ControlCount    =   0
         ControlID       =   ""
         CSSClasses      =   ""
         Enabled         =   True
         Height          =   345
         Index           =   -2147483648
         Indicator       =   0
         ItemHeight      =   130
         ItemMargin      =   5
         ItemPadding     =   10
         ItemWidth       =   130
         LayoutDirection =   0
         LayoutType      =   0
         Left            =   30
         LockBottom      =   True
         LockedInPosition=   True
         LockHorizontal  =   False
         LockLeft        =   True
         LockRight       =   True
         LockTop         =   True
         LockVertical    =   False
         PanelIndex      =   1
         Parent          =   "TabPanel1"
         Scope           =   2
         ScrollDirection =   0
         TabIndex        =   0
         TabPanelIndex   =   -1
         TabStop         =   True
         Tooltip         =   ""
         Top             =   174
         Visible         =   True
         Width           =   709
         _mDesignHeight  =   0
         _mDesignWidth   =   0
         _mPanelIndex    =   -1
      End
   End
   Begin WebPopupMenu cbStrechtFactorLeft
      ControlID       =   ""
      CSSClasses      =   ""
      Enabled         =   True
      Height          =   38
      Index           =   -2147483648
      Indicator       =   0
      InitialValue    =   "150%\n140%\n130%\n120%\n110%\n100%\n90%\n80%\n70%\n60%\n50%\n40%\n30%\n20%\n10%"
      LastAddedRowIndex=   0
      LastRowIndex    =   0
      Left            =   94
      LockBottom      =   False
      LockedInPosition=   True
      LockHorizontal  =   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      LockVertical    =   False
      PanelIndex      =   0
      Parent          =   "nil"
      RowCount        =   0
      Scope           =   2
      SelectedRowIndex=   5
      SelectedRowText =   ""
      TabIndex        =   19
      TabPanelIndex   =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   65
      Visible         =   True
      Width           =   115
      _mPanelIndex    =   -1
   End
   Begin WebLabel Label1
      Bold            =   False
      ControlID       =   ""
      CSSClasses      =   ""
      Enabled         =   True
      FontName        =   ""
      FontSize        =   0.0
      Height          =   38
      Index           =   -2147483648
      Indicator       =   0
      Italic          =   True
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   True
      LockHorizontal  =   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      LockVertical    =   False
      Multiline       =   False
      PanelIndex      =   0
      Parent          =   "nil"
      Scope           =   2
      TabIndex        =   20
      TabStop         =   True
      Text            =   "Größe"
      TextAlignment   =   3
      TextColor       =   &c000000FF
      Tooltip         =   ""
      Top             =   65
      Underline       =   False
      Visible         =   True
      Width           =   66
      _mPanelIndex    =   -1
   End
End
#tag EndWebPage

#tag WindowCode
	#tag Method, Flags = &h21
		Private Function GetPicture(filename as string) As Picture
		  Var f As FolderItem = Session.CurrentDataFolder.Child("graphics").Child(filename)
		  If f <> Nil And f.Exists and not f.IsFolder Then
		    Var data As MemoryBlock = File.ReadAllBytes(f)
		    Return Picture.FromData(data)
		  End
		  Return Nil
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetElem(left as RibbonElementGraphic, right as RibbonElementGraphic)
		  PictureFilenameLeft = Left.Filename
		  PictureFilenameRight = Right.Filename 
		  StretchFactorLeft = Left.StretchFactor
		  StretchFactorRight = Right.StretchFactor
		  
		  GraphicsGridLeft.SelectItem(PictureFilenameLeft)
		  GraphicsGridRight.SelectItem(PictureFilenameRight)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Show(side as string = "left")
		  If Self.TabPanel1.PanelCount > 1 And Session.CurrentWorkload.SingleRibbon Then
		    Self.TabPanel1.RemovePanelAt(1)
		    Self.TabPanel1.CaptionAt(0) = "Schleifengrafik"
		  End
		  
		  If side = "left" Then
		    Self.TabPanel1.SelectedPanelIndex = 0
		  Else
		    Self.TabPanel1.SelectedPanelIndex = 1
		  End
		  
		  // Calling the overridden superclass method.
		  Super.Show()
		  
		End Sub
	#tag EndMethod


	#tag Hook, Flags = &h0
		Event OkClicked(leftPicture as Picture, leftFilename as string, rightPicture as Picture, rightFilename as string, leftStretchFactor as Double, rightStretchFactor as double)
	#tag EndHook


	#tag Property, Flags = &h21
		Private PictureFilenameLeft As String
	#tag EndProperty

	#tag Property, Flags = &h21
		Private PictureFilenameRight As String
	#tag EndProperty

	#tag Property, Flags = &h21
		Private StretchFactorLeft As Double
	#tag EndProperty

	#tag Property, Flags = &h21
		Private StretchFactorRight As Double
	#tag EndProperty


	#tag Constant, Name = kNoPicture, Type = String, Dynamic = False, Default = \"kein_bild.png", Scope = Private
	#tag EndConstant


#tag EndWindowCode

#tag Events btnOk
	#tag Event
		Sub Pressed()
		  Var leftPicture As Picture = GetPicture(PictureFilenameLeft)
		  Var rightPicture As Picture = GetPicture(PictureFilenameRight)
		  
		  Self.Close
		  
		  RaiseEvent OkClicked(leftPicture, PictureFilenameLeft, rightPicture, PictureFilenameRight, StretchFactorLeft, StretchFactorRight)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnCancel
	#tag Event
		Sub Pressed()
		  Self.close
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events TabPanel1
	#tag Event
		Sub PanelChanged()
		  If TabPanel1.SelectedPanelIndex = 0 Then
		    If StretchFactorLeft <> 0.0 Then
		      cbStrechtFactorLeft.SelectRowWithText(Str(StretchFactorLeft * 100) + "%")
		    End
		  Else
		    If StretchFactorRight<> 0.0 Then
		      cbStrechtFactorLeft.SelectRowWithText(Str(StretchFactorRight * 100) + "%")
		    End
		  End
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events GraphicsGridLeft
	#tag Event
		Sub Pressed(name as string, image as WebPicture)
		  If image <> Nil Then
		    If image.Filename = kNoPicture Then
		      PictureFilenameLeft = ""
		    Else
		      PictureFilenameLeft = image.Filename
		    End
		  end
		End Sub
	#tag EndEvent
	#tag Event
		Sub Opening()
		  Var graphicsFolder As FolderItem = Session.CurrentDataFolder.Child("graphics")
		  
		  Me.ImageFiles.RemoveAll
		  
		  Me.ImageFiles.Add(graphicsFolder.Child("kein_bild.png"))
		  
		  For Each f As FolderItem In graphicsFolder.Children
		    If Not f.IsFolder Then
		      If f.Name.Lowercase.EndsWith(".png") Or f.Name.Lowercase.EndsWith(".jpg") Then
		        Me.ImageFiles.Add(f)
		      End
		    End
		  Next
		End Sub
	#tag EndEvent
	#tag Event
		Sub Shown()
		  If PictureFilenameLeft <> "" Then
		    Me.SelectItem(PictureFilenameLeft)
		  Else
		    Me.SelectItem(0)
		  End
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events GraphicsGridRight
	#tag Event
		Sub Pressed(name as string, image as WebPicture)
		  If image <> Nil Then
		    If image.Filename = kNoPicture Then
		      PictureFilenameRight = ""
		    Else
		      PictureFilenameRight = image.Filename
		    End
		  end
		End Sub
	#tag EndEvent
	#tag Event
		Sub Opening()
		  Var graphicsFolder As FolderItem = Session.CurrentDataFolder.Child("graphics")
		  
		  Me.ImageFiles.RemoveAll
		  
		  Me.ImageFiles.Add(graphicsFolder.Child("kein_bild.png"))
		  
		  For Each f As FolderItem In graphicsFolder.Children
		    If Not f.IsFolder Then
		      If f.Name.Lowercase.EndsWith(".png") Or f.Name.Lowercase.EndsWith(".jpg") Then
		        Me.ImageFiles.Add(f)
		      End
		    End
		  Next
		End Sub
	#tag EndEvent
	#tag Event
		Sub Shown()
		  If PictureFilenameRight <> "" Then
		    Me.SelectItem(PictureFilenameRight)
		  Else
		    Me.SelectItem(0)
		  End
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events cbStrechtFactorLeft
	#tag Event
		Sub SelectionChanged(item As WebMenuItem)
		  If item <> Nil Then
		    If TabPanel1.SelectedPanelIndex = 0 Then
		      StretchFactorLeft = Val(item.Text) / 100
		    Else
		      StretchFactorRight = Val(item.Text) / 100
		    End
		  End
		End Sub
	#tag EndEvent
	#tag Event
		Sub Shown()
		  If TabPanel1.SelectedPanelIndex = 0 Then
		    If StretchFactorLeft <> 0.0 Then
		      Me.SelectRowWithText(Str(StretchFactorLeft * 100) + "%")
		    End
		  Else
		    If StretchFactorRight <> 0.0 Then
		      Me.SelectRowWithText(Str(StretchFactorRight * 100) + "%")
		    End
		  End
		End Sub
	#tag EndEvent
#tag EndEvents
#tag ViewBehavior
	#tag ViewProperty
		Name="PanelIndex"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Position"
		Visible=true
		Group="Position"
		InitialValue="0"
		Type="WebDialog.Positions"
		EditorType="Enum"
		#tag EnumValues
			"0 - Top"
			"1 - Center"
		#tag EndEnumValues
	#tag EndViewProperty
	#tag ViewProperty
		Name="ControlCount"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="_mPanelIndex"
		Visible=false
		Group="Behavior"
		InitialValue="-1"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Index"
		Visible=false
		Group="ID"
		InitialValue="-2147483648"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Name"
		Visible=true
		Group="ID"
		InitialValue=""
		Type="String"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Super"
		Visible=true
		Group="ID"
		InitialValue=""
		Type="String"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Left"
		Visible=true
		Group="Position"
		InitialValue="0"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Top"
		Visible=true
		Group="Position"
		InitialValue="0"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="ControlID"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="String"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Enabled"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Height"
		Visible=true
		Group="Behavior"
		InitialValue="400"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="LayoutType"
		Visible=true
		Group="Behavior"
		InitialValue="LayoutTypes.Fixed"
		Type="LayoutTypes"
		EditorType="Enum"
		#tag EnumValues
			"0 - Fixed"
			"1 - Flex"
		#tag EndEnumValues
	#tag EndViewProperty
	#tag ViewProperty
		Name="LockBottom"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="LockHorizontal"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="LockLeft"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="LockRight"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="LockTop"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="LockVertical"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Visible"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Width"
		Visible=true
		Group="Behavior"
		InitialValue="600"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="_mDesignHeight"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="_mDesignWidth"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="_mName"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="String"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="TabIndex"
		Visible=true
		Group="Visual Controls"
		InitialValue=""
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Indicator"
		Visible=false
		Group="Visual Controls"
		InitialValue=""
		Type="WebUIControl.Indicators"
		EditorType="Enum"
		#tag EnumValues
			"0 - Default"
			"1 - Primary"
			"2 - Secondary"
			"3 - Success"
			"4 - Danger"
			"5 - Warning"
			"6 - Info"
			"7 - Light"
			"8 - Dark"
			"9 - Link"
		#tag EndEnumValues
	#tag EndViewProperty
	#tag ViewProperty
		Name="LayoutDirection"
		Visible=true
		Group="WebView"
		InitialValue="LayoutDirections.LeftToRight"
		Type="LayoutDirections"
		EditorType="Enum"
		#tag EnumValues
			"0 - LeftToRight"
			"1 - RightToLeft"
			"2 - TopToBottom"
			"3 - BottomToTop"
		#tag EndEnumValues
	#tag EndViewProperty
#tag EndViewBehavior
