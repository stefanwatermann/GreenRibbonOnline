#tag Class
Protected Class MailService
	#tag Method, Flags = &h0
		Sub Constructor()
		  Self.MailSocket = New SMTPSecureSocket
		  
		  MailSocket.Address = App.ConfigValue("Mail.ServerName", "mail.watermann-it.de").StringValue
		  MailSocket.Port = App.ConfigValue("Mail.ServerPort", 465).IntegerValue
		  MailSocket.Username = App.ConfigValue("Mail.ServerUsername", "stefan@watermann-it.de").StringValue
		  MailSocket.Password = EncDec.Decrypt(App.ConfigValue("Mail.ServerPasswordEnc", "tUN/qR12d+riAgaPFYqMfg==").StringValue, App.kMasterPass)
		  
		  MailSocket.SMTPConnectionType = SMTPSecureSocket.SMTPConnectionTypes.SSLTLS
		  MailSocket.SSLConnectionType = SMTPSecureSocket.SSLConnectionTypes.TLSv12
		  MailSocket.SSLEnabled = True
		  
		  AddHandler MailSocket.MailSent, AddressOf MailSentHandler
		  AddHandler MailSocket.ServerError, AddressOf MailServerErrorHandler
		  AddHandler MailSocket.Error, AddressOf MailErrorHandler
		  AddHandler MailSocket.ConnectionEstablished, AddressOf MailConnectionEstablishedHandler
		  AddHandler MailSocket.MessageSent, AddressOf MailMessageSentHandler
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub DisconnectMailHost()
		  Try
		    Self.MailSocket.DisconnectFromServer
		    Self.MailSocket.Close
		    
		  Catch e As RuntimeException
		    RaiseEvent MailFailed("Error while trying to disconnect from mail-host: " + e.Message)
		    
		  End
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub MailConnectionEstablishedHandler(Sender as Object, greeting as String)
		  Log.Debug("MailConnectionEstablishedHandler called. Greeting: " + greeting, "MailService")
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub MailErrorHandler(Sender As Object, err As RuntimeException)
		  DisconnectMailHost()
		  
		  RaiseEvent MailFailed("Mail-Handler Fehler: [" + str(err.ErrorNumber) + "] " + err.Message)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub MailMessageSentHandler(Sender as Object, Email as EmailMessage)
		  Log.Debug("MailConnectionEstablishedHandler called. Receiver: " + Email.ToAddress, "MailService")
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub MailSentHandler(Sender as Object)
		  Log.Debug("MailSentHandler called.", "MailService")
		  
		  DisconnectMailHost()
		  
		  RaiseEvent MailSentSuccessfully
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub MailServerErrorHandler(Sender As Object, ErrorID As Integer, ErrorMessage As String, Email As EmailMessage)
		  DisconnectMailHost()
		  
		  RaiseEvent MailFailed("Mail-Server Fehler: [" + str(ErrorID) + "] " + ErrorMessage)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub QueueMail(toAddress as string, fromAddress as string, bccAddress as string, subject as string, body as string, documents() as MailDocument)
		  Var mail As New EmailMessage
		  mail.FromAddress = fromAddress
		  mail.AddRecipient(toAddress)
		  mail.AddBCCRecipient(bccAddress)
		  mail.Subject = subject
		  mail.BodyPlainText = body
		  mail.Headers.AddHeader("X-Mailer", "Watermann-IT SMTP Mailer/v1")
		  
		  If documents <> Nil Then
		    For Each doc As MailDocument In documents
		      Var att As New EmailAttachment
		      att.Name = doc.Filename
		      att.Data = EncodeBase64(doc.Data)
		      att.MIMEType = doc.MimeType
		      att.ContentEncoding = "BASE64"
		      mail.Attachments.Add(att)
		    Next
		  End
		  
		  MailSocket.Messages.Add(mail)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SendQueuedMails()
		  Log.Info("Sending mail to '" + MailSocket.Address + ":" + str(MailSocket.Port) + "' ...", CurrentMethodName)
		  MailSocket.SendMail()
		End Sub
	#tag EndMethod


	#tag Hook, Flags = &h0
		Event MailFailed(err as String)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event MailSentSuccessfully()
	#tag EndHook


	#tag Property, Flags = &h21
		Private MailSocket As SMTPSecureSocket
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
	#tag EndViewBehavior
End Class
#tag EndClass
