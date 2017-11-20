{ALGORITHME: Permutation_3_entier
//BUT: permuter 3 entier saisi par l'utilisateur
//ENTREES: 3 entiers
//SORTIE: Les 3 entiers permuté

VAR
	nb1, nb2, nb3, perm1, perm2	:ENTIER

DEBUT
	ECRIRE " veuillez saisir 3 entiers" //demande des 3 valeurs a saisir pa l'utilisateur 
	LIRE nb1, nb2, nb3 
	perm1 <- nb1
	perm2 <- nb2
	nb1 <- nb3
	nb2 <- perm1
	nb3 <- perm2
	ECRIRE "Vos entiers permuttés sont",nb1," ",nb2," ",nb3 // Resultat 
FIN}

{AGORITHME: Nombre_compris_entre_10_et_20
//BUT: demander a un utilisateur un entier compris entre 10 et 20 et verifier si le nombre est compris entre 10 et 20
//ENTREE: 1 entier
//SORTIE: si cet entier est compris entre 10 et 20 

VAR
	nb 		:ENTIER

DEBUT
	ECRIRE "Veuillez saisir un nombre entier entre 10 et 20"
	LIRE nb
	SI ((nb<=10) ET (nb>=20)) ALORS
		ECRIRE "Votre nombre est correct"
	SINON
		SI (nb>10) ALORS
			ECRIRE "Votre nombre est incorrect (inferieur a 10)"
		SINON
			SI (nb<20) ALORS
				ECRIRE "Votre nombre est incorrect (superieur a 20)"
			FINSI
		FINSI
	FINSI
FIN 

ALGORITHME: Jeu_de_loie
//BUT: Jouer au jeu de l'oie
//ENTREE:
//SORTIE:

CONST
	