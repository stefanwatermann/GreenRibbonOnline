#tag WebPage
Begin LobBase.LobWebPage PageOrderCart
   AllowTabOrderWrap=   True
   Compatibility   =   ""
   ControlCount    =   0
   ControlID       =   ""
   CSSClasses      =   ""
   Enabled         =   False
   Height          =   600
   ImplicitInstance=   True
   Index           =   -2147483648
   Indicator       =   0
   IsImplicitInstance=   False
   LayoutDirection =   0
   LayoutType      =   0
   Left            =   0
   LockBottom      =   False
   LockHorizontal  =   False
   LockLeft        =   True
   LockRight       =   False
   LockTop         =   True
   LockVertical    =   False
   MinimumHeight   =   600
   MinimumWidth    =   640
   PanelIndex      =   0
   RequiresAuthenticatedUser=   False
   ScaleFactor     =   0.0
   TabIndex        =   0
   Title           =   "Warenkorb"
   Top             =   0
   Visible         =   True
   Width           =   800
   _ImplicitInstance=   False
   _mDesignHeight  =   0
   _mDesignWidth   =   0
   _mPanelIndex    =   -1
   Begin FooterContainer FooterContainer1
      ControlCount    =   0
      ControlID       =   ""
      CSSClasses      =   ""
      Enabled         =   True
      Height          =   40
      Index           =   -2147483648
      Indicator       =   0
      LayoutDirection =   0
      LayoutType      =   0
      Left            =   0
      LockBottom      =   True
      LockedInPosition=   True
      LockHorizontal  =   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   False
      LockVertical    =   False
      PanelIndex      =   0
      Scope           =   2
      ScrollDirection =   0
      TabIndex        =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   560
      Visible         =   True
      Width           =   800
      _mDesignHeight  =   0
      _mDesignWidth   =   0
      _mPanelIndex    =   -1
   End
   Begin SmallHeaderContainer SmallHeaderContainer1
      ControlCount    =   0
      ControlID       =   ""
      CSSClasses      =   ""
      Enabled         =   True
      Height          =   50
      Index           =   -2147483648
      Indicator       =   0
      LayoutDirection =   0
      LayoutType      =   0
      Left            =   0
      LockBottom      =   False
      LockedInPosition=   True
      LockHorizontal  =   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      LockVertical    =   False
      PanelIndex      =   0
      Scope           =   2
      ScrollDirection =   0
      TabIndex        =   1
      TabStop         =   True
      Tooltip         =   ""
      Top             =   0
      Visible         =   True
      Width           =   800
      _mDesignHeight  =   0
      _mDesignWidth   =   0
      _mPanelIndex    =   -1
   End
   Begin WebListBox lbCartItems
      AllowRowReordering=   False
      ColumnCount     =   1
      ColumnWidths    =   "*"
      ControlID       =   ""
      CSSClasses      =   ""
      DefaultRowHeight=   49
      Enabled         =   True
      GridLineStyle   =   0
      HasBorder       =   False
      HasHeader       =   False
      HeaderHeight    =   0
      Height          =   200
      HighlightSortedColumn=   False
      Index           =   -2147483648
      Indicator       =   ""
      InitialValue    =   ""
      LastAddedRowIndex=   0
      LastColumnIndex =   0
      LastRowIndex    =   0
      Left            =   80
      LockBottom      =   True
      LockedInPosition=   True
      LockHorizontal  =   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      LockVertical    =   False
      NoRowsMessage   =   "Ihr Warenkorb ist (noch) leer."
      PanelIndex      =   0
      ProcessingMessage=   ""
      RowCount        =   0
      RowSelectionType=   0
      Scope           =   2
      SearchCriteria  =   ""
      SelectedRowColor=   &cFFFFFF00
      SelectedRowIndex=   0
      TabIndex        =   2
      TabStop         =   True
      Tooltip         =   ""
      Top             =   150
      Visible         =   True
      Width           =   640
      _mPanelIndex    =   -1
   End
   Begin WebButton btnOrderNow
      AllowAutoDisable=   False
      Cancel          =   False
      Caption         =   "Bestellung abschließen"
      ControlID       =   ""
      CSSClasses      =   ""
      Default         =   True
      Enabled         =   False
      Height          =   40
      Index           =   -2147483648
      Indicator       =   1
      Left            =   480
      LockBottom      =   True
      LockedInPosition=   True
      LockHorizontal  =   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      LockVertical    =   False
      Outlined        =   False
      PanelIndex      =   0
      Scope           =   2
      TabIndex        =   3
      TabStop         =   True
      Tooltip         =   ""
      Top             =   450
      Visible         =   True
      Width           =   220
      _mPanelIndex    =   -1
   End
   Begin WebLabel lbTotalPrice
      Bold            =   False
      ControlID       =   ""
      CSSClasses      =   ""
      Enabled         =   True
      FontName        =   ""
      FontSize        =   20.0
      Height          =   38
      Index           =   -2147483648
      Indicator       =   ""
      Italic          =   False
      Left            =   415
      LockBottom      =   True
      LockedInPosition=   True
      LockHorizontal  =   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      LockVertical    =   False
      Multiline       =   False
      PanelIndex      =   0
      Scope           =   2
      TabIndex        =   6
      TabStop         =   True
      Text            =   "---"
      TextAlignment   =   3
      TextColor       =   &c000000FF
      Tooltip         =   ""
      Top             =   360
      Underline       =   False
      Visible         =   True
      Width           =   275
      _mPanelIndex    =   -1
   End
   Begin WebLabel Label2
      Bold            =   False
      ControlID       =   ""
      CSSClasses      =   ""
      Enabled         =   True
      FontName        =   ""
      FontSize        =   24.0
      Height          =   40
      Index           =   -2147483648
      Indicator       =   0
      Italic          =   False
      Left            =   80
      LockBottom      =   False
      LockedInPosition=   False
      LockHorizontal  =   True
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   True
      LockVertical    =   False
      Multiline       =   False
      PanelIndex      =   0
      Parent          =   "nil"
      Scope           =   2
      TabIndex        =   8
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Warenkorb"
      TextAlignment   =   2
      TextColor       =   &c000000FF
      Tooltip         =   ""
      Top             =   80
      Underline       =   False
      Visible         =   True
      Width           =   640
      _mPanelIndex    =   -1
   End
   Begin WebButton btnAddDesign
      AllowAutoDisable=   False
      Cancel          =   False
      Caption         =   "Neue Schleife"
      ControlID       =   ""
      CSSClasses      =   ""
      Default         =   False
      Enabled         =   True
      Height          =   40
      Index           =   -2147483648
      Indicator       =   9
      Left            =   80
      LockBottom      =   True
      LockedInPosition=   True
      LockHorizontal  =   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   False
      LockVertical    =   False
      Outlined        =   False
      PanelIndex      =   0
      Scope           =   2
      TabIndex        =   9
      TabStop         =   True
      Tooltip         =   ""
      Top             =   450
      Visible         =   True
      Width           =   145
      _mPanelIndex    =   -1
   End
   Begin DialogYesNo DialogYesNo1
      ControlCount    =   0
      ControlID       =   ""
      CSSClasses      =   ""
      Enabled         =   True
      Height          =   200
      Index           =   -2147483648
      Indicator       =   0
      LayoutDirection =   0
      LayoutType      =   0
      Left            =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockHorizontal  =   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      LockVertical    =   False
      PanelIndex      =   0
      Position        =   1
      Scope           =   2
      TabIndex        =   11
      TabStop         =   True
      Tooltip         =   ""
      Top             =   0
      Visible         =   True
      Width           =   400
      _mDesignHeight  =   0
      _mDesignWidth   =   0
      _mPanelIndex    =   -1
   End
   Begin WebLabel Label3
      Bold            =   False
      ControlID       =   ""
      CSSClasses      =   ""
      Enabled         =   True
      FontName        =   ""
      FontSize        =   12.0
      Height          =   22
      Index           =   -2147483648
      Indicator       =   ""
      Italic          =   False
      Left            =   415
      LockBottom      =   True
      LockedInPosition=   True
      LockHorizontal  =   False
      LockLeft        =   False
      LockRight       =   True
      LockTop         =   False
      LockVertical    =   False
      Multiline       =   False
      PanelIndex      =   0
      Scope           =   2
      TabIndex        =   16
      TabStop         =   True
      Text            =   "(inkl. MwSt., zzgl. Versand)"
      TextAlignment   =   3
      TextColor       =   &c79797900
      Tooltip         =   ""
      Top             =   395
      Underline       =   False
      Visible         =   True
      Width           =   275
      _mPanelIndex    =   -1
   End
End
#tag EndWebPage

#tag WindowCode
	#tag Method, Flags = &h21
		Private Sub DeleteSelectedCartItem(itemToBeDeleted as CartItem)
		  Var index As Integer
		  For Each item As CartItem In session.CurrentWorkload.Cart
		    If item.Guid = itemToBeDeleted.Guid Then
		      Exit
		    End
		    index = index + 1
		  Next
		  
		  If Index < session.CurrentWorkload.Cart.Count Then
		    session.CurrentWorkload.Cart.RemoveAt(index)
		    PopulateCartItems
		  End
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub PopulateCartItems()
		  lbCartItems.RemoveAllRows
		  PreviewPictureCache.RemoveAll
		  
		  Var index As Integer = 0
		  
		  TotalPrice = 0
		  CcyCode = "EUR"
		  
		  For Each item As CartItem In session.CurrentWorkload.Cart
		    
		    // create preview web-images
		    Var leftPreview As New WebPicture(item.LeftRibbon.Preview)
		    Var rightPreview As New WebPicture(item.RightRibbon.Preview)
		    PreviewPictureCache.Add(leftPreview)
		    PreviewPictureCache.Add(rightPreview)
		    
		    // See JavaScript on App Level "function cartItemButtonClick"
		    lbCartItems.AddRow(kCartItemListTemplate _
		    .Replace("%left-preview-image%", leftPreview.URL)_
		    .Replace("%right-preview-image%", rightPreview.URL)_
		    .Replace("%ribbon-details%", item.Description.AsHtml)_
		    .Replace("%total%", item.SinglePrice.ToLocaleString)_
		    .ReplaceAll("%rowId%", Str(index))_
		    .ReplaceAll("%listBoxControlID%", lbCartItems.ControlID))
		    
		    lbCartItems.RowTagAt(lbCartItems.LastAddedRowIndex) = item
		    
		    TotalPrice = TotalPrice + item.SinglePrice
		    
		    index = index + 1
		    
		  Next
		  
		  lbTotalPrice.Text = "Summe: " + TotalPrice.ToLocaleString
		  
		  btnOrderNow.Enabled = lbCartItems.RowCount > 0
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h21
		Private CcyCode As String
	#tag EndProperty

	#tag Property, Flags = &h21
		Private PreviewPictureCache() As WebPicture
	#tag EndProperty

	#tag Property, Flags = &h21
		Private TotalPrice As Currency
	#tag EndProperty


	#tag Constant, Name = kCartItemListTemplate, Type = String, Dynamic = False, Default = \"<raw><div class\x3D\"row list-row py-1\">\n\t<div class\x3D\"list-col-s text-center py-1 cursor-pointer\" onclick\x3D\"cartItemButtonClick(this\x2C %rowId%\x2C \'edit\'\x2C \'%listBoxControlID%\');\" title\x3D\"Schleife \xC3\xA4ndern\">\n\t\t<img src\x3D\"%left-preview-image%\" class\x3D\"border\" style\x3D\"max-height:140px\">\n \t\t<img src\x3D\"%right-preview-image%\"class\x3D\"border\" style\x3D\"max-height:140px\">\n\t</div>\n\t<div class\x3D\"col\">\n\t\t<div class\x3D\"m-1\">\n\t\t\t%ribbon-details%\n\t\t</div>\n\t</div>\n\t<div class\x3D\"list-col-s text-center\">\n\t\t<div class\x3D\"m-3\">\n\t\t\t<span class\x3D\"badge rounded-pill list-price-badge\">%total%</span>\n\t\t</div>\n\t\t<div class\x3D\"m-3\">\n\t\t\t<button class\x3D\"btn list-tool-button\" onclick\x3D\"cartItemButtonClick(this\x2C %rowId%\x2C \'edit\'\x2C \'%listBoxControlID%\');\"><i class\x3D\"bi bi-pencil\"  title\x3D\"Schleife \xC3\xA4ndern\"></i></button>\n\t\t\t<button class\x3D\"btn list-tool-button\" onclick\x3D\"cartItemButtonClick(this\x2C %rowId%\x2C \'delete\'\x2C \'%listBoxControlID%\');\"><i class\x3D\"bi bi-trash\"  title\x3D\"Schleife entfernen\"></i></button>\n\t\t</div>\n\t</div>\n</div></raw>", Scope = Private
	#tag EndConstant


#tag EndWindowCode

#tag Events lbCartItems
	#tag Event
		Sub Shown()
		  Me.ExecuteJavaScript(" $('#" + Me.ControlID +"_table').removeClass('table-striped table-hover table-bordered'); ")
		  PopulateCartItems
		End Sub
	#tag EndEvent
	#tag Event
		Sub CustomCellAction(row As Integer, column As Integer, identifier As String, value As Variant)
		  // for a reason row does not contain the real row-id, but value do.
		  
		  Session.CurrentAction = ""
		  
		  Var item As CartItem = lbCartItems.RowTagAt(value)
		  
		  If identifier = "edit" Then
		    // edit
		    session.CurrentAction = "modify"
		    session.CurrentWorkload.LeftRibbon = item.LeftRibbon
		    session.CurrentWorkload.RightRibbon = item.RightRibbon
		    GoToURL("#edit")
		  End
		  
		  If identifier = "delete" Then
		    // delete
		    DialogYesNo1.Show("Möchten Sie das gewählte Schleifendesign aus dem Warenkorb entfernen", item)
		  End
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnOrderNow
	#tag Event
		Sub Pressed()
		  If Session.CurrentWorkload.CurrentOrder = Nil Then
		    Session.CurrentWorkload.CurrentOrder = New OrderModel
		  End
		  
		  Session.CurrentWorkload.CurrentOrder.TotalPrice = Self.TotalPrice
		  
		  GoToURL("#checkout")
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnAddDesign
	#tag Event
		Sub Pressed()
		  Session.CurrentAction = "new"
		  GoToURL("#edit")
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events DialogYesNo1
	#tag Event
		Sub YesClicked(tag as Variant)
		  If tag IsA CartItem Then
		    Var itemToBeDeleted As CartItem = CartItem(tag)
		    DeleteSelectedCartItem(itemToBeDeleted)
		  End
		End Sub
	#tag EndEvent
#tag EndEvents
#tag ViewBehavior
	#tag ViewProperty
		Name="RequiresAuthenticatedUser"
		Visible=true
		Group="Behavior"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="PanelIndex"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Integer"
		EditorType=""
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
		Visible=true
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
		Visible=false
		Group="Behavior"
		InitialValue=""
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
		Visible=true
		Group="Behavior"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="LockHorizontal"
		Visible=true
		Group="Behavior"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="LockLeft"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="LockRight"
		Visible=true
		Group="Behavior"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="LockTop"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="LockVertical"
		Visible=true
		Group="Behavior"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MinimumHeight"
		Visible=true
		Group="Behavior"
		InitialValue="400"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MinimumWidth"
		Visible=true
		Group="Behavior"
		InitialValue="600"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Title"
		Visible=true
		Group="Behavior"
		InitialValue="Untitled"
		Type="String"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Visible"
		Visible=false
		Group="Behavior"
		InitialValue="True"
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
		Name="_ImplicitInstance"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Boolean"
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
		Name="IsImplicitInstance"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="AllowTabOrderWrap"
		Visible=false
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
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
	#tag ViewProperty
		Name="ScaleFactor"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Double"
		EditorType=""
	#tag EndViewProperty
#tag EndViewBehavior
