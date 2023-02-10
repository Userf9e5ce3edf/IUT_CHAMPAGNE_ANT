//%attributes = {"publishedWeb":true}
#DECLARE($in : Text)->$out : Text

var $result : Object
$result:=New object:C1471

var $arguments : Object
$arguments:=tool_getArguments

var $evenement_ID : Integer
var $util_ID : Integer

// check for :
// user actually entered a NUMBER and not a letter 
// if the number of days isnt bigger than the event itself and > 0 

$result.error_code:=0
$result.error_message:="Ok"

$util_ID:=web_context.utilisateur_connecte.ID
$evenement_ID:=$arguments.w_id

var $es_pariticipation : cs:C1710.PARTICIPATIONSelection
$es_pariticipation:=ds:C1482.PARTICIPATION.query("ID_Utilisateur === :1 and ID_Evenement === :2"; $util_ID; $evenement_ID)
If ($es_pariticipation.length=0)
	
	var $e_participation : cs:C1710.PARTICIPATIONEntity
	$e_participation:=ds:C1482.PARTICIPATION.new()
	$e_participation.Est_VIP:=False:C215
	$e_participation.ID_Evenement:=$evenement_ID
	$e_participation.ID_Utilisateur:=$util_ID
	$e_participation.Nbr_Jour:=1
	$e_participation.save()
Else 
	$result.error_code:=-1
	$result.error_message:="Utilisateur déjà inscrit à cette évènement"
End if 


var $txt_result : Text
$txt_result:=JSON Stringify:C1217($result)
WEB SEND TEXT:C677($txt_result; "application/json")