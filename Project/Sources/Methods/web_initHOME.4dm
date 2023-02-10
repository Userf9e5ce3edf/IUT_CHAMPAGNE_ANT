//%attributes = {"publishedWeb":true}
#DECLARE($in : Text)->$out : Text
// Assure le fonctionnement même en compilé

ALL RECORDS:C47([EVENEMENT:10])
ORDER BY:C49([EVENEMENT:10]; [EVENEMENT:10]Date_Debut:3; >)

