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
FIN}

{ALGORITHME: Jeu_de_loie
//BUT: Jouer au jeu de l'oie
//ENTREE:le joueur doit valider la séléction pour continuer
//SORTIE:la place du joueur

CONST
	départ 		<- 0 	:ENTIER
	arrivée		<- 66 	:ENTIER
	double 		<- 9	:ENTIER
	nondouble	<- 63	:ENTIER
	tetedemort	<- 58	:ENTIER

VAR
	dés ,place			:ENTIER

DEBUT
	
	dés 	<- 0 																									//INITIALISATION DES VARIABLES DES ET PLACES
	place 	<- 0
	ECRIRE "Bienvenue, bienvenue entrez dans l'auberge, a defaut d'Heartstone nous allons jouer au jeu de l'oie"
	ECRIRE "Vous commencez a la case depart avec votre nain... Euh votre oie (pardon l'habitude) :",place

	REPETER																											//ON FAIT UNE BOUCLE POUR QUE UNE ITERATION FASSE 1 TOUR
		ECRIRE "Appuyer sur la touche ENTRER pour lancer les des ... (ne les lancez pas trop fort je n'ai pas envie de les rechercher)"
		LIRE
		dés <- aléa(10)+2																							//ON DEMANDE UN CHIFFRE ALEATOIRE ENTRE 2 ET 12
		ECRIRE "Vous avez obtenu un ",dés
		place <-(places + dés)																						//ON AFFECTE LE NOMBRE DES DES A LA PLACE DU JOUEUR
		ECRIRE "Vous vous deplacez a la case ",place
		SI (place MOD double = 0) ET (place <> nondouble) ALORS 													//ON VERIFIE SI LA CASE EST UN MULTIPLE DE 9
			place <- place + dés 																					//ON DOUBLE LA VALEURS DU DEPLACEMENT
			ECRIRE " CASE FOIS 2"
			ECRIRE "Vous êtes tombé sur une case qui double votre jet de dés, vous allez a la case "place
		FINSI
		SI (place = tetedemort) ALORS 																				//SI LE JOUEUR TOMBE SUR CETTE CASE IL REVIENS AU DEPART
			place <- 0
			ECRIRE "TETE DE MORT"
			ECRIRE "Vous êtes tombé sur la TETE DE MORT vous retournez a la case départ"
		FINSI
		SI (place > fin) ALORS 
			place <- fin - (place - fin)
			ECRIRE "Vous avez dépasser la case 66 vous reculer donc de",place - fin,"cases"
	JUSQU'A (place = fin) 																							//FIN DE LA BOUCLE A LA CASE FIN

	ECRIRE "Vous êtes a la case FIN vous avez gagné ! Wouah !"

FIN}

PROGRAM jeu_de_loie;

USES crt;

CONST
	depart = 0;
	fin = 66;
	double = 9;
	nondouble = 63;
	tetedemort = 58;
	

VAR
	des,place 		:INTEGER;

BEGIN

	clrscr;

	des :=0;
	place :=0;
	writeln ('Bienvenue, bienvenue entrez dans l''auberge, a defaut d''Heartstone nous allons jouer au jeu de l''oie');
	writeln ('Vous commencez a la case depart avec votre nain... Euh votre oie (pardon l''habitude) :',place);

	REPEAT
		
		writeln('Appuyer sur la touche ENTRER pour lancer les des ... (ne les lancez pas trop fort je n''ai pas envie de les rechercher)');
		readln;
		randomize;
		des := RANDOM(10)+2;
		clrscr;
		writeln('Olala, vous avez obtenu un ',des);
		place := (place+des);
		writeln('Vous vous deplacez a la case ',place);
		writeln('Faite attention au murlocs en vous deplacant');
		
		IF (place MOD double = 0) AND (place <> nondouble) THEN
			BEGIN
			place := (place+des);
			writeln('! ! CASE FOIS 2 ! !');
			writeln('Bravo, vous etes tombe sur une case qui double votre jet de des, vous allez a la case ',place);
			END;
		IF (place = tetedemort) THEN
			BEGIN
			place := 0;
			writeln('! ! TETE DE MORT ! !');
			writeln('Mince alors, vous etes tombe sur la TETE DE MORT vous retournez a la case départ');
			END;
		IF (place > fin) THEN
			BEGIN
				
				writeln('Vous avez depasse la case 66 vous reculer donc de ',(place - fin),' cases');
				place := fin-(place-fin);
			END;

	UNTIL (place = fin);
	writeln('Vous etes a la case FIN vous avez gagne ! Wouah !');

	readln;
END.

