//%attributes = {}
Begin SQL
	
	CREATE TABLE IF NOT EXISTS BOUTIQUE  (
	ID INT32 AUTO_INCREMENT PRIMARY KEY,
	Nom VARCHAR NOT NULL,
	ID_Evenement INT32,
	CONSTRAINT fk_EvementID FOREIGN KEY
	(ID_Evenement) REFERENCES EVENEMENT(ID)
	ON DELETE RESTRICT ON UPDATE RESTRICT 
	);
	
End SQL

ALERT:C41("Done")