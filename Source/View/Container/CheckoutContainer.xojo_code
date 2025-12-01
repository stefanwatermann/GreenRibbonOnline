#tag WebContainerControl
Begin WebContainer CheckoutContainer
   Compatibility   =   ""
   ControlCount    =   0
   ControlID       =   ""
   CSSClasses      =   ""
   Enabled         =   True
   Height          =   730
   Indicator       =   0
   LayoutDirection =   0
   LayoutType      =   0
   Left            =   0
   LockBottom      =   False
   LockHorizontal  =   False
   LockLeft        =   True
   LockRight       =   False
   LockTop         =   True
   LockVertical    =   False
   PanelIndex      =   0
   ScrollDirection =   0
   TabIndex        =   0
   Top             =   0
   Visible         =   True
   Width           =   800
   _mDesignHeight  =   0
   _mDesignWidth   =   0
   _mPanelIndex    =   -1
   Begin WebLabel Label1
      Bold            =   False
      ControlID       =   ""
      CSSClasses      =   ""
      Enabled         =   True
      FontName        =   ""
      FontSize        =   24.0
      Height          =   40
      Index           =   -2147483648
      Indicator       =   0
      Italic          =   False
      Left            =   0
      LockBottom      =   False
      LockedInPosition=   True
      LockHorizontal  =   True
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   True
      LockVertical    =   False
      Multiline       =   False
      PanelIndex      =   0
      Scope           =   2
      TabIndex        =   0
      TabStop         =   True
      Text            =   "Schleifen bestellen"
      TextAlignment   =   2
      TextColor       =   &c000000
      Tooltip         =   ""
      Top             =   0
      Underline       =   False
      Visible         =   True
      Width           =   800
      _mPanelIndex    =   -1
   End
   Begin WebLabel Label2
      Bold            =   False
      ControlID       =   ""
      CSSClasses      =   ""
      Enabled         =   True
      FontName        =   ""
      FontSize        =   0.0
      Height          =   38
      Index           =   -2147483648
      Indicator       =   0
      Italic          =   False
      Left            =   0
      LockBottom      =   False
      LockedInPosition=   True
      LockHorizontal  =   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      LockVertical    =   False
      Multiline       =   False
      PanelIndex      =   0
      Scope           =   2
      TabIndex        =   1
      TabStop         =   True
      Text            =   "Lieferung / Rechnung an"
      TextAlignment   =   0
      TextColor       =   &c000000
      Tooltip         =   ""
      Top             =   50
      Underline       =   False
      Visible         =   True
      Width           =   362
      _mPanelIndex    =   -1
   End
   Begin WebTextField tbCustomerName
      AllowAutoComplete=   False
      AllowSpellChecking=   False
      Caption         =   "Name *"
      ControlID       =   ""
      CSSClasses      =   ""
      Enabled         =   True
      FieldType       =   0
      Height          =   62
      Hint            =   ""
      Index           =   -2147483648
      Indicator       =   0
      Left            =   0
      LockBottom      =   False
      LockedInPosition=   True
      LockHorizontal  =   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      LockVertical    =   False
      MaximumCharactersAllowed=   100
      PanelIndex      =   0
      ReadOnly        =   False
      Scope           =   2
      TabIndex        =   3
      TabStop         =   True
      Text            =   ""
      TextAlignment   =   0
      Tooltip         =   ""
      Top             =   100
      Visible         =   True
      Width           =   380
      _mPanelIndex    =   -1
   End
   Begin WebTextField tbCustomerStreet
      AllowAutoComplete=   False
      AllowSpellChecking=   False
      Caption         =   "Straße *"
      ControlID       =   ""
      CSSClasses      =   ""
      Enabled         =   True
      FieldType       =   0
      Height          =   62
      Hint            =   ""
      Index           =   -2147483648
      Indicator       =   0
      Left            =   0
      LockBottom      =   False
      LockedInPosition=   True
      LockHorizontal  =   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      LockVertical    =   False
      MaximumCharactersAllowed=   100
      PanelIndex      =   0
      ReadOnly        =   False
      Scope           =   2
      TabIndex        =   8
      TabStop         =   True
      Text            =   ""
      TextAlignment   =   0
      Tooltip         =   ""
      Top             =   265
      Visible         =   True
      Width           =   380
      _mPanelIndex    =   -1
   End
   Begin WebTextField tbCustomerPostCode
      AllowAutoComplete=   False
      AllowSpellChecking=   False
      Caption         =   "PLZ *"
      ControlID       =   ""
      CSSClasses      =   ""
      Enabled         =   True
      FieldType       =   0
      Height          =   62
      Hint            =   ""
      Index           =   -2147483648
      Indicator       =   0
      Left            =   0
      LockBottom      =   False
      LockedInPosition=   True
      LockHorizontal  =   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      LockVertical    =   False
      MaximumCharactersAllowed=   5
      PanelIndex      =   0
      ReadOnly        =   False
      Scope           =   2
      TabIndex        =   5
      TabStop         =   True
      Text            =   ""
      TextAlignment   =   0
      Tooltip         =   ""
      Top             =   185
      Visible         =   True
      Width           =   95
      _mPanelIndex    =   -1
   End
   Begin WebTextField tbCustomerCity
      AllowAutoComplete=   False
      AllowSpellChecking=   False
      Caption         =   "Ort (in Deutschland) *"
      ControlID       =   ""
      CSSClasses      =   ""
      Enabled         =   True
      FieldType       =   0
      Height          =   62
      Hint            =   ""
      Index           =   -2147483648
      Indicator       =   0
      Left            =   115
      LockBottom      =   False
      LockedInPosition=   True
      LockHorizontal  =   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      LockVertical    =   False
      MaximumCharactersAllowed=   100
      PanelIndex      =   0
      ReadOnly        =   False
      Scope           =   2
      TabIndex        =   6
      TabStop         =   True
      Text            =   ""
      TextAlignment   =   0
      Tooltip         =   ""
      Top             =   185
      Visible         =   True
      Width           =   265
      _mPanelIndex    =   -1
   End
   Begin WebTextField tbCustomerEmail
      AllowAutoComplete=   False
      AllowSpellChecking=   False
      Caption         =   "E-Mail Adresse *"
      ControlID       =   ""
      CSSClasses      =   "label-small"
      Enabled         =   True
      FieldType       =   2
      Height          =   62
      Hint            =   ""
      Index           =   -2147483648
      Indicator       =   0
      Left            =   0
      LockBottom      =   False
      LockedInPosition=   True
      LockHorizontal  =   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      LockVertical    =   False
      MaximumCharactersAllowed=   100
      PanelIndex      =   0
      ReadOnly        =   False
      Scope           =   2
      TabIndex        =   9
      TabStop         =   True
      Text            =   ""
      TextAlignment   =   0
      Tooltip         =   ""
      Top             =   345
      Visible         =   True
      Width           =   380
      _mPanelIndex    =   -1
   End
   Begin WebTextField tbCustomerPhone
      AllowAutoComplete=   False
      AllowSpellChecking=   False
      Caption         =   "Telefonnummer (für Rückfragen) *"
      ControlID       =   ""
      CSSClasses      =   ""
      Enabled         =   True
      FieldType       =   4
      Height          =   62
      Hint            =   ""
      Index           =   -2147483648
      Indicator       =   0
      Left            =   0
      LockBottom      =   False
      LockedInPosition=   True
      LockHorizontal  =   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      LockVertical    =   False
      MaximumCharactersAllowed=   50
      PanelIndex      =   0
      ReadOnly        =   False
      Scope           =   2
      TabIndex        =   11
      TabStop         =   True
      Text            =   ""
      TextAlignment   =   0
      Tooltip         =   ""
      Top             =   425
      Visible         =   True
      Width           =   260
      _mPanelIndex    =   -1
   End
   Begin WebLabel Label4
      Bold            =   False
      ControlID       =   ""
      CSSClasses      =   "font-size-08"
      Enabled         =   True
      FontName        =   ""
      FontSize        =   0.0
      Height          =   30
      Index           =   -2147483648
      Indicator       =   0
      Italic          =   False
      Left            =   0
      LockBottom      =   False
      LockedInPosition=   True
      LockHorizontal  =   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      LockVertical    =   False
      Multiline       =   False
      PanelIndex      =   0
      Scope           =   2
      TabIndex        =   14
      TabStop         =   True
      Text            =   "Ihre Nachricht an uns (optional)"
      TextAlignment   =   0
      TextColor       =   &c000000FF
      Tooltip         =   ""
      Top             =   500
      Underline       =   False
      Visible         =   True
      Width           =   381
      _mPanelIndex    =   -1
   End
   Begin WebRadioGroup rbDeliveryOptions
      ControlID       =   ""
      CSSClasses      =   ""
      Enabled         =   True
      Height          =   120
      Horizontal      =   False
      Index           =   -2147483648
      Indicator       =   0
      InitialValue    =   "Lieferung per DHL (+ €5,95)\nLieferung per Kurier (+ €16)"
      Left            =   450
      LockBottom      =   False
      LockedInPosition=   True
      LockHorizontal  =   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      LockVertical    =   False
      PanelIndex      =   0
      Scope           =   2
      SelectedIndex   =   0
      TabIndex        =   7
      TabStop         =   True
      Tooltip         =   ""
      Top             =   240
      Visible         =   True
      Width           =   350
      _mInitialValue  =   "Option 1\rOption 2"
      _mPanelIndex    =   -1
   End
   Begin WebTextArea tbMessage
      AllowReturnKey  =   True
      AllowSpellChecking=   True
      Caption         =   ""
      ControlID       =   ""
      CSSClasses      =   ""
      Enabled         =   True
      Height          =   80
      Hint            =   ""
      Index           =   -2147483648
      Indicator       =   0
      Left            =   0
      LockBottom      =   False
      LockedInPosition=   True
      LockHorizontal  =   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      LockVertical    =   False
      MaximumCharactersAllowed=   1000
      PanelIndex      =   0
      ReadOnly        =   False
      Scope           =   2
      TabIndex        =   15
      TabStop         =   True
      Text            =   ""
      TextAlignment   =   0
      Tooltip         =   ""
      Top             =   530
      Visible         =   True
      Width           =   380
      _mPanelIndex    =   -1
   End
   Begin WebLabel Label3
      Bold            =   False
      ControlID       =   ""
      CSSClasses      =   ""
      Enabled         =   True
      FontName        =   ""
      FontSize        =   14.0
      Height          =   30
      Index           =   -2147483648
      Indicator       =   0
      Italic          =   False
      Left            =   450
      LockBottom      =   False
      LockedInPosition=   True
      LockHorizontal  =   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      LockVertical    =   False
      Multiline       =   False
      PanelIndex      =   0
      Scope           =   2
      TabIndex        =   12
      TabStop         =   True
      Text            =   "Gesamtpreis (inkl. 19% MwSt u. Versand)"
      TextAlignment   =   0
      TextColor       =   &c000000FF
      Tooltip         =   ""
      Top             =   445
      Underline       =   False
      Visible         =   True
      Width           =   320
      _mPanelIndex    =   -1
   End
   Begin WebLabel lbTotalPrice
      Bold            =   False
      ControlID       =   ""
      CSSClasses      =   ""
      Enabled         =   True
      FontName        =   ""
      FontSize        =   26.0
      Height          =   50
      Index           =   -2147483648
      Indicator       =   0
      Italic          =   False
      Left            =   450
      LockBottom      =   False
      LockedInPosition=   True
      LockHorizontal  =   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      LockVertical    =   False
      Multiline       =   False
      PanelIndex      =   0
      Scope           =   2
      TabIndex        =   13
      TabStop         =   True
      Text            =   "---"
      TextAlignment   =   1
      TextColor       =   &c000000FF
      Tooltip         =   ""
      Top             =   470
      Underline       =   False
      Visible         =   True
      Width           =   280
      _mPanelIndex    =   -1
   End
   Begin WebButton btnOrderNow
      AllowAutoDisable=   False
      Cancel          =   False
      Caption         =   "Jetzt kostenpflichtig bestellen"
      ControlID       =   ""
      CSSClasses      =   ""
      Default         =   True
      Enabled         =   False
      Height          =   40
      Index           =   -2147483648
      Indicator       =   1
      Left            =   450
      LockBottom      =   False
      LockedInPosition=   False
      LockHorizontal  =   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      LockVertical    =   False
      Outlined        =   False
      PanelIndex      =   0
      Scope           =   2
      TabIndex        =   18
      TabStop         =   True
      Tooltip         =   ""
      Top             =   650
      Visible         =   True
      Width           =   305
      _mPanelIndex    =   -1
   End
   Begin WebLabel lbDeliveryHint
      Bold            =   False
      ControlID       =   ""
      CSSClasses      =   ""
      Enabled         =   True
      FontName        =   ""
      FontSize        =   14.0
      Height          =   60
      Index           =   -2147483648
      Indicator       =   0
      Italic          =   False
      Left            =   450
      LockBottom      =   False
      LockedInPosition=   True
      LockHorizontal  =   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      LockVertical    =   False
      Multiline       =   True
      PanelIndex      =   0
      Scope           =   2
      TabIndex        =   10
      TabStop         =   True
      Text            =   ""
      TextAlignment   =   0
      TextColor       =   &c000000FF
      Tooltip         =   ""
      Top             =   360
      Underline       =   False
      Visible         =   True
      Width           =   330
      _mPanelIndex    =   -1
   End
   Begin WebButton btnBack
      AllowAutoDisable=   False
      Cancel          =   False
      Caption         =   "Zurück zum Warenkorb"
      ControlID       =   ""
      CSSClasses      =   ""
      Default         =   False
      Enabled         =   True
      Height          =   40
      Index           =   -2147483648
      Indicator       =   9
      Left            =   0
      LockBottom      =   False
      LockedInPosition=   True
      LockHorizontal  =   True
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   True
      LockVertical    =   False
      Outlined        =   False
      PanelIndex      =   0
      Scope           =   2
      TabIndex        =   19
      TabStop         =   True
      Tooltip         =   ""
      Top             =   650
      Visible         =   True
      Width           =   200
      _mPanelIndex    =   -1
   End
   Begin WebLabel Label5
      Bold            =   False
      ControlID       =   ""
      CSSClasses      =   ""
      Enabled         =   True
      FontName        =   ""
      FontSize        =   14.0
      Height          =   140
      Index           =   -2147483648
      Indicator       =   ""
      Italic          =   False
      Left            =   450
      LockBottom      =   False
      LockedInPosition=   True
      LockHorizontal  =   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      LockVertical    =   False
      Multiline       =   True
      PanelIndex      =   0
      Scope           =   2
      TabIndex        =   4
      TabStop         =   True
      Text            =   "Per Rechung. \nWir senden unsere Rechung, sowie die Bankverbindung für die Überweisung des Rechnungsbetrags, an die angegebene E-Mail Adresse. "
      TextAlignment   =   0
      TextColor       =   &c000000FF
      Tooltip         =   ""
      Top             =   95
      Underline       =   False
      Visible         =   True
      Width           =   350
      _mPanelIndex    =   -1
   End
   Begin WebLabel Label6
      Bold            =   False
      ControlID       =   ""
      CSSClasses      =   ""
      Enabled         =   True
      FontName        =   ""
      FontSize        =   0.0
      Height          =   38
      Index           =   -2147483648
      Indicator       =   ""
      Italic          =   False
      Left            =   450
      LockBottom      =   False
      LockedInPosition=   True
      LockHorizontal  =   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      LockVertical    =   False
      Multiline       =   False
      PanelIndex      =   0
      Scope           =   2
      TabIndex        =   2
      TabStop         =   True
      Text            =   "Zahlart"
      TextAlignment   =   0
      TextColor       =   &c000000FF
      Tooltip         =   ""
      Top             =   50
      Underline       =   False
      Visible         =   True
      Width           =   350
      _mPanelIndex    =   -1
   End
   Begin WebLabel Label7
      Bold            =   False
      ControlID       =   ""
      CSSClasses      =   ""
      Enabled         =   True
      FontName        =   ""
      FontSize        =   12.0
      Height          =   25
      Index           =   -2147483648
      Indicator       =   ""
      Italic          =   False
      Left            =   210
      LockBottom      =   False
      LockedInPosition=   True
      LockHorizontal  =   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      LockVertical    =   False
      Multiline       =   False
      PanelIndex      =   0
      Scope           =   2
      TabIndex        =   17
      TabStop         =   True
      Text            =   "* Pflichtfeld"
      TextAlignment   =   3
      TextColor       =   &c000000FF
      Tooltip         =   ""
      Top             =   99
      Underline       =   False
      Visible         =   True
      Width           =   170
      _mPanelIndex    =   -1
   End
   Begin WebLabel Label8
      Bold            =   False
      ControlID       =   ""
      CSSClasses      =   ""
      Enabled         =   True
      FontName        =   ""
      FontSize        =   14.0
      Height          =   55
      Index           =   -2147483648
      Indicator       =   ""
      Italic          =   False
      Left            =   450
      LockBottom      =   False
      LockedInPosition=   True
      LockHorizontal  =   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      LockVertical    =   False
      Multiline       =   True
      PanelIndex      =   0
      Scope           =   2
      TabIndex        =   20
      TabStop         =   True
      Text            =   "Mit absenden Ihrer Bestellung erkennen Sie unsere AGB und Lieferbedingen an."
      TextAlignment   =   0
      TextColor       =   &c000000FF
      Tooltip         =   ""
      Top             =   565
      Underline       =   False
      Visible         =   True
      Width           =   330
      _mPanelIndex    =   -1
   End
End
#tag EndWebContainerControl

#tag WindowCode
	#tag Method, Flags = &h21
		Private Sub EnableOrderButton()
		  btnOrderNow.Enabled = _
		  tbCustomerName.Text.Length > 2 And _
		  tbCustomerEmail.Text.Length > 2 And _
		  tbCustomerCity.Text.Length > 1 And _
		  tbCustomerStreet.Text.Length > 2 And _
		  tbCustomerPostCode.Text.Length > 2 And _
		  tbCustomerPhone.Text.Length > 2 
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub Update()
		  If Session.CurrentWorkload.CurrentOrder <> Nil Then
		    Var delivery As DeliveryOption = DeliveryOption(rbDeliveryOptions.SelectedItem.Tag)
		    lbDeliveryHint.Text = delivery.Hint
		    lbTotalPrice.Text = Self.TotalPrice.ToLocaleString
		    Session.CurrentWorkload.CurrentOrder.DeliveryType = delivery.Ident
		  end
		End Sub
	#tag EndMethod


	#tag Hook, Flags = &h0
		Event OrderNowClicked()
	#tag EndHook


	#tag ComputedProperty, Flags = &h21
		#tag Getter
			Get
			  Var delivery As DeliveryOption = DeliveryOption(rbDeliveryOptions.SelectedItem.Tag)
			  Session.CurrentWorkload.CurrentOrder.DeliveryPrice = delivery.NetPrice
			  Return Session.CurrentWorkload.CurrentOrder.TotalPrice + Session.CurrentWorkload.CurrentOrder.DeliveryPrice
			End Get
		#tag EndGetter
		Private TotalPrice As Currency
	#tag EndComputedProperty


#tag EndWindowCode

#tag Events tbCustomerName
	#tag Event
		Sub TextChanged()
		  Session.CurrentWorkload.CurrentOrder.CustomerName = me.Text
		  EnableOrderButton
		End Sub
	#tag EndEvent
	#tag Event
		Sub Shown()
		  If Session.CurrentWorkload.CurrentOrder <> Nil Then
		    Me.Text = Session.CurrentWorkload.CurrentOrder.CustomerName
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events tbCustomerStreet
	#tag Event
		Sub TextChanged()
		  Session.CurrentWorkload.CurrentOrder.CustomerStreet = Me.Text
		  EnableOrderButton
		End Sub
	#tag EndEvent
	#tag Event
		Sub Shown()
		  If Session.CurrentWorkload.CurrentOrder <> Nil Then
		    Me.Text = Session.CurrentWorkload.CurrentOrder.CustomerStreet
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events tbCustomerPostCode
	#tag Event
		Sub TextChanged()
		  Session.CurrentWorkload.CurrentOrder.CustomerPostCode = Me.Text
		  EnableOrderButton
		End Sub
	#tag EndEvent
	#tag Event
		Sub Shown()
		  If Session.CurrentWorkload.CurrentOrder <> Nil Then
		    Me.Text = Session.CurrentWorkload.CurrentOrder.CustomerPostCode
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events tbCustomerCity
	#tag Event
		Sub TextChanged()
		  Session.CurrentWorkload.CurrentOrder.CustomerCity = Me.Text
		  EnableOrderButton
		End Sub
	#tag EndEvent
	#tag Event
		Sub Shown()
		  If Session.CurrentWorkload.CurrentOrder <> Nil Then
		    Me.Text = Session.CurrentWorkload.CurrentOrder.CustomerCity
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events tbCustomerEmail
	#tag Event
		Sub TextChanged()
		  Session.CurrentWorkload.CurrentOrder.CustomerEmail = Me.Text
		  EnableOrderButton
		End Sub
	#tag EndEvent
	#tag Event
		Sub Shown()
		  If Session.CurrentWorkload.CurrentOrder <> Nil Then
		    Me.Text = Session.CurrentWorkload.CurrentOrder.CustomerEmail
		  End
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events tbCustomerPhone
	#tag Event
		Sub TextChanged()
		  Session.CurrentWorkload.CurrentOrder.CustomerPhone = Me.Text
		  EnableOrderButton
		End Sub
	#tag EndEvent
	#tag Event
		Sub Shown()
		  If Session.CurrentWorkload.CurrentOrder <> Nil Then
		    Me.Text = Session.CurrentWorkload.CurrentOrder.CustomerPhone
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events rbDeliveryOptions
	#tag Event
		Sub Opening()
		  Me.RemoveAllRows
		  
		  For Each key As String In Session.SvcAssets.DeliveryOptions.Keys
		    Var option As DeliveryOption = Session.SvcAssets.DeliveryOptions.Value(key)
		    Var rb As New  WebRadiobutton(option.Caption + " + €" + Str(option.NetPrice, "#0.00"), True)
		    rb.Tag = option
		    Me.Add(rb)
		  Next
		End Sub
	#tag EndEvent
	#tag Event
		Sub SelectionChanged(button As WebRadioButton)
		  Update
		End Sub
	#tag EndEvent
	#tag Event
		Sub Shown()
		  Me.SelectedIndex = 0
		  Update
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events tbMessage
	#tag Event
		Sub TextChanged()
		  Session.CurrentWorkload.CurrentOrder.CustomerMessage = Me.Text
		End Sub
	#tag EndEvent
	#tag Event
		Sub Shown()
		  If Session.CurrentWorkload.CurrentOrder <> Nil Then
		    Me.Text = Session.CurrentWorkload.CurrentOrder.CustomerMessage
		  end
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnOrderNow
	#tag Event
		Sub Pressed()
		  RaiseEvent OrderNowClicked
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events btnBack
	#tag Event
		Sub Pressed()
		  GoToURL("#cart")
		End Sub
	#tag EndEvent
#tag EndEvents
#tag ViewBehavior
	#tag ViewProperty
		Name="PanelIndex"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="_mPanelIndex"
		Visible=false
		Group="Behavior"
		InitialValue="-1"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="ControlCount"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Name"
		Visible=true
		Group="ID"
		InitialValue=""
		Type="String"
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
		Name="ControlID"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="String"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Enabled"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="LockBottom"
		Visible=true
		Group="Behavior"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="LockHorizontal"
		Visible=true
		Group="Behavior"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="LockLeft"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="LockRight"
		Visible=true
		Group="Behavior"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="LockTop"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="LockVertical"
		Visible=true
		Group="Behavior"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Visible"
		Visible=true
		Group="Behavior"
		InitialValue=""
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="_mDesignHeight"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="_mDesignWidth"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="_mName"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="String"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="ScrollDirection"
		Visible=true
		Group="Behavior"
		InitialValue="ScrollDirections.None"
		Type="WebContainer.ScrollDirections"
		EditorType="Enum"
		#tag EnumValues
			"0 - None"
			"1 - Horizontal"
			"2 - Vertical"
			"3 - Both"
		#tag EndEnumValues
	#tag EndViewProperty
	#tag ViewProperty
		Name="TabIndex"
		Visible=true
		Group="Visual Controls"
		InitialValue=""
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Indicator"
		Visible=false
		Group="Visual Controls"
		InitialValue=""
		Type="WebUIControl.Indicators"
		EditorType="Enum"
		#tag EnumValues
			"0 - Default"
			"1 - Primary"
			"2 - Secondary"
			"3 - Success"
			"4 - Danger"
			"5 - Warning"
			"6 - Info"
			"7 - Light"
			"8 - Dark"
			"9 - Link"
		#tag EndEnumValues
	#tag EndViewProperty
	#tag ViewProperty
		Name="LayoutType"
		Visible=true
		Group="View"
		InitialValue="LayoutTypes.Fixed"
		Type="LayoutTypes"
		EditorType="Enum"
		#tag EnumValues
			"0 - Fixed"
			"1 - Flex"
		#tag EndEnumValues
	#tag EndViewProperty
	#tag ViewProperty
		Name="LayoutDirection"
		Visible=true
		Group="View"
		InitialValue="LayoutDirections.LeftToRight"
		Type="LayoutDirections"
		EditorType="Enum"
		#tag EnumValues
			"0 - LeftToRight"
			"1 - RightToLeft"
			"2 - TopToBottom"
			"3 - BottomToTop"
		#tag EndEnumValues
	#tag EndViewProperty
	#tag ViewProperty
		Name="Width"
		Visible=false
		Group=""
		InitialValue="250"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Height"
		Visible=false
		Group=""
		InitialValue="250"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
#tag EndViewBehavior
