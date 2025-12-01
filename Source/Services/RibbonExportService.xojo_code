#tag Class
Protected Class RibbonExportService
	#tag Method, Flags = &h21
		Private Function AlignmentText(alignment as integer) As String
		  Select Case alignment
		    
		  Case 1
		    Return "Near"
		    
		  Case 3
		    Return "Far"
		    
		  Else
		    Return "Center"
		    
		  End
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub AppendDesignChild(r as Ribbon, tagName as string, root as XmlNode, xdoc as XMLDocument)
		  Var n As XMLNode = root.AppendChild(xdoc.CreateElement(tagName))
		  n.AppendTextNode("mmWidth", r.Design.mmWidth)
		  n.AppendTextNode("mmHeight", r.Design.mmHeight)
		  n.AppendTextNode("mmBorderLeft", r.Design.mmBorderLeftRight)
		  n.AppendTextNode("mmBorderTop", r.Design.mmBorderTopBottom)
		  n.AppendTextNode("mmBorderRight", r.Design.mmBorderLeftRight)
		  n.AppendTextNode("mmBorderBottom", r.Design.mmBorderTopBottom + r.Layout.BottomDistance)
		  n.AppendTextNode("IsVertical", str(Not r.Design.IsHorizontal).Lowercase)
		  n.AppendTextNode("Description", r.Design.Dimension.DisplayName)
		  n.AppendTextNode("AutoLayout", 1) // AutoLayout immer 1 -> in GreenRibbon dann unten bei Querschleife und mittig bei Längsschleife
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub AppendElementsChild(r as Ribbon, tagName as string, root as XmlNode, xdoc as XMLDocument)
		  Var elements As XMLNode = root.AppendChild(xdoc.CreateElement(tagName))
		  
		  // Background
		  Var b As XMLNode = elements.AppendChild(xdoc.CreateElement("ElementBackground"))
		  If r.Design.Material.PreviewPicture <> Nil And r.Design.Material.FileName <> "" Then
		    b.AppendTextNode("Filename", r.Design.Material.FileName)
		    b.AppendTextNode("FileData", EncodeBase64(r.Design.Material.PreviewPicture.ToData(Picture.Formats.PNG), 0))
		  Else
		    b.AppendTextNode("Color", "#ffffff")
		  End
		  
		  // Graphic
		  If r.GraphicElement <> Nil And r.GraphicElement.Image <> Nil Then
		    Var g As XMLNode = elements.AppendChild(xdoc.CreateElement("ElementGraphic"))
		    g.AppendTextNode("PositionTop", r.GraphicElement.mmTopPos)
		    g.AppendTextNode("Rotation", r.GraphicElement.Rotation)
		    g.AppendTextNode("ZoomFactor", r.GraphicElement.StretchFactor)
		    g.AppendTextNode("FileName", r.GraphicElement.Filename)
		    g.AppendTextNode("FileData", EncodeBase64(r.GraphicElement.Image.ToData(Picture.Formats.PNG), 0))
		  End
		  
		  // Text
		  If r.TextElement <> Nil And r.TextElement.Text.Trim <> "" Then
		    Var t As XMLNode = elements.AppendChild(xdoc.CreateElement("ElementText"))
		    t.AppendTextNode("PositionTop", r.TextElement.mmTopPos)
		    t.AppendTextNode("TextColor", r.Design.PrintColor.AsHtmlCode)
		    t.AppendTextNode("SimpleText", r.TextElement.Text)
		    t.AppendTextNode("mmFontSize", r.TextElement.FontSize)
		    t.AppendTextNode("FontName", r.TextElement.FontName)
		    t.AppendTextNode("TextAlignment", AlignmentText(r.TextElement.Alignment))
		    t.AppendTextNode("LineSpacingFactor", Str(r.TextElement.LineHeight / r.TextElement.FontSize, "0.000"))
		    t.AppendTextNode("Compression", Str(r.TextElement.CompressionFactor, "0.000"))
		  End
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function AsRibbonFileV3(leftRibbon as Ribbon, rightRibbon as Ribbon) As string
		  Var xdoc As New XMLDocument
		  Var root As XmlNode = xdoc.CreateElement(kGr3Namespace, "RibbonFile_V3")
		  
		  root.AppendTextNode("Creator", "GreenRibbonOnline_V1")
		  root.AppendTextNode("SaveDate", DateTime.now.SQLDateTime)
		  root.AppendTextNode("AutoLayout", 0)
		  
		  // Design Left
		  AppendDesignChild(leftRibbon, "DesignLeft", root, xdoc)
		  
		  // Design Right
		  AppendDesignChild(rightRibbon, "DesignRight", root, xdoc)
		  
		  // Elements Left
		  AppendElementsChild(leftRibbon, "ElementsLeft", root, xdoc)
		  
		  // Elements Right
		  AppendElementsChild(rightRibbon, "ElementsRight", root, xdoc)
		  
		  xdoc.AppendChild(root)
		  
		  Return xdoc.ToString
		End Function
	#tag EndMethod


	#tag Constant, Name = kFormatXmlStelysheet, Type = String, Dynamic = False, Default = \"<\?xml version\x3D\"1.0\" encoding\x3D\"UTF-8\"\?>\n<xsl:transform version\x3D\"1.0\" xmlns:xsl\x3D\"http://www.w3.org/1999/XSL/Transform\">\n<xsl:output method\x3D\"xml\" indent\x3D\"yes\" />\n<xsl:template match\x3D\"/\">\n<xsl:copy-of select\x3D\"/\" />\n</xsl:template>\n</xsl:transform>", Scope = Private
	#tag EndConstant

	#tag Constant, Name = kGr3FilenameExtension, Type = String, Dynamic = False, Default = \".grdx", Scope = Public
	#tag EndConstant

	#tag Constant, Name = kGr3Namespace, Type = String, Dynamic = False, Default = \"http://www.watermann-it.de/XmlSchema/GreenRibbon/3", Scope = Private
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
