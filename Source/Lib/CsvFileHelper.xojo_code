#tag Class
Protected Class CsvFileHelper
	#tag Method, Flags = &h0
		Sub Constructor(csvFile as FolderItem, expectedFieldCount as Integer, linePorc as ProcessCsvLineDelegate)
		  Self.CsvFile = csvFile
		  Self.ExpectedFieldCount = expectedFieldCount
		  Self.LineProc = linePorc
		End Sub
	#tag EndMethod

	#tag DelegateDeclaration, Flags = &h0
		Delegate Sub ProcessCsvLineDelegate(line as string)
	#tag EndDelegateDeclaration

	#tag Method, Flags = &h0
		Sub Read()
		  If Self.CsvFile <> Nil And Self.CsvFile.Exists Then
		    
		    // read ribbon definition file
		    Var lines() As String = File.ReadAllLines(Self.CsvFile)
		    
		    For Each line As String In lines
		      
		      If Not line.BeginsWith("#") Then
		        
		        If Not line.CountFields(Self.Delimiter) = Self.ExpectedFieldCount Then 
		          Raise New Exceptions.InvalidMaterialFileException(Self.CsvFile.Name) 
		        End
		        
		        LineProc.Invoke(line)
		        
		      End
		      
		    Next
		    
		  End
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h21
		Private CsvFile As FolderItem
	#tag EndProperty

	#tag Property, Flags = &h21
		Private Delimiter As String = ";"
	#tag EndProperty

	#tag Property, Flags = &h21
		Private ExpectedFieldCount As Integer
	#tag EndProperty

	#tag Property, Flags = &h21
		Private LineProc As ProcessCsvLineDelegate
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
