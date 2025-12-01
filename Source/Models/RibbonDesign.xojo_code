#tag Class
Protected Class RibbonDesign
Inherits JsonModelBase
	#tag CompatibilityFlags = ( TargetConsole and ( Target32Bit or Target64Bit ) ) or ( TargetWeb and ( Target32Bit or Target64Bit ) ) or ( TargetDesktop and ( Target32Bit or Target64Bit ) ) or ( TargetIOS and ( Target64Bit ) ) or ( TargetAndroid and ( Target64Bit ) )
	#tag Method, Flags = &h0
		Sub Constructor()
		  Self.mmWidth = 175
		  Self.mmHeight = 700
		  Self.Material = New MaterialDef
		  Self.MaterialEnding = New MaterialEndingDef
		  Self.PrintColor = New ColorDef
		  Self.Dimension = New DimensionDef
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		Dimension As DimensionDef
	#tag EndProperty

	#tag Property, Flags = &h0
		IsHorizontal As Boolean = True
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  // Design ist "initialzed", wenn die Eigenschaften Dimension, Material und PrtintColor gefüllt sind.
			  // Dies kann nicht durch den Konstruktor geschehen, da dieser keinen Zugriff auf den AssetService hat.
			  return Dimension.DisplayName <> "" and Material.DisplayName <> "" and PrintColor.DisplayName <> ""
			End Get
		#tag EndGetter
		IsInitialized As Boolean
	#tag EndComputedProperty

	#tag Property, Flags = &h0
		Material As MaterialDef
	#tag EndProperty

	#tag Property, Flags = &h0
		MaterialEnding As MaterialEndingDef
	#tag EndProperty

	#tag Property, Flags = &h0
		mmBorderLeftRight As Integer = 0
	#tag EndProperty

	#tag Property, Flags = &h0
		mmBorderTopBottom As Integer = 0
	#tag EndProperty

	#tag Property, Flags = &h0
		mmHeight As Integer = 700
	#tag EndProperty

	#tag Property, Flags = &h0
		mmWidth As Integer = 100
	#tag EndProperty

	#tag Property, Flags = &h0
		PrintColor As ColorDef
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
			Name="mmBorderLeftRight"
			Visible=false
			Group="Behavior"
			InitialValue="10"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="mmBorderTopBottom"
			Visible=false
			Group="Behavior"
			InitialValue="20"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="IsHorizontal"
			Visible=false
			Group="Behavior"
			InitialValue="True"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="mmHeight"
			Visible=false
			Group="Behavior"
			InitialValue="700"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="mmWidth"
			Visible=false
			Group="Behavior"
			InitialValue="100"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
