#tag WebPage
Begin WebDialog DialogRibbonLayout
   Compatibility   =   ""
   ControlCount    =   0
   ControlID       =   ""
   CSSClasses      =   ""
   Enabled         =   True
   Height          =   540
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
   Width           =   570
   _mDesignHeight  =   0
   _mDesignWidth   =   0
   _mPanelIndex    =   -1
   Begin WebLabel Label1
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
      TabIndex        =   0
      TabStop         =   True
      Text            =   "Schleifen Layout"
      TextAlignment   =   2
      TextColor       =   &c000000
      Tooltip         =   ""
      Top             =   15
      Underline       =   False
      Visible         =   True
      Width           =   530
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
      Left            =   172
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
      TabIndex        =   1
      TabStop         =   True
      Tooltip         =   ""
      Top             =   482
      Visible         =   True
      Width           =   100
      _mPanelIndex    =   -1
   End
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
      Left            =   297
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
      TabIndex        =   2
      TabStop         =   True
      Tooltip         =   ""
      Top             =   482
      Visible         =   True
      Width           =   100
      _mPanelIndex    =   -1
   End
   Begin WebTabPanel TabPanel1
      ControlCount    =   0
      ControlID       =   ""
      CSSClasses      =   "nav-fill"
      Enabled         =   True
      HasBorder       =   True
      Height          =   390
      Index           =   -2147483648
      Indicator       =   ""
      LayoutDirection =   "LayoutDirections.LeftToRight"
      LayoutType      =   "LayoutTypes.Fixed"
      Left            =   40
      LockBottom      =   True
      LockedInPosition=   True
      LockHorizontal  =   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      LockVertical    =   False
      PanelCount      =   2
      PanelIndex      =   0
      Scope           =   2
      SelectedPanelIndex=   0
      TabDefinition   =   "Linke Seite\rRechte Seite"
      TabIndex        =   10
      TabStop         =   True
      Tooltip         =   ""
      Top             =   70
      Visible         =   True
      Width           =   480
      _mDesignHeight  =   0
      _mDesignWidth   =   0
      _mPanelIndex    =   -1
      Begin WebCanvas cnvPreviewLeft
         ControlID       =   ""
         CSSClasses      =   ""
         DiffEngineDisabled=   False
         Enabled         =   True
         Height          =   310
         Index           =   -2147483648
         Indicator       =   ""
         Left            =   85
         LockBottom      =   False
         LockedInPosition=   True
         LockHorizontal  =   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         LockVertical    =   False
         PanelIndex      =   0
         Parent          =   "TabPanel1"
         Scope           =   2
         TabIndex        =   0
         TabPanelIndex   =   0
         TabStop         =   True
         Tooltip         =   ""
         Top             =   130
         Visible         =   True
         Width           =   110
         _mPanelIndex    =   -1
      End
      Begin WebPopupMenu cbBorderDistanceLeft
         ControlID       =   ""
         CSSClasses      =   ""
         Enabled         =   True
         Height          =   38
         Index           =   -2147483648
         Indicator       =   0
         InitialValue    =   "0mm\n10mm\n20mm\n30mm\n40mm\n50mm\n60mm\n70mm\n80mm\n90mm\n100mm"
         LastAddedRowIndex=   0
         LastRowIndex    =   0
         Left            =   250
         LockBottom      =   False
         LockedInPosition=   True
         LockHorizontal  =   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         LockVertical    =   False
         PanelIndex      =   0
         Parent          =   "TabPanel1"
         RowCount        =   0
         Scope           =   2
         SelectedRowIndex=   2
         SelectedRowText =   ""
         TabIndex        =   0
         TabPanelIndex   =   0
         TabStop         =   True
         Tooltip         =   ""
         Top             =   390
         Visible         =   True
         Width           =   120
         _mPanelIndex    =   -1
      End
      Begin WebLabel Label2
         Bold            =   False
         ControlID       =   ""
         CSSClasses      =   ""
         Enabled         =   True
         FontName        =   ""
         FontSize        =   0.0
         Height          =   38
         Index           =   -2147483648
         Indicator       =   ""
         Italic          =   False
         Left            =   250
         LockBottom      =   False
         LockedInPosition=   True
         LockHorizontal  =   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         LockVertical    =   False
         Multiline       =   False
         PanelIndex      =   0
         Parent          =   "TabPanel1"
         Scope           =   2
         TabIndex        =   0
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "Abstand zu unterem Rand"
         TextAlignment   =   0
         TextColor       =   &c000000FF
         Tooltip         =   ""
         Top             =   355
         Underline       =   False
         Visible         =   True
         Width           =   229
         _mPanelIndex    =   -1
      End
      Begin WebRadioGroup rbElemsPosLeft
         ControlID       =   ""
         CSSClasses      =   ""
         Enabled         =   True
         Height          =   60
         Horizontal      =   False
         Index           =   -2147483648
         Indicator       =   ""
         InitialValue    =   "Elemente unten anordnen\nElemente mittig anordnen"
         Left            =   250
         LockBottom      =   False
         LockedInPosition=   True
         LockHorizontal  =   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         LockVertical    =   False
         PanelIndex      =   0
         Parent          =   "TabPanel1"
         Scope           =   2
         SelectedIndex   =   0
         TabIndex        =   0
         TabPanelIndex   =   0
         TabStop         =   True
         Tooltip         =   ""
         Top             =   240
         Visible         =   True
         Width           =   252
         _mInitialValue  =   "Option 1\rOption 2"
         _mPanelIndex    =   -1
      End
      Begin WebRadioGroup rbTextPosLeft
         ControlID       =   ""
         CSSClasses      =   ""
         Enabled         =   True
         Height          =   69
         Horizontal      =   False
         Index           =   -2147483648
         Indicator       =   ""
         InitialValue    =   "Text unter der Grafik\nText über der Grafik"
         Left            =   250
         LockBottom      =   False
         LockedInPosition=   True
         LockHorizontal  =   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         LockVertical    =   False
         PanelIndex      =   0
         Parent          =   "TabPanel1"
         Scope           =   2
         SelectedIndex   =   0
         TabIndex        =   0
         TabPanelIndex   =   0
         TabStop         =   True
         Tooltip         =   ""
         Top             =   130
         Visible         =   True
         Width           =   221
         _mInitialValue  =   "Option 1\rOption 2"
         _mPanelIndex    =   -1
      End
      Begin WebCanvas cnvPreviewRight
         ControlID       =   ""
         CSSClasses      =   ""
         DiffEngineDisabled=   False
         Enabled         =   True
         Height          =   310
         Index           =   -2147483648
         Indicator       =   0
         Left            =   85
         LockBottom      =   False
         LockedInPosition=   True
         LockHorizontal  =   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         LockVertical    =   False
         PanelIndex      =   1
         Parent          =   "TabPanel1"
         Scope           =   2
         TabIndex        =   0
         TabPanelIndex   =   0
         TabStop         =   True
         Tooltip         =   ""
         Top             =   130
         Visible         =   True
         Width           =   110
         _mPanelIndex    =   -1
      End
      Begin WebPopupMenu cbBorderDistanceRight
         ControlID       =   ""
         CSSClasses      =   ""
         Enabled         =   True
         Height          =   38
         Index           =   -2147483648
         Indicator       =   0
         InitialValue    =   "0mm\n10mm\n20mm\n30mm\n40mm\n50mm\n60mm\n70mm\n80mm\n90mm\n100mm"
         LastAddedRowIndex=   0
         LastRowIndex    =   0
         Left            =   250
         LockBottom      =   False
         LockedInPosition=   True
         LockHorizontal  =   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         LockVertical    =   False
         PanelIndex      =   1
         Parent          =   "TabPanel1"
         RowCount        =   0
         Scope           =   2
         SelectedRowIndex=   2
         SelectedRowText =   ""
         TabIndex        =   0
         TabPanelIndex   =   0
         TabStop         =   True
         Tooltip         =   ""
         Top             =   390
         Visible         =   True
         Width           =   120
         _mPanelIndex    =   -1
      End
      Begin WebLabel Label3
         Bold            =   False
         ControlID       =   ""
         CSSClasses      =   ""
         Enabled         =   True
         FontName        =   ""
         FontSize        =   0.0
         Height          =   38
         Index           =   -2147483648
         Indicator       =   0
         Italic          =   False
         Left            =   250
         LockBottom      =   False
         LockedInPosition=   True
         LockHorizontal  =   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         LockVertical    =   False
         Multiline       =   False
         PanelIndex      =   1
         Parent          =   "TabPanel1"
         Scope           =   2
         TabIndex        =   0
         TabPanelIndex   =   0
         TabStop         =   True
         Text            =   "Abstand zu unterem Rand"
         TextAlignment   =   0
         TextColor       =   &c000000FF
         Tooltip         =   ""
         Top             =   355
         Underline       =   False
         Visible         =   True
         Width           =   229
         _mPanelIndex    =   -1
      End
      Begin WebRadioGroup rbElemsPosRight
         ControlID       =   ""
         CSSClasses      =   ""
         Enabled         =   True
         Height          =   60
         Horizontal      =   False
         Index           =   -2147483648
         Indicator       =   0
         InitialValue    =   "Elemente unten anordnen\nElemente mittig anordnen"
         Left            =   250
         LockBottom      =   False
         LockedInPosition=   True
         LockHorizontal  =   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         LockVertical    =   False
         PanelIndex      =   1
         Parent          =   "TabPanel1"
         Scope           =   2
         SelectedIndex   =   0
         TabIndex        =   0
         TabPanelIndex   =   0
         TabStop         =   True
         Tooltip         =   ""
         Top             =   240
         Visible         =   True
         Width           =   252
         _mInitialValue  =   "Option 1\rOption 2"
         _mPanelIndex    =   -1
      End
      Begin WebRadioGroup rbTextPosRight
         ControlID       =   ""
         CSSClasses      =   ""
         Enabled         =   True
         Height          =   69
         Horizontal      =   False
         Index           =   -2147483648
         Indicator       =   0
         InitialValue    =   "Text unter der Grafik\nText über der Grafik"
         Left            =   250
         LockBottom      =   False
         LockedInPosition=   True
         LockHorizontal  =   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         LockVertical    =   False
         PanelIndex      =   1
         Parent          =   "TabPanel1"
         Scope           =   2
         SelectedIndex   =   0
         TabIndex        =   0
         TabPanelIndex   =   0
         TabStop         =   True
         Tooltip         =   ""
         Top             =   130
         Visible         =   True
         Width           =   221
         _mInitialValue  =   "Option 1\rOption 2"
         _mPanelIndex    =   -1
      End
   End
End
#tag EndWebPage

#tag WindowCode
	#tag Method, Flags = &h0
		Sub SetLayout(left as RibbonLayout, right as RibbonLayout)
		  Self.mLayoutLeft = Left
		  Self.mLayoutRight = Right
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Show()
		  If Self.TabPanel1.PanelCount > 1 And Session.CurrentWorkload.SingleRibbon Then
		    Self.TabPanel1.RemovePanelAt(1)
		    Self.TabPanel1.CaptionAt(0) = "Schleifenlayout"
		  End
		  
		  // Calling the overridden superclass method.
		  Super.Show()
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub UpdateLayoutAndPreviewImage(byref layout as RibbonLayout, byref previewImage as Picture, textPos as integer, elemsPos as Integer)
		  If textPos = 0 Then
		    
		    If elemsPos = 0 Then
		      previewImage = RibbonLayout_TextUnderGraphicBottom
		      layout.Alignment = RibbonLayout.kRibbonAlignmentBottom
		    Else
		      previewImage = RibbonLayout_TextUnderGraphicMiddle
		      layout.Alignment = RibbonLayout.kRibbonAlignmentMiddle
		    End
		    
		    layout.Order = RibbonLayout.kElementOrderTextUnderGraphic
		    
		  Else
		    
		    If elemsPos = 0 Then
		      previewImage = RibbonLayout_TextOverGraphicBottom
		      layout.Alignment = RibbonLayout.kRibbonAlignmentBottom
		    Else
		      previewImage = RibbonLayout_TextOverGraphicMiddle
		      layout.Alignment = RibbonLayout.kRibbonAlignmentMiddle
		    End
		    
		    layout.Order = RibbonLayout.kElementOrderTextAboveGraphic
		    
		  End
		  
		  Self.cnvPreviewLeft.Refresh
		  Self.cnvPreviewRight.Refresh
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub UpdateLeftLayoutAndPreviewImage()
		  UpdateLayoutAndPreviewImage(mLayoutLeft, mPreviewImageLeft, rbTextPosLeft.SelectedIndex, rbElemsPosLeft.SelectedIndex)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub UpdateRightLayoutAndPreviewImage()
		  UpdateLayoutAndPreviewImage(mLayoutRight, mPreviewImageRight, rbTextPosRight.SelectedIndex, rbElemsPosRight.SelectedIndex)
		End Sub
	#tag EndMethod


	#tag Hook, Flags = &h0
		Event OkClicked(left as RibbonLayout, right as RibbonLayout)
	#tag EndHook


	#tag Property, Flags = &h21
		Private mLayoutLeft As RibbonLayout
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mLayoutRight As RibbonLayout
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mPreviewImageLeft As Picture
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mPreviewImageRight As Picture
	#tag EndProperty


#tag EndWindowCode

#tag Events btnCancel
	#tag Event
		Sub Pressed()
		  Self.Close
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnOk
	#tag Event
		Sub Pressed()
		  RaiseEvent OkClicked(Self.mLayoutLeft, self.mLayoutRight)
		  Self.Close
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events cnvPreviewLeft
	#tag Event
		Sub Paint(g As WebGraphics)
		  If mLayoutLeft <> Nil Then
		    If Self.mPreviewImageLeft = Nil Then
		      Self.mPreviewImageLeft = RibbonLayout_TextUnderGraphicBottom
		    End
		    
		    g.DrawPicture(Self.mPreviewImageLeft, 0, -mLayoutLeft.Bottomdistance)
		    
		    g.DrawingColor = Color.Gray
		    g.DrawRectangle(0, 0, g.Width, g.Height)
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events cbBorderDistanceLeft
	#tag Event
		Sub SelectionChanged(item As WebMenuItem)
		  mLayoutLeft.BottomDistance = Val(item.Text)
		  UpdateLeftLayoutAndPreviewImage
		End Sub
	#tag EndEvent
	#tag Event
		Sub Shown()
		  me.SelectRowWithText(str(mLayoutLeft.BottomDistance) + "mm")
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events rbElemsPosLeft
	#tag Event
		Sub SelectionChanged(button As WebRadioButton)
		  UpdateLeftLayoutAndPreviewImage()
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events rbTextPosLeft
	#tag Event
		Sub SelectionChanged(button As WebRadioButton)
		  UpdateLeftLayoutAndPreviewImage()
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events cnvPreviewRight
	#tag Event
		Sub Paint(g As WebGraphics)
		  If mLayoutRight <> Nil Then
		    If Self.mPreviewImageRight = Nil Then
		      Self.mPreviewImageRight = RibbonLayout_TextUnderGraphicBottom
		    End
		    
		    g.DrawPicture(Self.mPreviewImageRight, 0, -mLayoutRight.Bottomdistance)
		    
		    g.DrawingColor = Color.Gray
		    g.DrawRectangle(0, 0, g.Width, g.Height)
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events cbBorderDistanceRight
	#tag Event
		Sub SelectionChanged(item As WebMenuItem)
		  mLayoutRight.BottomDistance = Val(item.Text)
		  UpdateRightLayoutAndPreviewImage
		End Sub
	#tag EndEvent
	#tag Event
		Sub Shown()
		  me.SelectRowWithText(str(mLayoutRight.BottomDistance) + "mm")
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events rbElemsPosRight
	#tag Event
		Sub SelectionChanged(button As WebRadioButton)
		  UpdateRightLayoutAndPreviewImage()
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events rbTextPosRight
	#tag Event
		Sub SelectionChanged(button As WebRadioButton)
		  UpdateRightLayoutAndPreviewImage()
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
