//%attributes = {"publishedWeb":true}
#DECLARE($in : Text)->$out : Text

var $result : Object
$result:=New object:C1471

var $arguments : Object
$arguments:=tool_getArguments


$result.error_code:=-1
$result.error_message:="Veuillez renseigner tout les champs"

Case of 
	: (web_context.utilisateur_connecte=Null:C1517)
		$result.error_code:=-2
		$result.error_message:="vous devez etre connecté"
		
	: ($arguments.w_nom=Null:C1517)
	: ($arguments.w.prenom=Null:C1517)
	: ($arguments.w.email=Null:C1517)
		
	: ($arguments.w_nom="")
	: ($arguments.w.prenom="")
	: ($arguments.w.email="")
		
	Else 
		$result.error_code:=0
		$result.error_message:="Ok"
		
		web_context.utilisateur_connecte.Nom:=$arguments.w_nom
		web_context.utilisateur_connecte.Prenom:=$arguments.w_prenom
		web_context.utilisateur_connecte.EMail:=$arguments.w_email
		
		If ($arguments.w_password#Null:C1517)
			If ($arguments.w_password#"")
				web_context.utilisateur_connecte.Password_hash:=Generate digest:C1147($arguments.w_password; SHA256 digest:K66:4)
			End if 
		End if 
		
		
		web_context.utilisateur_connecte.save()
		
End case 

var $txt_result : Text
$txt_result:=JSON Stringify:C1217($result)
WEB SEND TEXT:C677($txt_result; "application/json")