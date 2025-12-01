#tag Class
Protected Class AssetsService
	#tag Method, Flags = &h0
		Sub Constructor(dataFolder as FolderItem)
		  Self.DataFolder = dataFolder
		  
		  Self.ReadSettings
		  self.ReadOrderHandling
		  Self.ReadMaterialDefs
		  Self.ReadMaterialEndingsDefs
		  Self.ReadDimensionDefs
		  Self.ReadColorDefs
		  Self.ReadDeliveryOptions
		  self.ReadTextMacros
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub ProcessColorDefLine(line as string)
		  Var def As New ColorDef
		  def.Ident = line.NthField(";", 1).Trim
		  def.DisplayName = line.NthField(";", 2).Trim
		  def.ColorValue = Color.FromString("&c" + line.NthField(";", 3).Trim)
		  def.NetPriceAdd = Val(line.NthField(";", 4).Trim)
		  
		  Self.ColorDefs.Value(def.DisplayName) = def
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub ProcessDeliveryOptionLine(line as string)
		  Var def As New DeliveryOption
		  def.Ident = line.NthField(";", 1).Trim
		  def.Caption = line.NthField(";", 2).Trim
		  def.NetPrice = Val(line.NthField(";", 3).Trim)
		  def.Hint = line.NthField(";", 4).Trim
		  
		  Self.DeliveryOptions.Value(def.Ident) = def
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub ProcessDimensionDefLine(line as string)
		  Var def As New DimensionDef
		  def.Ident = line.NthField(";", 1).Trim
		  def.DisplayName = line.NthField(";", 2).Trim
		  def.MmWidth = Val(line.NthField(";", 3).Trim)
		  def.MmHeight = Val(line.NthField(";", 4).Trim)
		  def.NetPrice = Val(line.NthField(";", 5).Trim)
		  
		  Self.DimensionDefs.Value(def.DisplayName) = def
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub ProcessMaterialDefLine(line as string)
		  Var def As New MaterialDef
		  def.Ident = line.NthField(";", 1).Trim
		  def.DisplayName = line.NthField(";", 2).Trim
		  def.FileName = line.NthField(";", 3).Trim
		  def.NetPriceAdd = Val(line.NthField(";", 4).Trim)
		  def.PreviewPicture = Picture.Open(Self.DataFolder.Child("materials").Child(def.FileName))
		  
		  Self.Materials.Value(def.DisplayName) = def
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub ProcessMaterialEndingsDefLine(line as string)
		  Var def As New MaterialEndingDef
		  def.Ident = line.NthField(";", 1).Trim
		  def.DisplayName = line.NthField(";", 2).Trim
		  def.NetPriceAdd = Val(line.NthField(";", 3).Trim)
		  
		  Self.MaterialEndings.Value(def.DisplayName) = def
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub ReadColorDefs()
		  Self.ColorDefs = New Dictionary
		  
		  Var csvFile As New CsvFileHelper(Self.ColorDefFile, 4, AddressOf ProcessColorDefLine)
		  csvFile.Read
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub ReadDeliveryOptions()
		  Self.DeliveryOptions = New Dictionary
		  
		  Var csvFile As New CsvFileHelper(Self.DeliveryOptionsDefFile, 4, AddressOf ProcessDeliveryOptionLine)
		  csvFile.Read
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub ReadDimensionDefs()
		  Self.DimensionDefs = New Dictionary
		  
		  Var csvFile As New CsvFileHelper(DimensionsDefFile, 5, AddressOf ProcessDimensionDefLine)
		  csvFile.Read
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub ReadMaterialDefs()
		  Self.Materials = New Dictionary
		  
		  Var csvFile As New CsvFileHelper(Self.MaterialsDefFile, 4, AddressOf ProcessMaterialDefLine)
		  csvFile.Read
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub ReadMaterialEndingsDefs()
		  Self.MaterialEndings = New Dictionary
		  
		  Var csvFile As New CsvFileHelper(Self.MaterialEndingsDefFile, 3, AddressOf ProcessMaterialEndingsDefLine)
		  csvFile.Read
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub ReadOrderHandling()
		  Self.OrderHandling = New OrderHandlingModel
		  
		  If Self.OrderHandlingFile <> Nil And Self.OrderHandlingFile.Exists Then
		    
		    Var raw As String = File.ReadAllText(Self.OrderHandlingFile)
		    OrderHandlingModel.FromJson(raw, Self.OrderHandling)
		    
		  End
		  
		  // ensure correct Partner-Ident in any case
		  // TODO wird eine Datei mit einem falschen Ident geladen, sollte eine Exception geworfen werden.
		  Self.OrderHandling.Ident = Self.DataFolder.Name
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub ReadSettings()
		  Settings = New SettingsModel
		  
		  If Self.SettingsFile <> Nil And Self.SettingsFile.Exists Then
		    
		    Var raw As String = File.ReadAllText(Self.SettingsFile)
		    SettingsModel.FromJson(raw, Self.Settings)
		    
		    If Self.Settings.LogoImageFilename <> "" Then
		      Var f As FolderItem = Self.DataFolder.Child(Self.Settings.LogoImageFilename)
		      If f <> Nil And f.Exists Then
		        Self.Settings.LogoImage = Picture.FromData(File.ReadAllBytes(f))
		      End
		    End
		  End
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub ReadTextMacros()
		  Var f As FolderItem = Self.DataFolder.Child("defs").Child("textmacros.txt")
		  
		  If f <> Nil And f.Exists Then
		    TextMacros = File.ReadAllLines(f)
		    TextMacros.Sort
		  End
		End Sub
	#tag EndMethod


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return Self.DataFolder.Child("defs").Child("printcolors.txt")
			End Get
		#tag EndGetter
		ColorDefFile As FolderItem
	#tag EndComputedProperty

	#tag Property, Flags = &h0
		ColorDefs As Dictionary
	#tag EndProperty

	#tag Property, Flags = &h21
		Private DataFolder As FolderItem
	#tag EndProperty

	#tag Property, Flags = &h0
		DeliveryOptions As Dictionary
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return Self.DataFolder.Child("defs").Child("deliveryoptions.txt")
			End Get
		#tag EndGetter
		DeliveryOptionsDefFile As FolderItem
	#tag EndComputedProperty

	#tag Property, Flags = &h0
		DimensionDefs As Dictionary
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return Self.DataFolder.Child("defs").Child("dimensions.txt")
			End Get
		#tag EndGetter
		DimensionsDefFile As FolderItem
	#tag EndComputedProperty

	#tag Property, Flags = &h0
		MaterialEndings As Dictionary
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return Self.DataFolder.Child("defs").Child("materialendings.txt")
			End Get
		#tag EndGetter
		MaterialEndingsDefFile As FolderItem
	#tag EndComputedProperty

	#tag Property, Flags = &h0
		Materials As Dictionary
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return Self.DataFolder.Child("defs").Child("materials.txt")
			End Get
		#tag EndGetter
		MaterialsDefFile As FolderItem
	#tag EndComputedProperty

	#tag Property, Flags = &h0
		OrderHandling As OrderHandlingModel
	#tag EndProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  return DataFolder.Child("orderhandling.json")
			End Get
		#tag EndGetter
		Private OrderHandlingFile As FolderItem
	#tag EndComputedProperty

	#tag Property, Flags = &h0
		Settings As SettingsModel
	#tag EndProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  return DataFolder.Child("settings.json")
			End Get
		#tag EndGetter
		Private SettingsFile As FolderItem
	#tag EndComputedProperty

	#tag Property, Flags = &h0
		TextMacros() As String
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
