#tag Class
Protected Class Ribbon
Inherits JsonModelBase
	#tag Method, Flags = &h0
		Sub Constructor()
		  Self.Guid = NewGuid
		  Self.Design = New RibbonDesign
		  Self.Layout = New RibbonLayout
		  Self.TextElement = New RibbonElementText()
		  Self.GraphicElement = New RibbonElementGraphic()
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		Design As RibbonDesign
	#tag EndProperty

	#tag Property, Flags = &h0
		GraphicElement As RibbonElementGraphic
	#tag EndProperty

	#tag Property, Flags = &h0
		Guid As String
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return (TextElement <> nil and TextElement.Text <> "") or (GraphicElement <> nil and GraphicElement.Image <> nil)
			End Get
		#tag EndGetter
		HasElements As Boolean
	#tag EndComputedProperty

	#tag Property, Flags = &h0
		Layout As RibbonLayout
	#tag EndProperty

	#tag Property, Flags = &h0
		Preview As Picture
	#tag EndProperty

	#tag Property, Flags = &h0
		TextElement As RibbonElementText
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
			Name="Guid"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
