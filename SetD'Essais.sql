INSERT INTO CompteJoueur(Pseudo, mailCompte, mdpCompte) VALUES ('morray','bidon@bidon.com','yolo');
INSERT INTO CompteJoueur(Pseudo, mailCompte, mdpCompte) VALUES ('mouloud','mouloud@bidon.com','yolo');
INSERT INTO CompteJoueur(Pseudo, mailCompte, mdpCompte) VALUES ('moktar','moktar@bidon.com','yolo');
INSERT INTO CompteJoueur(Pseudo, mailCompte, mdpCompte) VALUES ('morice','morice@bidon.com','yolo');


INSERT INTO ModeDeJeu (id_ModeDeJeu,nomModeDeJeu,descriptionModeDeJeu) VALUES (0,'Classique','C''est un mode de jeu trop bien, essayez-le (et payez)');

INSERT INTO Matchs (id_ModeDeJeu,finMatch,Pseudo1,Pseudo2) VALUES (0,NULL,'mouloud','morice');
INSERT INTO Matchs (id_ModeDeJeu,finMatch,Pseudo1,Pseudo2) VALUES (0,NULL,'mouloud','morice');
INSERT INTO Matchs (id_ModeDeJeu,finMatch,Pseudo1,Pseudo2) VALUES (0,NULL,'moktar','morice');
INSERT INTO Matchs (id_ModeDeJeu,finMatch,Pseudo1,Pseudo2) VALUES (0,NULL,'morray','moktar');


INSERT INTO Carte (id_Carte,nomCarte,typeCarte,descriptionCarte,coutCarte) VALUES (0,'Dick Out For Harambe','Sort','Harambe est toujours dans nos coeurs. +25 mana',0);
INSERT INTO Carte (id_Carte,nomCarte,typeCarte,descriptionCarte,coutCarte) VALUES (1,'YasuoPogChamp','Combattant','2items100%ccNarmol',5);
INSERT INTO Carte (id_Carte,nomCarte,typeCarte,descriptionCarte,coutCarte) VALUES (2,'WhereIsMyTeam?','Sort','Vous n\'avez pas de team ? Pas de problème, on vous fournit ça',20);
INSERT INTO Carte (id_Carte,nomCarte,typeCarte,descriptionCarte,coutCarte) VALUES (3,'JféDéRouAriairDanLeQDeTaMer','Sort','VroumVroum',5);
INSERT INTO Carte (id_Carte,nomCarte,typeCarte,descriptionCarte,coutCarte) VALUES (4,'Victoire Dou Blazil','Sort','Vous invoquez Leonardo l\'interdit, qui invoque le carnaval Dou Blazil.',100);


INSERT INTO Deck () VALUES ('morray0');
INSERT INTO Deck () VALUES ('morray1');
INSERT INTO Deck () VALUES ('morray2');
INSERT INTO Deck () VALUES ('morray3');

INSERT INTO Deck () VALUES ('moktar0');
INSERT INTO Deck () VALUES ('moktar1');
INSERT INTO Deck () VALUES ('moktar2');
INSERT INTO Deck () VALUES ('moktar3');

INSERT INTO Pack (id_Pack,nomPack,descriptionPack,imageMiniaturePack) VALUES (0,'Pack 0','Le premier pack','/image/pack1.png');
INSERT INTO Pack (id_Pack,nomPack,descriptionPack,imageMiniaturePack) VALUES (1,'Pack 1','Le deuxième pack','/image/pack2.png');
INSERT INTO Pack (id_Pack,nomPack,descriptionPack,imageMiniaturePack) VALUES (2,'Pack 2','Le troisième pack','/image/pack3.png');

INSERT INTO Boost (id_Boost,typeBoost,imageMiniatureBoost,descriptionBoost) VALUES (0,'Boost0','Boost0','/image/boost1.png');
INSERT INTO Boost (id_Boost,typeBoost,imageMiniatureBoost,descriptionBoost) VALUES (1,'Boost1','Boost1','/image/boost2.png');

INSERT INTO Map (id_SkinMap,imageMiniatureMap,descriptionMap) VALUES (0,'/image/map1.png','Map0');

INSERT INTO SkinCartonCarte (id_SkinCartonCarte, descriptionCarton, imageMiniatureCarton) VALUES (0, 'Carton6','/image/carton1.png');

INSERT INTO Offre (id_Offre,prixMonnaieIG,prixMonnaieIRL,id_Pack) VALUES (0,1,2,0);
INSERT INTO Offre (id_Offre,prixMonnaieIG,prixMonnaieIRL,id_Pack) VALUES (1,2,3,1);
INSERT INTO Offre (id_Offre,prixMonnaieIG,prixMonnaieIRL,id_Pack) VALUES (2,3,4,2);

INSERT INTO Offre (id_Offre,prixMonnaieIG,prixMonnaieIRL) VALUES (3,10,1);
INSERT INTO Offre (id_Offre,prixMonnaieIG,prixMonnaieIRL) VALUES (4,11,2);
INSERT INTO Offre (id_Offre,prixMonnaieIG,prixMonnaieIRL) VALUES (5,12,3);
INSERT INTO Offre (id_Offre,prixMonnaieIG,prixMonnaieIRL) VALUES (6,13,4);

INSERT INTO OffreBoost (id_Offre,id_Boost) VALUES (3,0);
INSERT INTO OffreBoost (id_Offre,id_Boost) VALUES (4,1);
INSERT INTO OffreMap (id_Offre,id_SkinMap) VALUES (5,0);
INSERT INTO OffreCartonCarte (id_Offre,id_SkinCartonCarte) VALUES (6,0);
