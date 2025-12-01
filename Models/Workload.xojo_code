#tag Class
Protected Class Workload
Inherits JsonModelBase
	#tag Method, Flags = &h0
		Sub Constructor(ident as string)
		  Self.LeftRibbon = New Ribbon
		  Self.RightRibbon = New Ribbon
		  Self.LastSaved = DateTime.Now
		  Self.Ident = ident
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Shared Function CreateNew(ident as String) As WorkLoad
		  Var workload As Workload =  New Workload(ident)
		  Return workload
		End Function
	#tag EndMethod


	#tag Property, Flags = &h0
		Cart() As CartItem
	#tag EndProperty

	#tag Property, Flags = &h0
		CurrentOrder As OrderModel
	#tag EndProperty

	#tag Property, Flags = &h0, Description = 4966207365742074686520696E7465726E616C20636172742066656174757265206973206E6F742075736564206279207468697320776F726B6C6F616420616E6420616E2065787465726E616C20636172742063616E206265206964656E7469666965642062792074686973206964656E742E
		ExternalCartIdent As String
	#tag EndProperty

	#tag Property, Flags = &h0
		Ident As String
	#tag EndProperty

	#tag Property, Flags = &h0
		LastSaved As DateTime
	#tag EndProperty

	#tag Property, Flags = &h0
		LeftRibbon As Ribbon
	#tag EndProperty

	#tag Property, Flags = &h0
		MagicVersion As String = "$GRF:1"
	#tag EndProperty

	#tag Property, Flags = &h0
		RightRibbon As Ribbon
	#tag EndProperty

	#tag Property, Flags = &h0, Description = 4F6E6C79206C65667420526962626F6E20697320696E207573652C2066726F6E74656E64207368616C6C2073686F77206F6E6C79206F6E6520526962626F6E2E
		SingleRibbon As Boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		UserActive As Boolean
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return ExternalCartIdent.Length > 2
			End Get
		#tag EndGetter
		Attributes( "#JsonIgnore" ) UsesExternalCart As Boolean
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
		#tag ViewProperty
			Name="Ident"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="MagicVersion"
			Visible=false
			Group="Behavior"
			InitialValue="$GRF:1"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="UserActive"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="ExternalCartIdent"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="SingleRibbon"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="UsesExternalCart"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
