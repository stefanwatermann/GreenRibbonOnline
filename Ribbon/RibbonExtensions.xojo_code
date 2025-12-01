#tag Module
Protected Module RibbonExtensions
	#tag Method, Flags = &h0
		Function IsLike(extends c as Color, a as color, distance as integer) As Boolean
		  If c.Alpha < 100 Then
		    If c.Red >= a.Red - distance And c.Red <= a.Red + distance And _
		      c.Green >= a.Green - distance And c.Green <= a.Green + distance And _
		      c.Blue >= a.Blue - distance And c.Blue <= a.Blue + distance Then
		      Return True
		    End
		  End
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Mirror(Extends p as Picture) As Picture
		  Var rp As New Picture(p.Width, p.Height)
		  Var g As Graphics = rp.Graphics
		  
		  g.Scale(-1.0, 1.0)
		  g.DrawPicture(p, -g.Width/2, 0, g.Width, g.Height, 0, 0, p.Width, p.Height)
		  
		  Return rp
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Rotate(Extends p as Picture, angle as double) As Picture
		  If angle <> 0.0 Then
		    
		    Var r As Double = angle * 3.14159265 / 180
		    
		    Var px As New PixmapShape(p)
		    px.Rotation = r
		    
		    Var h1 As Double = Abs(Cos(r) * p.Height + Sin(r) * p.Width)
		    Var w1 As Double = Abs(Sin(r) * p.Height + Cos(r) * p.Width)
		    
		    Var rp As New Picture(w1, h1)
		    
		    rp.Graphics.AntiAliased = True
		    rp.Graphics.AntiAliasMode = Graphics.AntiAliasModes.HighQuality
		    
		    rp.Graphics.DrawObject(px, rp.Width / 2, rp.Height / 2)
		    
		    Return rp
		    
		  End
		  
		  Return p
		End Function
	#tag EndMethod


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
