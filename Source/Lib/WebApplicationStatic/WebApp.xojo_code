#tag Class
Protected Class WebApp
Inherits WebApplication
	#tag CompatibilityFlags = ( TargetWeb and ( Target32Bit or Target64Bit ) )
	#tag Event
		Function HandleURL(request As WebRequest, response As WebResponse) As Boolean
		  Var a As Boolean = Self.HandleStaticContent(request, response, App.ExecutableFile.Parent)
		  Var b As Boolean = RaiseEvent HandleUrl(request, response)
		  return a or b
		End Function
	#tag EndEvent


	#tag Method, Flags = &h21
		Private Function HandleStaticContent(Request As WebRequest, Response As WebResponse, Folder As FolderItem, MIMEType As String = "application/octet-stream") As Boolean
		  // Based on: XojoWeb_StaticContent
		  // See: https://github.com/1701software/XojoWeb_StaticContent
		  
		  // Verify we have a valid path so as not to catch blank GET requests.
		  If (Request.Path = "") Then
		    Return False
		  End If
		  
		  // HACK: should be placed somewhere else
		  // do not allow browser access to other pathes than /Html/
		  If Not Request.Path.BeginsWith("Html/") Then
		    response.Reset
		    response.Write("403 - forbidden")
		    response.Status = 403
		    Return True
		  End
		  
		  // Determine if we have a file that matches this path.
		  Dim _filePath As String
		  _filePath = Request.Path
		  #If TargetWindows = True Then
		    _filePath = _filePath.ReplaceAll("/", "\")
		  #EndIf
		  
		  Dim _folderPath As String
		  _folderPath = Folder.NativePath
		  #If TargetWindows = True Then
		    _folderPath = _folderPath + "\"
		  #ElseIf TargetLinux = True Or TargetMacOS = True Then
		    _folderPath = _folderPath + "/"
		  #EndIf
		  
		  Dim _fullPath As String
		  _fullPath = _folderPath + _filePath
		  
		  Dim _fileInFolder As FolderItem
		  _fileInFolder = GetFolderItem(_folderPath + _filePath, FolderItem.PathTypeNative)
		  
		  If (_fileInFolder = Nil) Then
		    Return False
		  End If
		  
		  If (_fileInFolder.Exists() = False) Then
		    Return False
		  End If
		  
		  // We got this far which means there is a file that matches this request path. Let's set the request MIME type.
		  If _fileInFolder.Name.Lowercase().EndsWith(".css") Then
		    Response.MIMEType = "text/css"
		  ElseIf _fileInFolder.Name.Lowercase().EndsWith(".js") Then
		    Response.MIMEType = "application/javascript"
		  ElseIf _fileInFolder.Name.Lowercase().EndsWith(".png") Then
		    Response.MIMEType = "image/png"
		  Else
		    Response.MIMEType = "text/html"
		  End If
		  
		  // We should also update the status code because some browsers are picky about this.
		  Response.Status = 200 // HTTP OK
		  
		  // Read the file contents and append to the request.
		  Dim _fileStream As BinaryStream
		  _fileStream = BinaryStream.Open(_fileInFolder)
		  
		  Response.Write(_fileStream.Read(_fileStream.Length))
		  
		  // Return True so Xojo Web sends the file down to the browser.
		  Return True
		End Function
	#tag EndMethod


	#tag Hook, Flags = &h0
		Event HandleUrl(request as WebRequest, response as WebResponse) As Boolean
	#tag EndHook


	#tag ViewBehavior
	#tag EndViewBehavior
End Class
#tag EndClass
