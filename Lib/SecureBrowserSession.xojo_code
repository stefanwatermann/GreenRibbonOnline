#tag Class
 Attributes ( "@Guid" = "18D662FC-4DB6-4425-AEF6-530209094F48", "@Version" = "1.1", "@Author" = "Stefan Watermann", "@Copyright" = "(c) 2025 Stefan Watermann, Auetal", "@Description" = "Browser-Refresh save WebSession handling.", "@Depends" = "WebSessionExtensions v1.0" ) Protected Class SecureBrowserSession
	#tag Method, Flags = &h0
		Sub Constructor(s as WebSession, cookieDurationDays as Integer = 1)
		  Self.mSession = s
		  self.CookieDurationDays = cookieDurationDays
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RequestSessionDataAsync()
		  Self.UseCookie = False
		  mSession.RequestData(SessionDataKeyName)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub RequestSessionDataSync()
		  Self.UseCookie = True
		  Var raw As String = Session.Cookies.Value(SessionDataKeyName)
		  
		  //System.DebugLog(CurrentMethodName + ": SessionDataKeyName=" + SessionDataKeyName + "; raw=" + raw)
		  
		  SetRequestedSessionData(SessionDataKeyName, DecodeBase64(raw))
		  
		  If raw <> "" Then
		    // refresh cookie so that duration will be extended
		    SaveSessionCookie(DecodeBase64(raw))
		  end
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub SaveSessionCookie(value as string)
		  // synchonous via cookie
		  Session.Cookies.Set(_
		  SessionDataKeyName, _
		  EncodeBase64(value, 0), _
		  DateTime.Now.AddInterval(0, 0, CookieDurationDays), _
		  Session.Domain, _
		  "",  _
		  Session.Secure, _
		  Session.Secure, _
		  WebCookieManager.SameSiteStrength.Lax)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub SaveSessionData(value as string)
		  // async via Session.RequestData
		  mSession.RecordData(SessionDataKeyName, value)
		  mSession.RequestData(SessionDataKeyName)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function SessionDataKeyName() As String
		  Return EncodeHex(MD5(mSession.UserAgent + mSession.FQDN + App.ExecutableFile.Name))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetRequestedSessionData(key as string, value as string)
		  //System.DebugLog(CurrentMethodName + ": SessionDataKeyName=" + SessionDataKeyName + "; key=" + key + "; value=" + value)
		  
		  If key = SessionDataKeyName Then
		    If value = "" Then
		      
		      Var json As New JSONItem
		      json.Value("id") = EncodeHex(Crypto.SHA2_256(DateTime.now.ToString("yyyyMMddhhmmssSSS") + Str(System.Random.InRange(10000, 99999))))
		      json.Value("ts") = DateTime.now.SQLDateTime
		      
		      mBrowserSessionData = json
		      
		      If Self.UseCookie Then
		        SaveSessionCookie(json.ToString)
		      Else
		        SaveSessionData(json.ToString)
		      End
		      
		    Else
		      mBrowserSessionData = New JSONItem(value)
		    End
		  Else
		    mBrowserSessionData = Nil
		  End
		End Sub
	#tag EndMethod


	#tag Note, Name = Readme
		Erweiterungen zu WebSession um persitente SessionData (as JSONItem) 
		Die Daten werden im Browser Speicher abgelegt und durch den Browser verwaltet.
		Sie sind nach einem Browser Refresh wieder vorhanden.
		
		
		Verwendung
		-------------
		
		Private Property "SecureSession" as SecureBrowserSession am Session Objekt der WebApp
		
		Event "Session.Activated":
		  RequestBrowserSessionData
		
		Event "Session.Opening":
		  RequestBrowserSessionData
		
		Event "Session.RequestedData(...)":
		  Self.SetRequestedBrowserSessionData(key, value)
		
		
		Abhängigkeiten
		----------------
		- WebSessionExtensions
	#tag EndNote


	#tag Property, Flags = &h21
		Private CookieDurationDays As Integer = 1
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  If mBrowserSessionData <> Nil Then
			    Return mBrowserSessionData.Value("ts").DateTimeValue
			  End
			  Return Nil
			End Get
		#tag EndGetter
		CreateTs As DateTime
	#tag EndComputedProperty

	#tag Property, Flags = &h21
		Private mBrowserSessionData As JSONItem
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mSession As WebSession
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  If mBrowserSessionData <> Nil Then
			    Return mBrowserSessionData.Value("id")
			  End
			  Return ""
			End Get
		#tag EndGetter
		SessionId As String
	#tag EndComputedProperty

	#tag Property, Flags = &h0
		UseCookie As Boolean = True
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
			Name="SessionId"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="UseCookie"
			Visible=false
			Group="Behavior"
			InitialValue="True"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
