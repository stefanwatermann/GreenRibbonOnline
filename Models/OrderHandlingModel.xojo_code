#tag Class
Protected Class OrderHandlingModel
Inherits JsonModelBase
	#tag Method, Flags = &h0
		Sub Constructor()
		  OrderConfirmationSubjectText = kOrderConfirmationSubjectDefault
		  OrderConfirmationBodyText = kOrderConfirmationBodyDefault
		  OrderReceivedSubjectText = kOrderReceivedSubjectDefault
		  OrderReceivedBodyText = kOrderReceivedBodyDefault
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		Ident As String
	#tag EndProperty

	#tag Property, Flags = &h0
		OrderConfirmationBodyText As String
	#tag EndProperty

	#tag Property, Flags = &h0
		OrderConfirmationSubjectText As String
	#tag EndProperty

	#tag Property, Flags = &h0
		OrderReceivedBodyText As String
	#tag EndProperty

	#tag Property, Flags = &h0
		OrderReceivedSubjectText As String
	#tag EndProperty

	#tag Property, Flags = &h0
		OrderSenderEmailAddresses As string
	#tag EndProperty


	#tag Constant, Name = kOrderConfirmationBodyDefault, Type = String, Dynamic = False, Default = \"Hallo\n\nIhre Bestellung ist bei uns am %BestellDatum unter der Bestellnummer %BestellNr eingegangen.\n\nWir beginnen nun mit der Produktion der Schleifen. Sobald das Paket versendet wird\x2C erhalten Sie von uns eine Versandbest\xC3\xA4tigungper E-Mail.\n\nIm Anhang finden Sie unsere Rechnung und Ihre Bestelldetails.\n\nVielen Dank f\xC3\xBCr Ihren Einkauf bei uns.", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kOrderConfirmationSubjectDefault, Type = String, Dynamic = False, Default = \"Ihre Schleifenbestellung mit der Nummer %BestellNr ist bei uns eingegangen.", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kOrderReceivedBodyDefault, Type = String, Dynamic = False, Default = \"Hallo\n\neine neue Bestellung ist eingegangen.\n\n", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kOrderReceivedSubjectDefault, Type = String, Dynamic = False, Default = \"Eine Schleifenbestellung mit der Nummer %BestellNr ist eingegangen.", Scope = Private
	#tag EndConstant


	#tag ViewBehavior
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
			Name="Name"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
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
			Name="OrderReceivedBodyText"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="OrderSenderEmailAddresses"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="OrderReceivedSubjectText"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="OrderConfirmationSubjectText"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="OrderConfirmationBodyText"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
