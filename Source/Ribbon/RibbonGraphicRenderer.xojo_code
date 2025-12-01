#tag Class
Protected Class RibbonGraphicRenderer
	#tag CompatibilityFlags = ( TargetConsole and ( Target32Bit or Target64Bit ) ) or ( TargetWeb and ( Target32Bit or Target64Bit ) ) or ( TargetDesktop and ( Target32Bit or Target64Bit ) ) or ( TargetIOS and ( Target64Bit ) ) or ( TargetAndroid and ( Target64Bit ) )
	#tag Method, Flags = &h0
		Sub Constructor(elem as RibbonElementGraphic, canvasWidth as integer, design as RibbonDesign)
		  Me.RibbonGraphic = elem
		  me.Design = design
		  Me.Width = canvasWidth
		  Me.Height = Me.RibbonGraphic.Image.Height * (canvasWidth / Me.RibbonGraphic.Image.Width) * Me.RibbonGraphic.StretchFactor
		  
		  Log.Debug(" Me.width=" + Str(Me.Width) + ", Me.height=" + Str(Me.Height), CurrentMethodName)
		  Log.Debug(" RibbonGraphic.width=" + Str(RibbonGraphic.Image.Width) + ", RibbonGraphic.height=" + Str(RibbonGraphic.Image.Height), CurrentMethodName)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Draw(antiAlias as boolean) As Picture
		  If Me.Design.IsHorizontal Then
		    Return DrawHorizontal(antiAlias)
		  Else
		    Return DrawVertical(antiAlias)
		  End
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function DrawHorizontal(antiAlias as boolean) As Picture
		  Var c As Double = 0.7
		  
		  Var pw As Integer = Me.Width
		  Var ph As Integer = Me.Height
		  
		  Var p As New Picture(pw, ph)
		  Var g As Graphics = p.Graphics
		  
		  If antiAlias Then
		    g.AntiAliased = True
		    g.AntiAliasMode = Graphics.AntiAliasModes.HighQuality
		  End
		  
		  #If DebugBuild Then
		    g.DrawingColor = &cF0F2D200
		    g.FillRectangle(0, 0, g.Width, g.Height)
		  #EndIf
		  
		  Var a As Double = 0 //Sin(Me.RibbonGraphic.Rotation * 3.14 / 180)
		  
		  Var w As Integer = g.Width * Me.RibbonGraphic.StretchFactor * c // - g.Width * a
		  Var h As Integer = g.Height * c // - g.Height * a
		  Var y As Integer = (g.Height - h) / 2
		  Var x As Integer = (g.Width - w) / 2
		  
		  // align image
		  If RibbonGraphic.Alignment = Integer(TextAlignments.Left) Then
		    x = 0
		    
		  ElseIf RibbonGraphic.Alignment = Integer(TextAlignments.Right) Then
		    x = Me.Width - w
		    
		  End
		  
		  Var tmpImg As Picture = Picture.FromData(Me.RibbonGraphic.Image.ToData(Picture.Formats.PNG))
		  
		  If Me.Design.PrintColor.ColorValue <> Color.Black Then
		    ReplaceColor(tmpImg, Color.Black, Me.Design.PrintColor.ColorValue)
		  End
		  
		  // draw image
		  g.DrawPicture( _
		  tmpImg, _
		  x, _
		  y, _
		  w, _
		  h, _
		  0, _
		  0, _
		  Me.RibbonGraphic.Image.Width, _
		  Me.RibbonGraphic.Image.Height)
		  
		  // rotate image
		  If Me.RibbonGraphic.Rotation <> 0.0 Then
		    Return p.Rotate(Me.RibbonGraphic.Rotation)
		  End
		  
		  Return p
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function DrawVertical(antiAlias as boolean) As Picture
		  Var p As Picture = DrawHorizontal(antiAlias)
		  Return p.Rotate(-90)
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub ReplaceColor(somePicture as Picture, sourceColor as color, replaceColor as color)
		  Var surf As RGBSurface = somePicture.RGBSurface
		  Var lastX As Integer = somePicture.Width - 1
		  Var lastY As Integer = somePicture.Height - 1
		  For y As Integer = 0 To lastY
		    For x As Integer = 0 To lastX
		      If surf.Pixel(x, y).IsLike(sourceColor, 100) Then
		        surf.Pixel(x, y) = replaceColor
		      End If
		    Next
		  Next
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h21
		Private Design As RibbonDesign
	#tag EndProperty

	#tag Property, Flags = &h21
		Private Height As Integer
	#tag EndProperty

	#tag Property, Flags = &h21
		Private RibbonGraphic As RibbonElementGraphic
	#tag EndProperty

	#tag Property, Flags = &h21
		Private Width As Integer
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
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
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
