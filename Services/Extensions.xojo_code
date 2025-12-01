#tag Module
Protected Module Extensions
	#tag Method, Flags = &h0
		Function AsTitleCaseFileName(extends s as string) As string
		  return s.NthField(".", 1).ReplaceAll("_", " ").Titlecase()
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function HasRows(extends rs as Rowset) As Boolean
		  For Each row As DatabaseRow In rs
		    rs.MoveToFirstRow
		    Return True
		  Next
		  Return False
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function HasValue(extends p as WebPopupMenu, value as string) As Boolean
		  For row As Integer = 0 To p.RowCount - 1
		    If p.RowValueAt(row) = value Then
		      Return True
		    End
		  Next
		  
		  Return False
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function ToLocaleString(extends c as Currency) As string
		  return c.ToString(new Locale(Session.LanguageCode))
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
