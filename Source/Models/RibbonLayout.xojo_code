#tag Class
Protected Class RibbonLayout
Inherits JsonModelBase
	#tag Property, Flags = &h0
		Alignment As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		BottomDistance As Integer = 20
	#tag EndProperty

	#tag Property, Flags = &h0
		Order As Integer
	#tag EndProperty


	#tag Constant, Name = kElementOrderTextAboveGraphic, Type = Double, Dynamic = False, Default = \"1", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kElementOrderTextUnderGraphic, Type = Double, Dynamic = False, Default = \"0", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kRibbonAlignmentBottom, Type = Double, Dynamic = False, Default = \"0", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kRibbonAlignmentMiddle, Type = Double, Dynamic = False, Default = \"1", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kRibbonAlignmentTop, Type = Double, Dynamic = False, Default = \"2", Scope = Public
	#tag EndConstant


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
			Name="Alignment"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="RibbonLayout.RibbonAlignment"
			EditorType="Enum"
			#tag EnumValues
				"0 - Bottom"
				"1 - Middle"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="Order"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="RibbonLayout.ElementOrder"
			EditorType="Enum"
			#tag EnumValues
				"0 - TextUnderGraphic"
				"1 - TextAboveGraphic"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="BottomDistance"
			Visible=false
			Group="Behavior"
			InitialValue="20"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
