//%attributes = {}
Begin SQL
	
	INSERT INTO EVENEMENT
	(Libelle, Date_Debut, Date_Fin)
	VALUES
	('Fest1', '2018-09-15', '2018-09-15');
	
	INSERT INTO EVENEMENT
	(Libelle, Date_Debut, Date_Fin)
	VALUES
	('Fest2', '2018-09-15', '2018-09-15');
	
	INSERT INTO EVENEMENT
	(Libelle, Date_Debut, Date_Fin)
	VALUES
	('Fest3', '2018-09-15', '2018-09-15');
	
End SQL

ALERT:C41("Fini")





var $curs_evenement; $nbreBoutique : Integer
var $curs_Boutique : Integer
var $nomBoutique : Text

ARRAY LONGINT:C221($aIDs; 0)

Begin SQL
	
	SELECT ID FROM EVENEMENT
	INTO :$aIDs;
	
End SQL

For ($curs_evenement; 1; Size of array:C274($aIDs))
	
	$nbreBoutique:=Random:C100%5  // 0 ... 4
	For ($curs_Boutique; 1; $nbreBoutique)
		
		Case of 
			: ($nbreBoutique=1)
				$nomBoutique:="Boutique1"
			: ($nbreBoutique=2)
				$nomBoutique:="Boutique2"
			: ($nbreBoutique=3)
				$nomBoutique:="Boutique3"
				
			Else 
				$nomBoutique:="Boutique4"
				
		End case 
		
		$idEvenement:=$aIDs{$curs_evenement}
		
		Begin SQL
			INSERT INTO BOUTIQUE
			(Nom, ID_Evenement)
			VALUES
			(:$nomBoutique, :$idEvenement);
		End SQL
		
	End for 
	
End for 

ALERT:C41("Done")