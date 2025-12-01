#tag Class
Protected Class CartItemDescription
	#tag Method, Flags = &h0
		Function AsHtml() As string
		  Var rowTemplate As String = "<div class='row list-detail-row'><div class='col-3 list-row-label'>%0</div><div class='col list-row-text'>%1</div></div>"
		  
		  Var s() As String
		  s.Add(rowTemplate.Replace("%0", "Design: ").Replace("%1", Self.Design))
		  s.Add(rowTemplate.Replace("%0", "Schrift: ").Replace("%1", Self.Font))
		  s.Add(rowTemplate.Replace("%0", "Druckfarbe: ").Replace("%1", Self.PrintColor))
		  s.Add(rowTemplate.Replace("%0", "Text Links: ").Replace("%1", Self.TextLeft))
		  s.Add(rowTemplate.Replace("%0", "Text Rechts: ").Replace("%1", Self.TextRight))
		  s.Add(rowTemplate.Replace("%0", "Grafik Links: ").Replace("%1", Self.GraphicLeft))
		  s.Add(rowTemplate.Replace("%0", "Grafik Rechts: ").Replace("%1", Self.GraphicRight))
		  
		  Return String.FromArray(s, EndOfLine)
		End Function
	#tag EndMethod


	#tag Property, Flags = &h0
		Design As String
	#tag EndProperty

	#tag Property, Flags = &h0
		Font As String
	#tag EndProperty

	#tag Property, Flags = &h0
		GraphicLeft As String
	#tag EndProperty

	#tag Property, Flags = &h0
		GraphicRight As String
	#tag EndProperty

	#tag Property, Flags = &h0
		PrintColor As String
	#tag EndProperty

	#tag Property, Flags = &h0
		TextLeft As String
	#tag EndProperty

	#tag Property, Flags = &h0
		TextRight As String
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
		#tag ViewProperty
			Name="Design"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Font"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="GraphicLeft"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="GraphicRight"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="PrintColor"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TextLeft"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TextRight"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
