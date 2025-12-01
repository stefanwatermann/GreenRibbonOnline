#tag Class
Protected Class InvalidMaterialFileException
Inherits RuntimeException
	#tag Method, Flags = &h0
		Sub Constructor(filename as string)
		  Self.ErrorNumber = Integer(ErrorCodes.BackendApiError)
		  Self.Message = "Invalid or broken materials file '" + filename + "'"
		  
		  // Calling the overridden superclass constructor.
		  Super.Constructor
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub Constructor(message As String, errorCode As Integer)
		  // Calling the overridden superclass constructor.
		  Super.Constructor(message, errorCode)
		  
		End Sub
	#tag EndMethod


End Class
#tag EndClass
