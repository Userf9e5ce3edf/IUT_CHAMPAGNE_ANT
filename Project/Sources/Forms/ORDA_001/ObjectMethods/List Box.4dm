Case of 
	: (Form event code:C388=On Load:K2:1)
		ui_loadUtilisateurs
		
	: (Form event code:C388=On Selection Change:K2:29)
		Form:C1466.utilisateurAffiche:=Form:C1466.utilisateurSelectionnee
	Else 
		
End case 
