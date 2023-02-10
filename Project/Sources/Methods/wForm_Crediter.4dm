//%attributes = {"publishedWeb":true}
#DECLARE($in : Text)->$out : Text

var $result : Object
$result:=New object:C1471

var $arguments : Object
$arguments:=tool_getArguments

$result.error_code:=0
$result.error_message:="Ok"

web_context.utilisateur_connecte.Solde:=web_context.utilisateur_connecte.Solde+$arguments.w_montant

web_context.utilisateur_connecte.save()
var $txt_result : Text
$txt_result:=JSON Stringify:C1217($result)
WEB SEND TEXT:C677($txt_result; "application/json")
