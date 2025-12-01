#tag Class
Protected Class FontService
	#tag Method, Flags = &h0
		Sub Constructor(dataFolder as FolderItem)
		  Self.DataFolder = dataFolder
		  ReadFonts
		  ReadFontSizes
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetFontDef(fontDisplayName as string) As FontDef
		  For Each f As FontDef In Self.Fonts
		    If f.DisplayName = fontDisplayName Then
		      Return f
		    End
		  Next
		  Return Nil
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub ReadFonts()
		  Self.Fonts.RemoveAll
		  
		  // read fontnames file. 
		  // each line contains displayname:fontname:boldname:italicname:bolditalicname
		  Var lines() As String
		  Var f As FolderItem = Self.DataFolder.Child("fontnames.txt")
		  If f <> Nil And f.Exists Then
		    lines = File.ReadAllLines(f)
		  End
		  
		  lines.Sort
		  
		  // populate fonts-dict
		  For Each line As String In lines
		    
		    If Not line.BeginsWith("#") Then
		      Var fd As New FontDef
		      
		      fd.DisplayName = line.NthField(":", 1).Trim.Replace(".", "")
		      fd.Regular = line.NthField(":", 2).Trim
		      fd.Bold = line.NthField(":", 3).Trim
		      fd.Italic = line.NthField(":", 4).Trim
		      fd.BoldItalic = line.NthField(":", 5).Trim
		      
		      If fd.Bold = "" Then fd.Bold = fd.Regular
		      If fd.Italic = "" Then fd.Italic = fd.Regular
		      If fd.BoldItalic = "" Then fd.BoldItalic = fd.Regular
		      
		      Self.Fonts.Add(fd)
		    End
		    
		  Next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub ReadFontSizes()
		  Var f As FolderItem = Self.DataFolder.Child("fontsizes.txt")
		  
		  If f <> Nil And f.Exists Then
		    Self.FontSizes.RemoveAll
		    Var lines() As String = File.ReadAllLines(f)
		    For Each line As String In lines
		      If Not line.BeginsWith("#") Then
		        Self.FontSizes.Add(Val(line))
		      End
		    Next
		  End
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h21
		Private DataFolder As FolderItem
	#tag EndProperty

	#tag Property, Flags = &h0
		Fonts() As FontDef
	#tag EndProperty

	#tag Property, Flags = &h0
		FontSizes() As Integer
	#tag EndProperty


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
End Class
#tag EndClass
