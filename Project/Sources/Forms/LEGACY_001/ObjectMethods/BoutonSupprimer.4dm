CONFIRM:C162("voulez vous supprimer; Supprimer; Annuler;")
If (OK=1)
	DELETE RECORD:C58([EVENEMENT:10])
	
	ui_loadEvenements
	ui_displayEvenements
	
End if 
