#tag Module
Protected Module FontDump
	#tag Method, Flags = &h21
		Private Function CreateFontPic(name as string, demoText as string) As WebPicture
		  Var pic As New Picture(500, 120)
		  Var g As Graphics = pic.Graphics
		  
		  Var s As String = demoText
		  
		  g.DrawingColor = Color.Black
		  
		  g.FontName = name
		  g.FontSize = 25
		  
		  Var w As Integer = g.TextWidth(s)
		  Var x As Integer = (g.Width - w) / 2
		  
		  g.DrawText(s, x, g.FontSize + 5)
		  
		  g.Bold = True
		  g.DrawText(s, x, 2 * g.FontSize + 5)
		  g.bold = False
		  
		  g.Italic = True
		  g.DrawText(s, x, 3 * g.FontSize + 5)
		  
		  Var y As Integer = 4 * g.FontSize + 10
		  g.FontSize = 16
		  g.FontName = "System"
		  g.Italic = False
		  g.Bold = False
		  w = g.TextWidth(name)
		  x = (g.Width - w) / 2
		  g.DrawText(name, x, y)
		  
		  Var wp As New WebPicture(pic)
		  wp.Filename = name
		  Return wp
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function DumpFontnames(demoText as string) As Dictionary
		  Var names() As String
		  Var i As Integer
		  For i = 0 To System.FontCount - 1
		    names.Add(System.FontAt(i))
		  Next
		  names.Sort
		  
		  Var fonts As New Dictionary
		  
		  For Each name as string In names
		    If Not name.BeginsWith(".") And Not fonts.HasKey(name) Then
		      fonts.Value(name) = CreateFontPic(name, demoText)
		    End
		  Next
		  
		  Return fonts
		End Function
	#tag EndMethod


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
	#tag EndViewBehavior
End Module
#tag EndModule
