#tag Class
Protected Class RibbonController
	#tag Method, Flags = &h0
		Sub AddGraphicElement(elem as RibbonElementGraphic)
		  Elements.Add(elem)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub AddTextElement(elem as RibbonElementText)
		  Elements.Add(elem)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub ApplyRibbonLayout(height as integer, scale as Double)
		  // order graphic to text elements
		  Self.Elements.Sort(AddressOf SortElementsByLayout)
		  
		  // align elements
		  Var topPos As Integer = height - self.Layout.BottomDistance * scale
		  
		  If Self.Layout.Alignment = RibbonLayout.kRibbonAlignmentMiddle Then
		    topPos = (height + Self.TotalElementsHeight) / 2
		  End
		  
		  // calculate element positions
		  For Each elem As RibbonelementBase In Elements
		    topPos = topPos - elem.RenderImage.Height
		    elem.TopPos = topPos
		  Next
		  
		  // calculated top pos where no elements are above
		  Self.AllElementsTopPos = topPos
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function AsPicture(scale as double = 1.0, fromBottom as Boolean = false) As Picture
		  Log.Debug("self.mmWidth=" + Str(Self.mmWidth) + _
		  ", self.mmHeight=" + Str(Self.mmHeight) + _
		  ", scale=" + Str(scale) + _
		  ", fromBottom=" + Str(fromBottom), _
		  CurrentMethodName)
		  
		  Var frame As New Rect(0, 0, Self.mmWidth * scale, Self.mmHeight * scale)
		  Var p As Picture = RenderElements(frame, scale, True, True, False)
		  
		  If fromBottom Then
		    Return p.Rotate(180)
		  End
		  
		  Return p.Mirror
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(canvasWidth as integer, canvasHeight as integer, dataFolder as FolderItem)
		  Log.Debug("canvasWidth=" + Str(canvasWidth) + ", canvasHeight=" + Str(canvasHeight), CurrentMethodName)
		  
		  Self.MaterialSvc = New AssetsService(dataFolder)
		  
		  Self.CanvasWidth = canvasWidth
		  Self.CanvasHeight = canvasHeight
		  
		  Self.Design = New RibbonDesign
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function DrawRibbonBackground(ribbonArea as Rect) As Picture
		  Var p As New Picture(ribbonArea.Width, ribbonArea.Height)
		  Var g As Graphics = p.Graphics
		  
		  If Not Self.MaterialSvc.Materials.HasKey(Self.Design.Material.DisplayName) Then
		    g.DrawingColor = Color.White
		    g.FillRectangle(0, 0, ribbonArea.Width, ribbonArea.Height)
		  Else
		    Var mp As Picture = Self.Design.Material.PreviewPicture
		    g.DrawPicture(mp, 0, 0, ribbonArea.Width, ribbonArea.Height, 0, 0, mp.Width, mp.Height)
		  End
		  
		  Return p
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RemoveAllElements()
		  self.Elements.RemoveAll
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function RenderElements(frame as Rect, scale as double, whiteBackground as Boolean = false, contentOnly as Boolean = false, antiAlias as boolean = true) As Picture
		  Log.Debug(_
		  ", frame.Width=" + Str(frame.Width) + _
		  ", frame.Height=" + Str(frame.Height) + _
		  ", scale=" + Str(scale), _
		  CurrentMethodName)
		  
		  Var width As Integer = frame.Width
		  Var height As Integer = frame.Height
		  
		  // render elements into cache picture
		  For Each elem As RibbonelementBase In Elements
		    
		    // update scale of element due to current size on screen
		    elem.Scale = scale
		    
		    If elem IsA RibbonElementText Then
		      // set with of render image based on direction (hor/ver)
		      Var renderWidth As Integer = If (Design.IsHorizontal, width, height)
		      Var e As RibbonElementText = RibbonElementText(elem)
		      Var r As New RibbonTextRenderer(e, renderWidth, New FontService(Session.CurrentDataFolder), Design)
		      elem.RenderImage = r.Draw(scale, antiAlias) 
		    End
		    
		    If elem IsA RibbonElementGraphic Then
		      Var e As RibbonElementGraphic = RibbonElementGraphic(elem)
		      Var r As New RibbonGraphicRenderer(e, width, Design)
		      elem.RenderImage = r.Draw(antiAlias) 
		    End
		    
		  Next
		  
		  // prepare ribbon-output picture
		  Var p As New Picture(frame.Width, frame.Height)
		  Var g As Graphics = p.Graphics
		  
		  // AntiAlias nur für den Bildschirm, Epson LX-350 druckt sonst hässliche Flecken
		  If antiAlias Then
		    g.AntiAliased = True
		    g.AntiAliasMode = Graphics.AntiAliasModes.HighQuality
		  End 
		  
		  // white background
		  If whiteBackground Then
		    g.DrawingColor = Color.White
		    g.FillRectangle(0, 0, g.Width, g.Height)
		  End
		  
		  // apply current ribbon layout
		  Self.ApplyRibbonLayout(height, scale)
		  
		  // output rendered and layouted images to ribbon-output picture
		  For Each elem As RibbonelementBase In Elements
		    g.DrawPicture(elem.RenderImage, (g.Width - elem.RenderImage.Width) / 2, elem.TopPos)
		  Next
		  
		  // crop unused space
		  If contentOnly Then
		    Var additionalTopMargin As Integer = 5 * scale // zusätzlicher oberer Rand da der LX-350 sonst die letzte Zeile nicht druckt
		    Var cp As New Picture(frame.Width, frame.Height - AllElementsTopPos - additionalTopMargin)
		    cp.Graphics.DrawPicture(p, 0, additionalTopMargin, cp.Graphics.Width, cp.Graphics.Height, 0, AllElementsTopPos, frame.Width, frame.Height - AllElementsTopPos)
		    Return cp
		  End
		  
		  Return p
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetRibbonDesign(design as RibbonDesign)
		  Self.Design = design
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetRibbonLayout(layout as RibbonLayout)
		  Self.Layout = layout
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function SortElementsByLayout(e1 as RibbonElementBase, e2 as RibbonElementBase) As Integer
		  
		  If Self.Layout.Order = RibbonLayout.kElementOrderTextUnderGraphic Then
		    If e1 IsA RibbonElementGraphic Then 
		      Return 1
		    Else
		      Return -1
		    End
		  Else
		    If e1 IsA RibbonElementGraphic Then 
		      Return -1
		    Else
		      Return 1
		    End
		  End
		  
		  Return 0
		End Function
	#tag EndMethod


	#tag Property, Flags = &h0, Description = 4F62657265204B616E746520616C6C657220456C656D656E74652C20506C61747A20646172C3BC6265722077697264206767662E206265696D20447275636B20616267657363686E697474656E2E
		AllElementsTopPos As Integer
	#tag EndProperty

	#tag Property, Flags = &h21
		Private CanvasHeight As Integer
	#tag EndProperty

	#tag Property, Flags = &h21
		Private CanvasWidth As Integer
	#tag EndProperty

	#tag Property, Flags = &h21
		Private Design As RibbonDesign
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return self.Elements.Count
			End Get
		#tag EndGetter
		ElementCount As Integer
	#tag EndComputedProperty

	#tag Property, Flags = &h0
		Elements() As RibbonElementBase
	#tag EndProperty

	#tag Property, Flags = &h21
		Private Layout As RibbonLayout
	#tag EndProperty

	#tag Property, Flags = &h21
		Private MaterialSvc As AssetsService
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return Design.mmHeight
			End Get
		#tag EndGetter
		mmHeight As Integer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return Design.mmWidth
			End Get
		#tag EndGetter
		mmWidth As Integer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Var h As Integer = 0
			  For Each elem As RibbonelementBase In Elements
			    h = h + elem.RenderImage.Height
			  Next
			  Return h
			End Get
		#tag EndGetter
		TotalElementsHeight As Integer
	#tag EndComputedProperty


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
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
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
			Name="mmHeight"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="mmWidth"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="ElementCount"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="AllElementsTopPos"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="TotalElementsHeight"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
