//%attributes = {}
var $id : Integer
$id:=1

Begin SQL
	DELETE FROM EVENEMENT WHERE ID = :$id;
End SQL

ALERT:C41("Done")