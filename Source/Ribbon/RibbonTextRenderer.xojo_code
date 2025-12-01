#tag Class
Protected Class RibbonTextRenderer
	#tag CompatibilityFlags = ( TargetConsole and ( Target32Bit or Target64Bit ) ) or ( TargetWeb and ( Target32Bit or Target64Bit ) ) or ( TargetDesktop and ( Target32Bit or Target64Bit ) ) or ( TargetIOS and ( Target64Bit ) ) or ( TargetAndroid and ( Target64Bit ) )
	#tag Method, Flags = &h21
		Private Function Compress(p as picture, antiAlias as boolean) As Picture
		  Var cp As New Picture(p.Width * Self.RibbonText.CompressionFactor, p.Height)
		  Var cg As Graphics = cp.Graphics
		  
		  If antiAlias Then
		    cg.AntiAliased = True
		    cg.AntiAliasMode = Graphics.AntiAliasModes.HighQuality
		  End
		  
		  cg.DrawPicture(p, 0, 0, cp.Width, cp.Height, 0, 0, p.Width, p.Height)
		  
		  Return cp
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor(elem as RibbonElementText, canvasWidth as integer, fontService as FontService, design as RibbonDesign)
		  Me.SvcFonts = fontService
		  Me.RibbonText = elem
		  Me.Design = design
		  Me.Width = canvasWidth
		  Me.Height = (elem.Lines.Count + 0.5) * (elem.FontSize + elem.FontDescend) * elem.LineHeight
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Draw(scale as double, antiAlias as boolean) As Picture
		  If Me.Design.IsHorizontal Then
		    Return DrawHorizontal(scale, antiAlias)
		  Else
		    Return DrawVertical(scale, antiAlias)
		  End
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function DrawHorizontal(scale as double, antiAlias as boolean) As Picture
		  Var p As New Picture(Self.Width / Self.RibbonText.CompressionFactor, Self.Height * scale)
		  Var g As Graphics = p.Graphics
		  
		  If antiAlias Then
		    g.AntiAliased = True
		    g.AntiAliasMode = Graphics.AntiAliasModes.HighQuality
		  End
		  
		  #If DebugBuild Then
		    g.DrawingColor = &cFFE0E600
		    g.FillRectangle(0, 0, g.Width, g.Height)
		  #EndIf
		  
		  Var fd As FontDef = Me.SvcFonts.GetFontDef(Me.RibbonText.FontName)
		  
		  If fd = Nil Then
		    Raise New RuntimeException("Cannot find font '" + Me.RibbonText.FontName + "' in FontDef.")
		  End
		  
		  g.FontName = fd.Regular
		  
		  If Me.RibbonText.IsBold Then
		    g.FontName = fd.Bold
		    g.Bold = True
		  End
		  
		  If Me.RibbonText.IsItalic Then
		    g.FontName = fd.Italic
		    g.Italic = True
		  End
		  
		  If Me.RibbonText.IsBold And Me.RibbonText.IsItalic Then
		    g.FontName = fd.BoldItalic
		    g.Italic = True
		    g.Bold = True
		  End
		  
		  g.FontSize = Me.RibbonText.FontSize * scale
		  g.DrawingColor = Me.Design.PrintColor.ColorValue
		  
		  Log.Debug("g.FontName=" + g.FontName + ", g.FontSize=" + Str(g.FontSize), CurrentMethodName)
		  
		  Var y As Integer = 0
		  
		  For Each line As String In Me.RibbonText.Lines.Values
		    
		    If line.Trim <> "" Then
		      Var w As Double = g.TextWidth(line)
		      Var x As Integer = 0
		      
		      If RibbonText.Alignment = Integer(TextAlignments.Center) Then
		        x = (g.Width - w) / 2
		      ElseIf RibbonText.Alignment = Integer(TextAlignments.Right) Then
		        x = g.Width - w
		      End
		      
		      y = y + (g.FontSize + (Me.RibbonText.FontDescend * scale)) * Me.RibbonText.LineHeight
		      
		      g.DrawText(line, x, y)
		    End
		    
		  Next
		  
		  // if Compression is set, compress image horizontal
		  If Me.RibbonText.CompressionFactor <> 1.0 Then
		    p = Compress(p, antiAlias)
		  End
		  
		  Return p
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function DrawVertical(scale as double, antiAlias as boolean) As Picture
		  Var ph As Picture = DrawHorizontal(scale, antiAlias)
		  Return ph.Rotate(-90)
		End Function
	#tag EndMethod


	#tag Property, Flags = &h21
		Private Design As RibbonDesign
	#tag EndProperty

	#tag Property, Flags = &h21
		Private Height As Integer
	#tag EndProperty

	#tag Property, Flags = &h21
		Private RibbonText As RibbonElementText
	#tag EndProperty

	#tag Property, Flags = &h21
		Private SvcFonts As FontService
	#tag EndProperty

	#tag Property, Flags = &h21
		Private Width As Double
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
