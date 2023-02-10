var $result : Object
$result:=Form:C1466.utilisateurAffiche.lock(dk reload if stamp changed:K85:15)
If ($result.success)
	/// Activer les champs
	/// Activer les boutons enreg et supp
Else 
	ALERT:C41("quelqu'un modifier deja cette enregistrement")
End if 