//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// Dialogue des fidèles de Tiamat ////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
BEGIN CKFidele

IF ~True()~ THEN BEGIN CKFid1
  SAY ~*Cette personne cache son visage sous un voile ne laissant qu'entrevoir sa mâchoire* Je n'ai pas de temps à vous accorder, mais n'y voyez rien de personnel.~
  IF ~~ THEN REPLY ~Que fais-tu ici?~ GOTO CKFid2
  IF ~~ THEN REPLY ~Qui es tu ?~ GOTO CKFid3
  IF ~~ THEN REPLY ~*S'éloigner*~ EXIT
END

IF ~~ THEN BEGIN CKFid2
  SAY ~Comme mes frères et soeurs, je viens consulter la prêtresse de la Reine de la Nuit, et lui apporter une offrande.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN CKFid3
  SAY ~Je ne suis personne.~
  IF ~~ THEN EXIT
END
