#tag Module
Protected Module Log
	#tag Method, Flags = &h0
		Sub Critical(msg as string, origin as string = "default")
		  // critical wird unabhängig vom LogLevel ausgegeben
		  
		  Var m As String = "CRITICAL [" + origin + "] " + msg
		  
		  System.Log(System.LogLevelCritical, m)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Debug(msg as string, origin as string = "default")
		  If Level = Log.LogLevel.DEBUG Then
		    
		    Var m As String = "[" + origin + "] " + msg
		    
		    System.Log(System.LogLevelDebug, m)
		    
		  End
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Error(e as runtimeexception, origin as string = "default")
		  // error wird unabhängig vom LogLevel ausgegeben
		  
		  Var m As String = "[" + origin + "] " + "[" + Str(e.ErrorNumber) + "] " + e.Message
		  
		  System.Log(System.LogLevelError, m)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Error(msg as string, origin as string = "default")
		  // error wird unabhängig vom LogLevel ausgegeben
		  
		  Var m As String = "[" + origin + "] " + msg
		  
		  System.Log(System.LogLevelError, m)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Info(msg as string, origin as string = "default")
		  If Level = Log.LogLevel.DEBUG Or Level = Log.LogLevel.INFO Then
		    
		    Var m As String = "[" + origin + "] " + msg
		    
		    System.Log(System.LogLevelInformation, m)
		    
		  End
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SetLogLevel(logLevel as string)
		  Select Case logLevel.Trim.Lowercase
		    
		  Case "info"
		    Level = Log.LogLevel.INFO
		    
		  Case "warn"
		    Level = Log.LogLevel.WARN
		    
		  Case "error"
		    Level = Log.LogLevel.ERROR
		    
		  Else
		    Level = Log.LogLevel.DEBUG
		    
		  End
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Warning(msg as string, origin as string = "default")
		  If Level = Log.LogLevel.DEBUG Or Level = Log.LogLevel.INFO Or Level = Log.LogLevel.WARN Then
		    
		    Var m As String = "[" + origin + "] " + msg
		    
		    System.Log(System.LogLevelWarning, m)
		    
		  End
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h21
		Private Level As Log.LogLevel
	#tag EndProperty


	#tag Enum, Name = LogLevel, Type = Integer, Flags = &h0
		DEBUG
		  INFO
		  WARN
		ERROR
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
	#tag EndViewBehavior
End Module
#tag EndModule
