/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// Dialogue du PNJ en prison ////////////////////////////////////////////////////////////////////////////////////////
/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
BEGIN CKFelici

// QUÊTE LANCÉE /////////////////////////////////////////////////////////////////////////////////////////////////////

IF ~Global("CKquete1","GLOBAL",2)~ THEN BEGIN CKQ1
  SAY ~*Une femme d'une trentaine d'annee vous regarde de travers. Ses vêtements semblent avoir souffert, tout comme sa peau marquée d'ecchymose.* Vous venez pou- C'est une drag- Vous êtes ici pour quoi?~
  IF ~~ THEN REPLY ~Nous sommes la pour te libérer~ GOTO CKQ2
  IF ~~ THEN REPLY ~Non, rien mauvaise cellule.~ GOTO CKQ2
END

IF ~~ THEN BEGIN CKQ2
  SAY ~*Souriant* Elle me l'a promis, la dragonne vous accompagne...~
  IF ~~ THEN REPLY ~Comment faire ?~ GOTO CKQ3
END

IF ~~ THEN BEGIN CKQ3
  SAY ~*La femme aborde un grand sourire.* Je connais pas mal de trucs... Mais j'ai les mains liées. Il faut que vous obteniez la clef d'un garde. Pour le reste, je suis une grande fille.~
  IF ~~ THEN REPLY ~Je vais te trouver ca.~ GOTO CKQ4
END

IF ~~ THEN BEGIN CKQ4
  SAY ~Je vous attend ici, je n'ai pas le choix après tout.~
  IF ~~ DO ~SetGlobal("CKquete1","GLOBAL",3)~  EXIT
END

IF ~Global("CKquete1","GLOBAL",3)!Partyhasitem("CKclef")~ THEN BEGIN CK5
  SAY ~Alors cette clef ?~
  IF ~~ THEN REPLY ~Je vais te trouver ca~ EXIT
END

IF ~Global("CKquete1","GLOBAL",3)Partyhasitem("CKclef")~ THEN BEGIN CKQ5fin
  SAY ~Alors cette clef ?~
  IF ~~ THEN REPLY ~La voici~ GOTO CKQ5fin2
  IF ~~ THEN REPLY ~Je vais te trouver ca~ EXIT
END

IF ~~ THEN BEGIN CKQ5fin2
  SAY ~Louée soit la Reine des dragons! Je peux m'en sortir seule maintenant, elle me guidera.~
  IF ~~ DO ~SetGlobal("CKquete1","GLOBAL",4) TakePartyItem("CKclef")~  EXIT
END

// AUCUNE QUÊTE LANCÉE /////////////////////////////////////////////////////////////////////////////////////////////////////

IF ~Global("CKquete1","GLOBAL",0)~ THEN BEGIN CKF1
  SAY ~*Une femme d'une trentaine d'annee vous regarde de travers. Ses vêtements semblent avoir souffert, tout comme sa peau marquée d'ecchymose.* Vous venez pour me pendre ? Vous êtes bien en avance...~
  IF ~~ THEN REPLY ~On ne fait que passer.~ GOTO CKF2
  IF ~~ THEN REPLY ~C'est exact.~ GOTO CKF3
  IF ~~ THEN REPLY ~Pourquoi vous ont-ils enfermée ?~ GOTO CKF4
END

IF ~~ THEN BEGIN CKF2
  SAY ~Vous avez de drôle de loisirs...~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN CKF3
  SAY ~*La femme vous crache au visage* C'est quand vous voulez.~
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN CKF4
  SAY ~*La femme aborde un sourire qui temoigne d'un passage a tabac dans les regles*
  Il m'ont chopé quand j'ai tenté de foutre le feu au Temple de Heaum. Hehehehehe.~
  IF ~~ THEN EXIT
END
