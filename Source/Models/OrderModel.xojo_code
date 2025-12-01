#tag Class
Protected Class OrderModel
Inherits JsonModelBase
	#tag Method, Flags = &h0
		Sub Constructor()
		  Self.OrderNumber = CodeGen.GenerateCode
		  Self.OrderDate = DateTime.Now
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		Attributes( "#JsonIgnore" ) Cart() As CartItem
	#tag EndProperty

	#tag Property, Flags = &h0
		CurrencyCode As String = "EUR"
	#tag EndProperty

	#tag Property, Flags = &h0
		CustomerCity As String
	#tag EndProperty

	#tag Property, Flags = &h0
		CustomerEmail As String
	#tag EndProperty

	#tag Property, Flags = &h0
		CustomerMessage As String
	#tag EndProperty

	#tag Property, Flags = &h0
		CustomerName As String
	#tag EndProperty

	#tag Property, Flags = &h0
		CustomerPhone As String
	#tag EndProperty

	#tag Property, Flags = &h0
		CustomerPostCode As String
	#tag EndProperty

	#tag Property, Flags = &h0
		CustomerStreet As String
	#tag EndProperty

	#tag Property, Flags = &h0
		DeliveryPrice As Currency
	#tag EndProperty

	#tag Property, Flags = &h0
		DeliveryType As string
	#tag EndProperty

	#tag Property, Flags = &h0
		Id As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		LastChangeDt As DateTime
	#tag EndProperty

	#tag Property, Flags = &h0
		OrderDate As DateTime
	#tag EndProperty

	#tag Property, Flags = &h0
		OrderNumber As String
	#tag EndProperty

	#tag Property, Flags = &h0
		Status As String = "n"
	#tag EndProperty

	#tag Property, Flags = &h0
		TotalPrice As Currency
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
			Name="CurrencyCode"
			Visible=false
			Group="Behavior"
			InitialValue="EUR"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="CustomerCity"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="CustomerEmail"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="CustomerName"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="CustomerPhone"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="CustomerPostCode"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="CustomerStreet"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DeliveryType"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="OrderNumber"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="CustomerMessage"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Id"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Status"
			Visible=false
			Group="Behavior"
			InitialValue="n"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
