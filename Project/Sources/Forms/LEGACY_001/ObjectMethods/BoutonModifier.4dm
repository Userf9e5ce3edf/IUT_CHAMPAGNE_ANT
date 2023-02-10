READ WRITE:C146([EVENEMENT:10])
LOAD RECORD:C52([EVENEMENT:10])
If (Locked:C147([EVENEMENT:10]))
	ALERT:C41("Enregistrement déjà en cours d'édition par quelqu'un d'autre")
End if 
ui_displayEvenements
