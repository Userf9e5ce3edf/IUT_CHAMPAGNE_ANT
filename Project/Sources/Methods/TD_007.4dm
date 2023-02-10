//%attributes = {}
var $result : Text
var $curs_boutique; $curs_article; $idBoutique; $idArticle; $nbArticle : Integer
var $Prix_HT; Taux_TVA : Real
var $LibelleArticle : Text


// Pour commencer, on récupère les IDs de l'ensemble des BOUTIQUE
ARRAY LONGINT:C221($aIDs; 0)

Begin SQL
	
	SELECT ID FROM BOUTIQUE
	INTO :$aIDs;
	
End SQL

// Maintenant on boucle sur les boutique pour créer des articles
For ($curs_boutique; 1; Size of array:C274($aIDs))
	
	// On définit le nombre d'article à créer au hasard
	$nbArticle:=Random:C100%5  // 0, 1, 2, 3 ou 4
	For ($curs_article; 1; $nbArticle)
		
		// On définit l'article
		Case of 
			: ($curs_article=1)
				$LibelleArticle:="Sac"
				$Prix_HT:=20
				Taux_TVA:=20
			: ($curs_article=2)
				$LibelleArticle:="Bonbons"
				$Prix_HT:=2
				Taux_TVA:=5.5
			: ($curs_article=3)
				$LibelleArticle:="Chargeur"
				$Prix_HT:=30
				Taux_TVA:=20
			Else 
				$LibelleArticle:="Cigarettes"
				$Prix_HT:=15
				Taux_TVA:=20
		End case 
		
		$idBoutique:=$aIDs{$curs_boutique}
		
		Begin SQL
			
			INSERT INTO ARTICLE
			(Libelle, Prix_HT, Taux_TVA, ID_Boutique)
			VALUES
			(:$LibelleArticle, :$Prix_HT, :Taux_TVA, :$idBoutique);
			
		End SQL
		
		
	End for 
	
End for 

ALERT:C41("Done")