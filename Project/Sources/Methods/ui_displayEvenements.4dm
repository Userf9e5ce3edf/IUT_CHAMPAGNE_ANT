//%attributes = {}
var $writeEnabled : Boolean

$writeEnabled:=Not:C34(Locked:C147([EVENEMENT:10])) & Is record loaded:C669([EVENEMENT:10])
OBJECT SET ENTERABLE:C238([EVENEMENT:10]Libelle:2; $writeEnabled)
OBJECT SET ENTERABLE:C238([EVENEMENT:10]Date_Debut:3; $writeEnabled)
OBJECT SET ENTERABLE:C238([EVENEMENT:10]Date_Fin:4; $writeEnabled)

OBJECT SET ENABLED:C1123(*; "BoutonSupprimer"; $writeEnabled)
OBJECT SET ENABLED:C1123(*; "BoutonEnregistrer"; $writeEnabled)
