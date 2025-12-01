#tag Class
Protected Class PdfCreatorService
	#tag Method, Flags = &h0
		Sub Constructor()
		  // WORKAROUND: ungünstige Abhängikeit, da aufrufender OrderService direkt in WebPage
		  // eingebunden ist und daher immer der parameterlose Construktor aufgerufen wird.
		  Self.AssetSvc = Session.SvcAssets
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function CreateCustomerDetails(order as OrderModel) As PDFDocument
		  Using PdfTemplate
		  
		  Var pdfSvc As New PdfTemplate.PdfService
		  pdfSvc.Load(Self.PdfTemplateFolder.Child("orderconfirmation.ptf"))
		  
		  Var helper As New PdfHelper
		  helper.CreateA4PdfDoc
		  helper.DrawElements(pdfSvc.CanvasElements, Self.GetTemplateParams(order))
		  
		  Return helper.PdfDoc
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function CreateCustomerInvoice(order as OrderModel) As PDFDocument
		  Using PdfTemplate
		  
		  Var pdfSvc As New PdfService
		  pdfSvc.Load(Self.PdfTemplateFolder.Child("customerinvoice.ptf"))
		  
		  Var helper As New PdfHelper
		  helper.CreateA4PdfDoc
		  helper.DrawElements(pdfSvc.CanvasElements, Self.GetTemplateParams(order))
		  
		  Return helper.PdfDoc
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function CreateOrderDetails(order as OrderModel) As PDFDocument
		  Using PdfTemplate
		  
		  Var pdfSvc As New PdfService
		  pdfSvc.Load(Self.PdfTemplateFolder.Child("orderdetails.ptf"))
		  
		  Var helper As New PdfHelper
		  helper.CreateA4PdfDoc
		  helper.DrawElements(pdfSvc.CanvasElements, Self.GetTemplateParams(order))
		  
		  Return helper.PdfDoc
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function GetTemplateParams(order as OrderModel) As Dictionary
		  Var delivery As DeliveryOption = AssetSvc.DeliveryOptions.Value(order.DeliveryType)
		  
		  Var params As New Dictionary
		  params.Value("Date") = DateTime.Now.ToString(DateTime.FormatStyles.Medium, DateTime.FormatStyles.None)
		  params.Value("LongDate") = DateTime.Now.ToString(DateTime.FormatStyles.Long, DateTime.FormatStyles.None)
		  params.Value("Time") = DateTime.Now.ToString(DateTime.FormatStyles.None, DateTime.FormatStyles.Medium)
		  params.Value("OrderDate") = order.OrderDate.ToString(DateTime.FormatStyles.Medium, DateTime.FormatStyles.None)
		  params.Value("OrderTime") = order.OrderDate.ToString(DateTime.FormatStyles.None, DateTime.FormatStyles.Medium)
		  params.Value("OrderNr") = order.OrderNumber
		  params.Value("CustomerCity") = order.CustomerCity
		  params.Value("CustomerEmail") = order.CustomerEmail
		  params.Value("CustomerMessage") = order.CustomerMessage
		  params.Value("CustomerName") = order.CustomerName
		  params.Value("CustomerPhone") = order.CustomerPhone
		  params.Value("CustomerPostCode") = order.CustomerPostCode
		  params.Value("CustomerStreet") = order.CustomerStreet
		  params.Value("DeliveryPrice") = order.DeliveryPrice
		  params.Value("TotalPrice") = order.TotalPrice
		  params.Value("TotalOrderPrice") = order.TotalPrice + order.DeliveryPrice
		  params.Value("CurrencyCode") = order.CurrencyCode
		  params.Value("CartCount") = order.Cart.Count
		  params.Value("DeliveryOption") = delivery.Caption
		  params.Value("DeliveryHint") = delivery.Hint
		  params.Value("DeliveryNetPrice") = delivery.NetPrice
		  
		  Return params
		End Function
	#tag EndMethod


	#tag Property, Flags = &h21
		Private AssetSvc As AssetsService
	#tag EndProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  Return Session.CurrentDataFolder.Child("pdf")
			End Get
		#tag EndGetter
		Private PdfTemplateFolder As FolderItem
	#tag EndComputedProperty


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
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
