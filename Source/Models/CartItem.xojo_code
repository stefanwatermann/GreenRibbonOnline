#tag Class
Protected Class CartItem
Inherits JsonModelBase
	#tag Method, Flags = &h0
		Sub Constructor()
		  Self.Guid = NewGuid
		  Self.InsertDt = DateTime.Now
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		CurrencyCode As String = "EUR"
	#tag EndProperty

	#tag Property, Flags = &h0
		CustomerKey As String
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Var d As New CartItemDescription
			  
			  If LeftRibbon <> Nil Then
			    d.Design = LeftRibbon.Design.Dimension.DisplayName + " " + LeftRibbon.Design.Material.DisplayName + " " + LeftRibbon.Design.MaterialEnding.DisplayName
			    d.Font = LeftRibbon.TextElement.FontName + " " + Str(LeftRibbon.TextElement.FontSize) + ", " + RightRibbon.TextElement.FontName + " " + Str(RightRibbon.TextElement.FontSize)
			    d.PrintColor = LeftRibbon.Design.PrintColor.DisplayName
			    
			    If LeftRibbon.TextElement <> Nil And LeftRibbon.TextElement.Text <> "" Then
			      d.TextLeft = LeftRibbon.TextElement.Text.ReplaceAll(EndOfLine, " ")
			    End
			    
			    If LeftRibbon.GraphicElement <> Nil And LeftRibbon.GraphicElement.Filename <> "" Then
			      d.GraphicLeft = LeftRibbon.GraphicElement.Filename.AsTitleCaseFileName
			    End
			  End
			  
			  If RightRibbon <> Nil Then
			    If RightRibbon.TextElement <> Nil And RightRibbon.TextElement.Text <> "" Then
			      d.TextRight = RightRibbon.TextElement.Text.ReplaceAll(EndOfLine, " ")
			    End
			    
			    If RightRibbon.GraphicElement <> Nil And RightRibbon.GraphicElement.Filename <> "" Then
			      d.GraphicRight = RightRibbon.GraphicElement.Filename.AsTitleCaseFileName
			    End
			  End
			  
			  Return d
			End Get
		#tag EndGetter
		Description As CartItemDescription
	#tag EndComputedProperty

	#tag Property, Flags = &h0
		Guid As String
	#tag EndProperty

	#tag Property, Flags = &h0
		InsertDt As DateTime
	#tag EndProperty

	#tag Property, Flags = &h0
		LeftRibbon As Ribbon
	#tag EndProperty

	#tag Property, Flags = &h0
		RightRibbon As Ribbon
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Var p As Currency
			  
			  If Self.LeftRibbon <> Nil Then
			    p = p + Self.LeftRibbon.Design.Dimension.NetPrice
			    p = p + Self.LeftRibbon.Design.Material.NetPriceAdd
			    p = p + Self.LeftRibbon.Design.MaterialEnding.NetPriceAdd
			    p = p + Self.LeftRibbon.Design.PrintColor.NetPriceAdd
			  End
			  
			  Return p
			End Get
		#tag EndGetter
		SinglePrice As Currency
	#tag EndComputedProperty


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
		#tag ViewProperty
			Name="CustomerKey"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="CurrencyCode"
			Visible=false
			Group="Behavior"
			InitialValue="EUR"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
