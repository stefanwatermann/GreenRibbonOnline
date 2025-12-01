#tag Class
Protected Class ColorDef
Inherits JsonModelBase
	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return "#" + Right("00" + Hex(ColorValue.Red), 2) + Right("00" + Hex(ColorValue.Green), 2) + Right("00" + Hex(ColorValue.Blue), 2)
			End Get
		#tag EndGetter
		AsHtmlCode As String
	#tag EndComputedProperty

	#tag Property, Flags = &h0
		ColorValue As Color
	#tag EndProperty

	#tag Property, Flags = &h0
		DisplayName As String
	#tag EndProperty

	#tag Property, Flags = &h0
		Ident As String
	#tag EndProperty

	#tag Property, Flags = &h0
		NetPriceAdd As Currency
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
			Name="DisplayName"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ColorValue"
			Visible=false
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Ident"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AsHtmlCode"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
