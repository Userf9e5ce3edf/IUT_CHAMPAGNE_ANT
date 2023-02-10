If (Form event code:C388=On Clicked:K2:4)
	SAVE RECORD:C53([EVENEMENT:10])
	READ ONLY:C145([EVENEMENT:10])
	LOAD RECORD:C52([EVENEMENT:10])
	
	ui_loadEvenements
	ui_displayEvenements
End if 
