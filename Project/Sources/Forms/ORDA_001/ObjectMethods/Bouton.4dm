var $utilisateur : cs:C1710.UTILISATEUREntity
$utilisateur:=ds:C1482.UTILISATEUR.new()
$utilisateur.Nom:="1.nom"
$utilisateur.Prenom:="1.prenom"
$utilisateur.EMail:="1.mail"
$utilisateur.Solde:=50
$utilisateur.Password_hash:="blablabla"
$utilisateur.save()

$utilisateur:=ds:C1482.UTILISATEUR.new()
$utilisateur.Nom:="2.nom"
$utilisateur.Prenom:="2.prenom"
$utilisateur.EMail:="2.email"
$utilisateur.Solde:=250
$utilisateur.Password_hash:="blablabla"
$utilisateur.save()

//Form.utilisateurs:=ds.UTILISATEUR.all().orderBy("nom")