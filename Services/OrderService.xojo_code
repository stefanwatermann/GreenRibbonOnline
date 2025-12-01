#tag Class
Protected Class OrderService
	#tag Method, Flags = &h21
		Private Sub AppendAsMailDoc(fileData as MemoryBlock, fileName as string, mimeType as string, fileType as string, targetArray() as MailDocument)
		  Var d As New MailDocument
		  d.Data = fileData
		  d.Filename = fileName
		  d.MimeType = mimeType
		  targetArray.Add(d)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Constructor()
		  Self.PdfSvc = New PdfCreatorService()
		  Self.RibbonExportSvc = New RibbonExportService
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function CreateOrderFilesData(order as OrderModel) As Dictionary
		  // create GR3 XML of each cart item
		  Var d As New Dictionary
		  Var i As Integer = 1
		  For Each item As CartItem In order.Cart
		    // Ribbon File
		    Var ribbonFileData As String = RibbonExportSvc.AsRibbonFileV3(item.LeftRibbon, item.RightRibbon)
		    d.Value(order.OrderNumber + "_" + Str(i, "00") + RibbonExportService.kGr3FilenameExtension) = ribbonFileData
		    i = i + 1
		  Next
		  
		  Return d
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function CreateOrderPreviewData(order as OrderModel) As Dictionary
		  // create jpeg preview of each cart item
		  Var d As New Dictionary
		  Var i As Integer = 1
		  
		  For Each item As CartItem In order.Cart
		    
		    Var p As New Picture(item.LeftRibbon.Preview.Width + item.RightRibbon.Preview.Width, item.LeftRibbon.Preview.Height)
		    p.Graphics.DrawPicture(item.LeftRibbon.Preview, 0, 0)
		    p.Graphics.DrawPicture(item.RightRibbon.Preview, item.LeftRibbon.Preview.Width, 0)
		    
		    Var ribbonPreviewData As MemoryBlock = p.ToData(Picture.Formats.JPEG, 70)
		    
		    d.Value(order.OrderNumber + "_Vorschau_" + Str(i, "00") + ".jpg") = ribbonPreviewData
		    
		    i = i + 1
		    
		  Next
		  
		  Return d
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub GenerateOrderFiles(order as OrderModel)
		  OrderFiles.RemoveAll
		  CustomerFiles.RemoveAll
		  
		  Var orderData As Dictionary = CreateOrderFilesData(order)
		  
		  // create items data files
		  For Each orderFileName As String In orderData.Keys
		    AppendAsMailDoc(orderData.Value(orderFileName).StringValue, orderFileName, "x-application/greenribbonfile", kOrderFileType_RibbonFile + "_" + orderFileName, OrderFiles)
		  Next
		  
		  // create items preview files
		  Var orderPreview As Dictionary = CreateOrderPreviewData(order)
		  For Each orderFileName As String In orderPreview.Keys
		    AppendAsMailDoc(orderPreview.Value(orderFileName).StringValue, orderFileName, "image/jpeg", kOrderFileType_RibbonPreview + "_" + orderFileName, OrderFiles)
		    orderData.Value(orderFileName) = orderPreview.Value(orderFileName)
		  Next
		  
		  // create order details pdf
		  Var orderDetailsPdf As PDFDocument = PdfSvc.CreateOrderDetails(order)
		  Var f1 As String = "Bestellung_" + order.OrderNumber + ".pdf"
		  AppendAsMailDoc(orderDetailsPdf.ToData, f1, "application/pdf", kOrderFileType_OrderDetails, OrderFiles)
		  orderData.Value(f1) = orderDetailsPdf.ToData
		  
		  // create customer details pdf
		  Var customerDetailsPdf As PDFDocument = PdfSvc.CreateCustomerDetails(order)
		  Var f2 As String = "Bestellbestätigung_" + order.OrderNumber + ".pdf"
		  AppendAsMailDoc(customerDetailsPdf.ToData, f2, "application/pdf", kOrderFileType_CustomerDetails, CustomerFiles)
		  orderData.Value(f2) = customerDetailsPdf.ToData
		  
		  // create customer invoice pdf
		  Var customerInvoicePdf As PDFDocument = PdfSvc.CreateCustomerInvoice(order)
		  Var f3 As String = "Rechnung_" + order.OrderNumber + ".pdf"
		  AppendAsMailDoc(customerInvoicePdf.ToData, f3, "application/pdf", kOrderFileType_CustomerInvoice, CustomerFiles)
		  orderData.Value(f3) = customerInvoicePdf.ToData
		  
		  // Order and Dictionary of MailDomuments now read to be send
		  RaiseEvent OrderReadyToSend(order, OrderFiles, CustomerFiles, orderData)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetOrderFiles(folderName as string) As FolderItem()
		  Var orderFolder As FolderItem = OrdersFolder.Child(folderName)
		  
		  Var fileData() As FolderItem
		  
		  // first add .gr3 file
		  For Each file As FolderItem In orderFolder.Children
		    If file.name.Lowercase.EndsWith(RibbonExportService.kGr3FilenameExtension) Then
		      fileData.Add(file)
		    End
		  Next
		  
		  // then add preview file
		  For Each file As FolderItem In orderFolder.Children
		    If file.name.Lowercase.EndsWith(".jpg") Then
		      fileData.Add(file)
		    End
		  Next
		  
		  // now append .pdf files
		  For Each file As FolderItem In orderFolder.Children
		    If file.name.Lowercase.EndsWith(".pdf") Then
		      fileData.Add(file)
		    End
		  Next
		  
		  Return fileData
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub SaveOrder(order as OrderModel, dataFiles as Dictionary)
		  // create folder for order files
		  Var orderFolder As FolderItem = OrdersFolder.Child(order.OrderNumber)
		  If Not orderFolder.Exists Then
		    orderFolder.CreateFolder
		  End
		  
		  // save order ribbon files
		  For Each key As String In dataFiles.Keys
		    Var fileName As String = key
		    Var data As String = dataFiles.Value(key)
		    File.WriteAllText(orderFolder.Child(fileName), data)
		  Next
		  
		End Sub
	#tag EndMethod


	#tag Hook, Flags = &h0
		Event OrderReadyToSend(order as OrderModel, orderFiles() as MailDocument, customerFiles() as MailDocument, orderDataFiles as Dictionary)
	#tag EndHook


	#tag Property, Flags = &h21
		Private CustomerFiles() As MailDocument
	#tag EndProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  Return Session.CurrentDataFolder
			End Get
		#tag EndGetter
		Private DataFolder As FolderItem
	#tag EndComputedProperty

	#tag Property, Flags = &h21
		Private OrderFiles() As MailDocument
	#tag EndProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  Var f As FolderItem = DataFolder.Child("orders")
			  
			  If Not f.Exists Then
			    f.CreateFolder
			  End
			  
			  return f
			End Get
		#tag EndGetter
		Private OrdersFolder As FolderItem
	#tag EndComputedProperty

	#tag Property, Flags = &h21
		Private PdfSvc As PdfCreatorService
	#tag EndProperty

	#tag Property, Flags = &h21
		Private RibbonExportSvc As RibbonExportService
	#tag EndProperty


	#tag Constant, Name = kOrderDatabaseDDL, Type = String, Dynamic = False, Default = \"CREATE TABLE IF NOT EXISTS \"Orders\" (\n\t\"Id\"\tINTEGER NOT NULL UNIQUE\x2C\n\t\"OrderDate\"\tTEXT NOT NULL\x2C\n\t\"OrderNumber\"\tTEXT NOT NULL\x2C\n\t\"Status\"\tTEXT NOT NULL\x2C\n\t\"CustomerName\"\tTEXT\x2C\n\t\"CustomerStreet\"\tTEXT\x2C\n\t\"CustomerPostCode\"\tINTEGER\x2C\n\t\"CustomerCity\"\tTEXT\x2C\n\t\"CustomerEmail\"\tTEXT\x2C\n\t\"CustomerPhone\"\tTEXT\x2C\n\t\"CustomerMessage\"\tTEXT\x2C\n\t\"CurrencyCode\"\tTEXT\x2C\n\t\"DeliveryPrice\"\tNUMERIC\x2C\n\t\"DeliveryType\"\tINTEGER\x2C\n\t\"TotalPrice\"\tNUMERIC\x2C\n\t\"LastChangeDt\"\tTEXT\x2C\n\tPRIMARY KEY(\"Id\" AUTOINCREMENT)\n);", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kOrderDatabaseInsertOrdersDML, Type = String, Dynamic = False, Default = \"INSERT INTO Orders (\n\tStatus\x2C \n\tCustomerName\x2C \n\tCustomerStreet\x2C \n\tCustomerPostCode\x2C \n\tCustomerCity\x2C \n\tCustomerEmail\x2C \n\tCustomerPhone\x2C \n\tCustomerMessage\x2C \n\tCurrencyCode\x2C \n\tDeliveryPrice\x2C \n\tDeliveryType\x2C \n\tTotalPrice\x2C\n\tOrderNumber\x2C\n\tOrderDate )\nVALUES (\?\x2C \?\x2C \?\x2C \?\x2C \?\x2C \?\x2C \?\x2C \?\x2C \?\x2C \?\x2C \?\x2C \?\x2C \?\x2C \?)", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kOrderDatabaseUpdateOrdersDML, Type = String, Dynamic = False, Default = \"UPDATE Orders \nSET Status\x3D\?\x2C \n\tCustomerName\x3D\?\x2C \n\tCustomerStreet\x3D\?\x2C \n\tCustomerPostCode\x3D\?\x2C \n\tCustomerCity\x3D\?\x2C \n\tCustomerEmail\x3D\?\x2C \n\tCustomerPhone\x3D\?\x2C \n\tCustomerMessage\x3D\?\x2C\n\tCurrencyCode\x3D\?\x2C\n\tDeliveryPrice\x3D\?\x2C\n\tDeliveryType\x3D\?\x2C\n\tTotalPrice\x3D\?\n\tLastChangeDt\x3Ddatetime(\'now\')\nWHERE OrderNumber\x3D\?", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kOrderFileType_CustomerDetails, Type = String, Dynamic = False, Default = \"customerdetails", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kOrderFileType_CustomerInvoice, Type = String, Dynamic = False, Default = \"customerinvoce", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kOrderFileType_OrderDetails, Type = String, Dynamic = False, Default = \"orderdetails", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kOrderFileType_RibbonFile, Type = String, Dynamic = False, Default = \"ribbonfile", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kOrderFileType_RibbonPreview, Type = String, Dynamic = False, Default = \"ribbonpreview", Scope = Public
	#tag EndConstant


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
