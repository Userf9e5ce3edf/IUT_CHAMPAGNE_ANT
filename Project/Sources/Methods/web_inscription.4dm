//%attributes = {"publishedWeb":true}
#DECLARE($in : Text)->$out : Text

var $arguments : Object
$arguments:=tool_getArguments

Case of 
	: ($arguments.w_nom=Null:C1517)
	: ($arguments.w.Prenom=Null:C1517)
	: ($arguments.w.email=Null:C1517)
	: ($arguments.w.password=Null:C1517)
		
	: ($arguments.w_nom="")
	: ($arguments.w.Prenom="")
	: ($arguments.w.email="")
	: ($arguments.w.password="")
	Else 
		
		var $es_utilisateurs : cs:C1710.UTILISATEURSelection
		$es_utilisateurs:=ds:C1482.UTILISATEUR.query("EMail === :1"; $arguments.w_email)
		If ($es_utilisateurs.length=0)
			var $e_utilisateurs : cs:C1710.UTILISATEUREntity
			$e_utilisateurs.Nom:=$arguments.w_nom
			$e_utilisateurs.Prenom:=$arguments.w_prenom
			$e_utilisateurs.EMail:=$arguments.w_email
			$e_utilisateurs.Password_hash:=Generate digest:C1147($arguments.w_password; SHA256 digest:K66:4)
			$e_utilisateurs.save()
			
		End if 
		
End case 


WEB SEND HTTP REDIRECT:C659("/home.shtml")