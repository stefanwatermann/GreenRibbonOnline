#tag Class
Protected Class WorkloadService
	#tag Method, Flags = &h0
		Sub Constructor(dataFolder as FolderItem)
		  self.DataFolder = dataFolder
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Delete(ident as String)
		  Var f As FolderItem = Self.WorkloadFolder.Child(ident + ".json")
		  
		  If f <> Nil And f.Exists And Not f.IsFolder Then
		    f.Remove
		  end
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function FromJson(jsonData as string, ident as string) As Workload
		  Var workload As New Workload(ident)
		  Workload.FromJson(jsonData, workload)
		  Return workload
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Get(ident as String) As Workload
		  If Self.WorkloadFolder <> Nil And Self.WorkloadFolder.Exists And Self.WorkloadFolder.IsFolder Then
		    
		    Var workloadFile As FolderItem = Self.WorkloadFolder.Child(ident + ".json")
		    
		    If workloadFile <> Nil And workloadFile.Exists Then
		      
		      Var jsonData As String = File.ReadAllText(workloadFile)
		      
		      // this app-verision only loads history files with MagicVersion = "$GRF:1"
		      If jsonData.Contains("""$GRF:1""") Then
		        Var workload As Workload = FromJson(jsonData, ident)
		        Return workload
		      End
		      
		    End
		    
		  End
		  
		  Return Nil
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Save(workload as Workload)
		  Var j As JSONItem = ToJson(workload)
		  
		  Var f As FolderItem = Self.WorkloadFolder.Child(workload.Ident + ".json")
		  
		  File.WriteAllText(f, j.ToString)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function ToJson(workload as Workload) As JSONItem
		  Var j0 As JSONItem = workload.ToJson
		  Return j0
		End Function
	#tag EndMethod


	#tag Note, Name = Readme
		Aktuell nicht in Verwendung.
		Kann zum Speichern und Laden des aktuellen Workloads verwendet werden. 
		
	#tag EndNote


	#tag Property, Flags = &h21
		Private DataFolder As FolderItem
	#tag EndProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  Return self.DataFolder.Child("graphics")
			End Get
		#tag EndGetter
		Private GraphicsFolder As FolderItem
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  Var f As FolderItem = Self.DataFolder.Child("workload")
			  
			  If Not f.Exists Then
			    f.CreateFolder
			  End
			  
			  Return f
			End Get
		#tag EndGetter
		Private WorkloadFolder As FolderItem
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
