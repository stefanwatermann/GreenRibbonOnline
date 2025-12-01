#tag WebContainerControl
Begin WebContainer RibbonContainer
   Compatibility   =   ""
   ControlCount    =   0
   ControlID       =   ""
   CSSClasses      =   ""
   Enabled         =   True
   Height          =   550
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
   ScrollDirection =   0
   TabIndex        =   0
   Top             =   0
   Visible         =   True
   Width           =   250
   _mDesignHeight  =   0
   _mDesignWidth   =   0
   _mPanelIndex    =   -1
   Begin WebCanvas Canvas1
      ControlID       =   ""
      CSSClasses      =   ""
      DiffEngineDisabled=   True
      Enabled         =   True
      Height          =   550
      Index           =   -2147483648
      Indicator       =   0
      Left            =   0
      LockBottom      =   True
      LockedInPosition=   False
      LockHorizontal  =   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      LockVertical    =   False
      PanelIndex      =   0
      Scope           =   2
      TabIndex        =   0
      TabStop         =   True
      Tooltip         =   ""
      Top             =   0
      Visible         =   True
      Width           =   250
      _mPanelIndex    =   -1
   End
End
#tag EndWebContainerControl

#tag WindowCode
	#tag Event
		Sub Opening()
		  Me.Controller = New RibbonController(Me.Canvas1.Width, Me.Canvas1.Height, Session.CurrentDataFolder)
		  
		  //Log.Debug("Me.height=" + Str(Me.Height) + ", Canvas1.height=" + Str(Canvas1.Height), Session.SecureSessionId)
		  
		  Me.LayoutType = WebView.LayoutTypes.Fixed
		  
		  RaiseEvent Opening
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h21
		Private Sub DrawRibbonElements(g as WebGraphics, ribbonArea as Rect, scale as double)
		  // draw ribbon background-color / -picture
		  Var bg As Picture = Self.Controller.DrawRibbonBackground(ribbonArea)
		  g.DrawPicture(bg, ribbonArea.Left, ribbonArea.Top, ribbonArea.Width, ribbonArea.Height)
		  
		  // draw elements to ribbonArea
		  If Self.Controller.ElementCount > 0 Then
		    Var p As Picture = Self.Controller.RenderElements(ribbonArea, scale)
		    g.DrawPicture(p, ribbonArea.Left, ribbonArea.Top, ribbonArea.Width, ribbonArea.Height)
		  End
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub DrawRibbonScheme(g as WebGraphics, r as Rect)
		  // draw border
		  g.DrawingColor = Color.RGB(210, 210, 210)
		  g.FillRectangle(r.Left - 2, r.Top - 2, r.Width + 4, r.Height + 4)
		  
		  // background
		  g.DrawingColor = Color.White
		  g.FillRectangle(r.Left, r.Top, r.Width, r.Height)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ExportRibbon(height as Integer) As Picture
		  Var width As Integer = Controller.mmWidth * height / Controller.mmHeight
		  
		  Var pe As New Picture(width, height)
		  Var g As Graphics = pe.Graphics
		  
		  Var ribbonArea As New Rect(0, 0, width, height)
		  Var scale As Double = width / Controller.mmWidth
		  
		  // draw ribbon background-color / -picture
		  Var bg As Picture = Self.Controller.DrawRibbonBackground(ribbonArea)
		  g.DrawPicture(bg, ribbonArea.Left, ribbonArea.Top, ribbonArea.Width, ribbonArea.Height)
		  
		  // draw elements to ribbonArea
		  If Self.Controller.ElementCount > 0 Then
		    Var p As Picture = Self.Controller.RenderElements(ribbonArea, scale)
		    g.DrawPicture(p, ribbonArea.Left, ribbonArea.Top, ribbonArea.Width, ribbonArea.Height)
		  End
		  
		  //draw frame
		  g.DrawingColor = &cC0C0C000
		  g.DrawRectangle(0, 0, g.Width, g.Height)
		  
		  Return pe
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function FindElement(top as integer) As RibbonElementBase
		  If top >= Self.Controller.AllElementsTopPos Then
		    
		    For Each elem As RibbonElementBase In Self.Controller.Elements
		      
		      If elem.TopPos < top And _
		        top < (Self.Controller.AllElementsTopPos + Self.Controller.TotalElementsHeight) Then
		        Return elem
		      End
		      
		    Next
		    
		  End
		  
		  return nil
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Refresh()
		  Canvas1.Refresh
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Render(r as Ribbon)
		  Self.Controller.RemoveAllElements
		  Self.Controller.SetRibbonDesign(r.Design)
		  Self.Controller.SetRibbonLayout(r.Layout)
		  
		  // vorhandene Elemente hinzufügen
		  If r.TextElement.Text <> "" Then
		    Self.Controller.AddTextElement(r.TextElement)
		  End
		  
		  If r.GraphicElement.Image <> Nil Then
		    Self.Controller.AddGraphicElement(r.GraphicElement)
		  End
		  
		  Self.Refresh
		  
		  r.Preview = ExportRibbon(800)
		End Sub
	#tag EndMethod


	#tag Hook, Flags = &h0
		Event Opening()
	#tag EndHook

	#tag Hook, Flags = &h0
		Event Pressed(elem as RibbonElementBase, x as integer, y as integer)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event RenderingDone()
	#tag EndHook


	#tag Property, Flags = &h0
		Controller As RibbonController
	#tag EndProperty

	#tag Property, Flags = &h21
		Private RibbonArea As Rect
	#tag EndProperty


#tag EndWindowCode

#tag Events Canvas1
	#tag Event
		Sub Paint(g As WebGraphics)
		  If Self.Controller <> Nil And g.Width > 1 And g.Height > 1 Then
		    
		    Var margin As Integer = 12
		    Var scale As Double = (Me.Height - 2 * margin) / Self.Controller.mmHeight
		    
		    Var h As Integer = g.Height - 2 * margin
		    Var w As Integer = Self.Controller.mmWidth * scale
		    
		    // ribbonArea
		    RibbonArea = New Rect
		    RibbonArea.Left = (g.Width - w) / 2
		    RibbonArea.Top = margin
		    RibbonArea.Width = w
		    RibbonArea.Height= h
		    
		    Self.DrawRibbonScheme(g, RibbonArea)
		    
		    Self.DrawRibbonElements(g, RibbonArea, scale)
		    
		    // Draw PreviewHint
		    g.FontSize = 10
		    g.DrawingColor = &c89898900
		    g.DrawText("Unverbindliche Vorschau", ribbonArea.Left + 2, ribbonArea.Top + ribbonArea.Height + g.FontSize + 1)
		    
		    // debug infos
		    #If DebugBuild
		      g.FontSize = 10
		      g.DrawingColor = Color.Blue
		      g.DrawText("Me.Width = " + Str(Me.Width), ribbonArea.Left + 10, ribbonarea.Top + 100)
		      g.DrawText("Me.Height = " + Str(Me.Height), ribbonArea.Left + 10, ribbonarea.Top + 110)
		      g.DrawText("ribbonArea.Width = " + Str(ribbonArea.Width), ribbonArea.Left + 10, ribbonarea.Top + 120)
		      g.DrawText("ribbonArea.Height = " + Str(ribbonArea.Height), ribbonArea.Left + 10, ribbonarea.Top + 130)
		      g.DrawText("mmWidth = " + Str(Self.Controller.mmWidth), ribbonArea.Left + 10, ribbonarea.Top + 140)
		      g.DrawText("mmHeight = " + Str(Self.Controller.mmHeight), ribbonArea.Left + 10, ribbonarea.Top + 150)
		      g.DrawText("scale = " + Str(Scale), ribbonArea.Left + 10, ribbonarea.Top + 160)
		    #EndIf
		    
		  End
		  
		  RaiseEvent RenderingDone
		End Sub
	#tag EndEvent
	#tag Event
		Sub Pressed(x As Integer, y As Integer)
		  If RibbonArea <> Nil And x > RibbonArea.Left And x < RibbonArea.Right Then
		    If Self.Controller.ElementCount = 0 Then
		      RaiseEvent Pressed(Nil, x, y)
		    Else
		      Var elem As RibbonElementBase = Self.FindElement(y)
		      If elem <> Nil Then
		        RaiseEvent Pressed(elem, x, y)
		      end
		    End
		  end
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
		Name="Height"
		Visible=true
		Group="Behavior"
		InitialValue="300"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Width"
		Visible=true
		Group="Behavior"
		InitialValue="300"
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
#tag EndViewBehavior
