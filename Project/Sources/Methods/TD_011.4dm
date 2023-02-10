//%attributes = {}
var $result : Text
var $i : Integer

ARRAY TEXT:C222($aLibelleArticle; 0)
ARRAY TEXT:C222($aNomBoutique; 0)

Begin SQL
	
	SELECT BOUTIQUE.Nom, ARTICLE.Libelle
	FROM ARTICLE
	FULL OUTER JOIN BOUTIQUE
	ON ARTICLE.ID_Boutique = BOUTIQUE.ID
	INTO :$aLibelleArticle, :$aNomBoutique;
	
End SQL

For ($i; 1; Size of array:C274($aLibelleArticle))
	$result+=$aLibelleArticle{$i}+" - "+$aNomBoutique{$i}+"\r"
End for 

ALERT:C41($result)