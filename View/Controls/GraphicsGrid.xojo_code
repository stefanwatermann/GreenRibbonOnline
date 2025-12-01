#tag WebContainerControl
Begin WebContainer GraphicsGrid
   Compatibility   =   ""
   ControlCount    =   0
   ControlID       =   ""
   CSSClasses      =   ""
   Enabled         =   True
   Height          =   200
   Indicator       =   0
   LayoutDirection =   0
   LayoutType      =   0
   Left            =   0
   LockBottom      =   False
   LockHorizontal  =   False
   LockLeft        =   True
   LockRight       =   False
   LockTop         =   True
   LockVertical    =   False
   PanelIndex      =   0
   ScrollDirection =   2
   TabIndex        =   0
   Top             =   0
   Visible         =   True
   Width           =   200
   _mDesignHeight  =   0
   _mDesignWidth   =   0
   _mPanelIndex    =   -1
End
#tag EndWebContainerControl

#tag WindowCode
	#tag Event
		Sub Opening()
		  RaiseEvent Opening
		  
		  Self.Style.Value("overflow") = "auto"
		  
		  Var styles As String = kCustomCssStyles._
		  ReplaceAll("#PD#", Str(ItemPadding))._
		  ReplaceAll("#CH#", HtmlColor(ColorHover))._
		  ReplaceAll("#CS#", HtmlColor(ColorSelected))._
		  ReplaceAll("#BR#", Str(BorderRadius))._
		  ReplaceAll("#ID#", ControlID)
		  
		  Self.ExecuteJavaScript(kScriptInjectStyle.Replace("#CSS#", styles.ReplaceAll(EndOfLine, " ")))
		  
		End Sub
	#tag EndEvent

	#tag Event
		Sub Shown()
		  RaiseEvent BeforeShown
		  
		  If Self.ImageFiles <> Nil Then
		    ReadImages
		  End
		  
		  Var d As Integer = ItemMargin
		  Var w As Integer = ItemWidth
		  Var h As Integer = ItemHeight
		  Var c As Integer = Self.Width / w
		  Var l As Integer
		  Var t As Integer
		  
		  For Each key As String In Graphics.Keys
		    
		    Var btn As New WebImageViewer
		    btn.top = t
		    btn.Left = l
		    btn.Width = w
		    btn.Height = h
		    btn.Image = Graphics.Value(key)
		    btn.DisplayMode = WebImageViewer.DisplayModes.ScaleAspectFit
		    btn.Enabled = True
		    btn.Style.BorderThickness = 0
		    AddHandler btn.Pressed, AddressOf ButtonPressed
		    
		    Self.AddControl(btn)
		    
		    btn.ExecuteJavaScript("document.getElementById('" + btn.ControlID + "').classList.add('graphicsgrid-image-button-" + ControlID + "');")
		    
		    l = l + btn.Width + d
		    
		    If Self.ControlCount Mod c = 0 Then
		      t = t + btn.Height + d
		      l = 0
		    End
		    
		  Next
		  
		  RaiseEvent Shown
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h21
		Private Sub ButtonPressed(sender as WebImageViewer, x as integer, y as integer)
		  Var name As String = sender.url.LastField("/")
		  SelectItem(name)
		  RaiseEvent Pressed(name, sender.Image)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function HtmlColor(c as Color) As string
		  return "#" + c.Red.ToHex(2) + c.Green.ToHex(2) + c.Blue.ToHex(2)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub ReadImages()
		  Self.Graphics = New Dictionary
		  
		  For Each f As FolderItem In ImageFiles
		    If Not f.IsFolder Then
		      If f.Name.Lowercase.EndsWith(".png") Or f.Name.Lowercase.EndsWith(".jpg") Then
		        Self.Graphics.Value(f.Name) = New WebPicture(f)
		      End
		    End
		  Next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SelectItem(index as integer)
		  Var i As Integer
		  For Each ctl As WebImageViewer In Self.Controls
		    If i = index Then
		      ctl.ExecuteJavaScript("document.getElementById('" + ctl.ControlID + "').classList.add('graphicsgrid-image-button-selected-" + ControlID + "');")
		    Else
		      ctl.ExecuteJavaScript("document.getElementById('" + ctl.ControlID + "').classList.remove('graphicsgrid-image-button-selected-" + ControlID + "');")
		    End
		    i = i + 1
		  Next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SelectItem(name as string)
		  For Each ctl As WebImageViewer In Self.Controls
		    If name <> "" And name = ctl.Url.LastField("/") Then
		      ctl.ExecuteJavaScript("document.getElementById('" + ctl.ControlID + "').classList.add('graphicsgrid-image-button-selected-" + ControlID + "');")
		    Else
		      ctl.ExecuteJavaScript("document.getElementById('" + ctl.ControlID + "').classList.remove('graphicsgrid-image-button-selected-" + ControlID + "');")
		    End
		  Next
		End Sub
	#tag EndMethod


	#tag Hook, Flags = &h0
		Event BeforeShown()
	#tag EndHook

	#tag Hook, Flags = &h0
		Event Opening()
	#tag EndHook

	#tag Hook, Flags = &h0
		Event Pressed(name as string, image as WebPicture)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event Shown()
	#tag EndHook


	#tag Property, Flags = &h0
		BorderRadius As Integer = 10
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return Self.Style.BorderThickness
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Self.Style.BorderThickness = value
			End Set
		#tag EndSetter
		BorderThickness As Integer
	#tag EndComputedProperty

	#tag Property, Flags = &h0
		ColorHover As Color = &ccccccc
	#tag EndProperty

	#tag Property, Flags = &h0
		ColorSelected As Color = &caaaaee
	#tag EndProperty

	#tag Property, Flags = &h0
		Graphics As Dictionary
	#tag EndProperty

	#tag Property, Flags = &h0
		ImageFiles() As FolderItem
	#tag EndProperty

	#tag Property, Flags = &h0
		ItemHeight As Integer = 100
	#tag EndProperty

	#tag Property, Flags = &h0
		ItemMargin As Integer = 10
	#tag EndProperty

	#tag Property, Flags = &h0
		ItemPadding As Integer = 10
	#tag EndProperty

	#tag Property, Flags = &h0
		ItemWidth As Integer = 100
	#tag EndProperty


	#tag Constant, Name = kCustomCssStyles, Type = String, Dynamic = False, Default = \".graphicsgrid-image-button-#ID#:hover { \n\tbackground-Color: #CH#; cursor: pointer; \n}\n.graphicsgrid-image-button-#ID# { \n\tpadding: #PD#px;\n\tborder-radius: #BR#px;\n}\n.graphicsgrid-image-button-selected-#ID# { \n\tbackground-Color: #CS#;\n}", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kScriptInjectStyle, Type = String, Dynamic = False, Default = \"const css \x3D \"#CSS#\";\nconst style \x3D document.createElement(\'style\');\nif (style.styleSheet) {\n    style.styleSheet.cssText \x3D css;\n} else {\n    style.appendChild(document.createTextNode(css));\n}\ndocument.getElementsByTagName(\'head\')[0].appendChild(style);", Scope = Private
	#tag EndConstant


#tag EndWindowCode

#tag ViewBehavior
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
		Name="Enabled"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
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
		Name="Visible"
		Visible=true
		Group="Behavior"
		InitialValue=""
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="ScrollDirection"
		Visible=true
		Group="Behavior"
		InitialValue="ScrollDirections.None"
		Type="WebContainer.ScrollDirections"
		EditorType="Enum"
		#tag EnumValues
			"0 - None"
			"1 - Horizontal"
			"2 - Vertical"
			"3 - Both"
		#tag EndEnumValues
	#tag EndViewProperty
	#tag ViewProperty
		Name="BorderThickness"
		Visible=true
		Group="Behavior"
		InitialValue=""
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="ItemWidth"
		Visible=true
		Group="Behavior"
		InitialValue="100"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="ItemHeight"
		Visible=true
		Group="Behavior"
		InitialValue="100"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="ItemMargin"
		Visible=true
		Group="Behavior"
		InitialValue="10"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="ItemPadding"
		Visible=true
		Group="Behavior"
		InitialValue="10"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="ColorSelected"
		Visible=true
		Group="Behavior"
		InitialValue="&caaaaee"
		Type="Color"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="ColorHover"
		Visible=true
		Group="Behavior"
		InitialValue="&ccccccc"
		Type="Color"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="BorderRadius"
		Visible=true
		Group="Behavior"
		InitialValue="10"
		Type="Integer"
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
		Name="LayoutType"
		Visible=true
		Group="View"
		InitialValue="LayoutTypes.Fixed"
		Type="LayoutTypes"
		EditorType="Enum"
		#tag EnumValues
			"0 - Fixed"
			"1 - Flex"
		#tag EndEnumValues
	#tag EndViewProperty
	#tag ViewProperty
		Name="LayoutDirection"
		Visible=true
		Group="View"
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
		Name="PanelIndex"
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
		Name="ControlCount"
		Visible=false
		Group="Behavior"
		InitialValue=""
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
		Name="Width"
		Visible=false
		Group=""
		InitialValue="250"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Height"
		Visible=false
		Group=""
		InitialValue="250"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
#tag EndViewBehavior
