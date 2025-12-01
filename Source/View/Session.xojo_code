#tag Class
Protected Class Session
Inherits WebSession
#tag Session
  interruptmessage=Bitte warten Sie einen Moment\x2C bis die Verbindung zum Server wiederhergestellt ist.
  disconnectmessage=Die Anwendung wurde vom Server getrennt. Bitte warten Sie bis die Verbindung wiederhergestellt ist\x2C oder dr\xC3\xBCcken Sie F5 in Ihrem Browser.
  confirmmessage=
  AllowTabOrderWrap=True
  ColorMode=1
  SendEventsInBatches=False
#tag EndSession
	#tag Event
		Function AllowUnsupportedBrowser(ByRef errorMessage As String, ByRef sendAsHTML As Boolean) As Boolean
		  // do not allow unsupported browsers
		  Return False
		End Function
	#tag EndEvent

	#tag Event
		Sub Closing(appQuitting As Boolean)
		  If Self.CurrentWorkload <> Nil Then
		    Self.CurrentWorkload.UserActive = False
		  end
		End Sub
	#tag EndEvent

	#tag Event
		Sub HashtagChanged(name As String, data As String)
		  Log.Info("[" + CurrentMethodName + "] HashTag changed to '" + name + "'", Self.SecureSessionId)
		  
		  // Start secure session
		  StartSession()
		End Sub
	#tag EndEvent

	#tag Event
		Sub JavaScriptError(errorName as String, errorMessage as String, errorStack as String)
		  Log.Error(Self.GetJavaScriptError(ErrorName, ErrorMessage, ErrorStack), Self.SecureSessionId)
		End Sub
	#tag EndEvent

	#tag Event
		Sub Opening()
		  // start secure session 
		  StartSession()
		  
		  ExecuteJavaScript("removeInitMessage();")
		End Sub
	#tag EndEvent

	#tag Event
		Sub PreparingSession(ByRef HTMLHeader As String)
		  Log.Debug("Session.Preparing()", CurrentMethodName)
		  
		  ResetExecutionTime
		End Sub
	#tag EndEvent

	#tag Event
		Function UnhandledException(error As RuntimeException) As Boolean
		  return ShowUnhandledSessionError(error)
		End Function
	#tag EndEvent

	#tag Event
		Sub UserDisconnected()
		  Log.Info("User disconnected.", Self.SecureSessionId)
		  
		End Sub
	#tag EndEvent

	#tag Event
		Sub UserTimedOut()
		  Log.Info("User timed-out.", Self.SecureSessionId)
		  
		  If Self.CurrentWorkload <> Nil Then
		    Self.CurrentWorkload.UserActive = False
		  end
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Function GetSessionExecutionTime() As String
		  Var ts As DateInterval = DateTime.Now - Self.SessionStartDt
		  return str(ts.Seconds) + "." + str(ts.Nanoseconds).left(2) + "sec"
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub InitPageHandler()
		  // Init WebPage handler
		  // Call Session.PageHandler.RegisterPage(...) for each page to allow navigation by hashtag
		  Self.PageHandler = New LobBase.LobWebPageHandler(PageMain, PageNoAccess, PageNotFound)
		  Self.PageHandler.RegisterPage(PageLowRes, "lowres")
		  Self.PageHandler.RegisterPage(PageHtmlContent, "dataprivacy")
		  Self.PageHandler.RegisterPage(PageHtmlContent, "imprint")
		  Self.PageHandler.RegisterPage(PageHtmlContent, "delivery")
		  Self.PageHandler.RegisterPage(PageHtmlContent, "terms")
		  Self.PageHandler.RegisterPage(PageNotFound, "404")
		  Self.PageHandler.RegisterPage(PageNoAccess, "403")
		  Self.PageHandler.RegisterPage(PageRibbonEdit, "edit")
		  Self.PageHandler.RegisterPage(PageRibbonEditFrame, "editframe")
		  Self.PageHandler.RegisterPage(PageRibbonEditSingleFrame, "editsingleframe")
		  Self.PageHandler.RegisterPage(PageCheckoutCart, "checkout")
		  Self.PageHandler.RegisterPage(PageOrderCart, "cart")
		  Self.PageHandler.RegisterPage(PageProcessOrder, "process")
		  Self.PageHandler.RegisterPage(PageAdminFonts, "fonts")
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub InitServices()
		  Self.SvcFonts = New FontService(Self.CurrentDataFolder)
		  Self.SvcAssets = New AssetsService(Self.CurrentDataFolder)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub InitWorkLoad()
		  // WICHTIG: Ab hier MUSS die SecureSessionId gesetzt sein!
		  If Self.SecureSessionId = "" Then
		    Log.Critical("Session.SecureSessionId shall not be empty here.", CurrentMethodName)
		    Raise New Exceptions.SecureSessionIdNotSetException()
		  End
		  
		  If Self.CurrentWorkload = Nil Then
		    Self.CurrentWorkload = Workload.CreateNew(Self.SecureSessionId)
		  End
		  
		  Self.CurrentWorkload.UserActive = True
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub NavigateTo(hashtag as string)
		  Log.Info("[" + CurrentMethodName + "] hashtag=" + hashtag + ", action=" + Self.CurrentAction, Self.SecureSessionId)
		  
		  // open requested page or default page
		  If Self.ClientWidth < kMinClientWidth Then
		    // if client-width is too smal (e.g. iPhone) show hint instead of selected page
		    Self.CurrentPage = PageLowRes
		    
		  Else
		    // navigate to selected page (by hashtag)
		    Self.PageHandler.ShowPage(hashtag)
		    
		  End
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub ResetExecutionTime()
		  Self.SessionStartDt = DateTime.Now
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub StartSession()
		  // Einstieg in die (Secure) Session und Initialisierung aller Komponenten und Services
		  
		  Log.Info("[" + CurrentMethodName + "]  Sub-Domain: " + Self.SubDomain + ", User-Agent: " + Self.UserAgent + ", ClientWidth: " + Str(Self.ClientWidth), Self.SecureSessionId)
		  
		  ResetExecutionTime
		  
		  // Init and start persistent browser session using cookie
		  Self.SecureSession = New SecureBrowserSession(Self, App.kWorkLoadDurationDays)
		  Self.SecureSession.RequestSessionDataSync
		  
		  // set language (zunächst nur deutsch unterstüztz)
		  Self.LanguageCode = "de-DE"
		  
		  // init all services
		  InitServices
		  
		  // Init Web-Pages Handler
		  InitPageHandler()
		  
		  If Self.SecureSessionId  = "" Then
		    // invalid session-id
		    Self.CurrentPage = PageNotFound
		    
		  Else
		    // Init Workload
		    InitWorkLoad()
		    
		    // open requested page or default page
		    NavigateTo(Self.HashTag)
		    
		  End
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		CurrentAction As String
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Var f As FolderItem = App.AppDataFolder
			  
			  Return f
			End Get
		#tag EndGetter
		CurrentDataFolder As FolderItem
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Var workload As Workload = App.GetWorkload(Self.SecureSessionId)
			  
			  If workload = Nil Then
			    Return Nil
			  End
			  
			  Return workload
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  App.SaveWorkload(value, value.Ident)
			End Set
		#tag EndSetter
		CurrentWorkload As Workload
	#tag EndComputedProperty

	#tag Property, Flags = &h0
		HelpTag As String = "index"
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  // return false here if user authentication is required and implemented and current user is successfully authenticaded.
			  Return True
			End Get
		#tag EndGetter
		IsAuthenticatedUser As Boolean
	#tag EndComputedProperty

	#tag Property, Flags = &h21
		Private PageHandler As LobBase.LobWebPageHandler
	#tag EndProperty

	#tag Property, Flags = &h21
		Private SecureSession As SecureBrowserSession
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  If Self.SecureSession = Nil Then
			    Return ""
			  End
			  
			  return self.SecureSession.SessionId
			End Get
		#tag EndGetter
		SecureSessionId As String
	#tag EndComputedProperty

	#tag Property, Flags = &h21
		Private SessionStartDt As DateTime
	#tag EndProperty

	#tag Property, Flags = &h0
		SvcAssets As AssetsService
	#tag EndProperty

	#tag Property, Flags = &h0
		SvcFonts As FontService
	#tag EndProperty


	#tag Constant, Name = kMinClientWidth, Type = Double, Dynamic = False, Default = \"640", Scope = Private
	#tag EndConstant


	#tag ViewBehavior
		#tag ViewProperty
			Name="SendEventsInBatches"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="ColorMode"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="WebSession.ColorModes"
			EditorType="Enum"
			#tag EnumValues
				"0 - Auto"
				"1 - Light"
				"2 - Dark"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="UserPrefersDarkMode"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
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
			Name="Name"
			Visible=true
			Group="ID"
			InitialValue=""
			Type="String"
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
			Name="HashTag"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Identifier"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="LanguageCode"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="LanguageRightToLeft"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="RemoteAddress"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ScaleFactor"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Double"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="UserTimeout"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="URL"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="_baseurl"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="string"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DisconnectMessage"
			Visible=true
			Group="Behavior"
			InitialValue="You have been disconnected from this application."
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="InterruptionMessage"
			Visible=true
			Group="Behavior"
			InitialValue="We are having trouble communicating with the server. Please wait a moment while we attempt to reconnect."
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="_LastMessageTime"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Double"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="AllowTabOrderWrap"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="ConfirmDisconnectMessage"
			Visible=true
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Platform"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="IsDarkMode"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="ClientHeight"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="ClientWidth"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="CurrentAction"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="SecureSessionId"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="HelpTag"
			Visible=false
			Group="Behavior"
			InitialValue="index"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
