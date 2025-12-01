#tag Class
Protected Class ConfigService
	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return App.ConfigValue("HttpClientTimeoutSec", 15).IntegerValue
			End Get
		#tag EndGetter
		HttpClientTimeoutSec As Integer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return App.ConfigValue("Logging.LogAgentUrl", kLogAgentUrl).StringValue
			End Get
		#tag EndGetter
		LogAgentUrl As String
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return App.ConfigValue("Logging.LogLevel", "INFO").StringValue
			End Get
		#tag EndGetter
		LogLevel As String
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return App.ConfigValue("Logging.SendOnline", False).BooleanValue
			End Get
		#tag EndGetter
		LogSendOnline As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return App.ConfigValue("Logging.UserAgentToIgnore").StringValue
			End Get
		#tag EndGetter
		LogUserAgentToIgnore As String
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return App.ConfigValue("Platform.SenderMailAddress").StringValue
			End Get
		#tag EndGetter
		PlatformSenderMailAddress As String
	#tag EndComputedProperty


	#tag Constant, Name = kLogAgentUrl, Type = String, Dynamic = False, Default = \"https://www.watermann-it.de/ws/logreceiver.php", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kLogName, Type = String, Dynamic = False, Default = \"ConfigService", Scope = Private
	#tag EndConstant


	#tag Enum, Name = ClientPlatform, Flags = &h0
		web
		desktop
	#tag EndEnum


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
			Name="LogLevel"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="HttpClientTimeoutSec"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="LogSendOnline"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="PlatformSenderMailAddress"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="LogAgentUrl"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="LogUserAgentToIgnore"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
