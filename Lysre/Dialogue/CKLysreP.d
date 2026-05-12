//Reformation du groupe

BEGIN CKLysreP

// Rupture de contrat à cause du comportement du joueur. ///////////////////////////////////////////////////////////////////////////////////////////////////
IF ~Global("CKLysreKickedOut","GLOBAL",0) HappinessLT(Myself,-299)~ CKLysreVeryEvilKickedOut
SAY ~J'en ai assez de vous, de vos manières. Puissiez vous vous étouffer dans votre sommeil et finir au plus profond des enfers.~
IF ~~ DO ~EscapeArea()~ EXIT
END

//Rupture de contrat à cause de deux abandons //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
IF ~Global("CKLysreKickedOut","GLOBAL",2) HappinessLT(Myself,-299)~ CKLysreVeryEvilKickedOut2
SAY ~Je vous avais prévenu <CHARNAME> Je ne suis pas un chien vous suivant selon votre bon vouloir. Vous vendez de rompre notre contrat. J'en ai assez de vous, de vos manières. Puissiez vous vous étouffer dans votre sommeil et finir au plus profond des enfers.~
IF ~~ DO ~EscapeArea()~ EXIT
END

// Se débarrasser du NPC  ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
IF ~Global("CKLysreKickedOut","GLOBAL",0)~ CKLysreKickedOut1
SAY ~Un instant ? J'ai du mal comprendre, vous me demandez de partir?! Vous devez rester près de moi, vous vous en souvenez?~
++ ~Mais pas du tout Lysre. Reprenons notre route.~ DO ~JoinParty()~ EXIT
+ ~!AreaCheck("AR0603")
!AreaCheck("AR0410")
!AreaCheck("AR0411")
!AreaCheck("AR0412")
!AreaCheck("AR0413")
!AreaCheck("AR0414")
!AreaCheck("AR1512")
!AreaCheck("AR1513")
!AreaCheck("AR1514")
!AreaCheck("AR1515")
!AreaCheck("AR1516")
!AreaCheck("AR1501")
!AreaCheck("AR1502")
!AreaCheck("AR1503")
!AreaCheck("AR1504")
!AreaCheck("AR1505")
!AreaCheck("AR1506")
!AreaCheck("AR1507")
!AreaCheck("AR1508")
!AreaCheck("AR0710")~ + ~Nos routes doivent se séparer un moment, retrouvez moi à la promenade de Walkyne.~ DO ~SetGlobal("CKLysreKickedOut","GLOBAL",1) EscapeArea() MoveGlobal("AR710","CKLysre",[481.182])~ EXIT
+ ~!AreaCheck("AR0301")
!AreaCheck("AR0302")
!AreaCheck("AR0303")
!AreaCheck("AR0304")
!AreaCheck("AR0305")
!AreaCheck("AR0306")
!AreaCheck("AR0307")
!AreaCheck("AR0509")
!AreaCheck("AR0510")
!AreaCheck("AR0511")
!AreaCheck("AR1102")
!AreaCheck("AR1107")
!AreaCheck("AR0801")
!AreaCheck("AR0803")~ + ~Écoute, j'ai "besoin" que tu m'attendes ici un moment.~ DO ~SetGlobal("CKLysreKickedOut","GLOBAL",1)~ EXIT
END

// Revenir chercher Lysre  ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

IF ~Global("CKLysreKickedOut","GLOBAL",1)~ CKLysreMetAfterKickOut1
SAY ~Enfin vous revoilà, qu'attendiez vous pour venir me chercher ?~
++ ~J'ai eu un petit contretemps, reprenons notre chemin ensemble Lysre.~ + CKLysreMetAgain1
++ ~J'ai besoin d'encore un peu de temps. Desole.~ + CKLysreVeryEvilKickedOut3
END

IF ~~ CKLysreMetAgain1
SAY ~Bien, mais notez ceci <CHARNAME> c'est la seule et unique dernière fois que je tolère vos caprices, <CHARNAME>~
IF ~~ DO ~SetGlobal("CKLysreKickedOut","GLOBAL",2) JoinParty()~ EXIT
END

IF ~Global("CKLysreKickedOut","GLOBAL",2) HappinessLT(Myself,-299)~ CKLysreVeryEvilKickedOut3
SAY ~Je vous avais prévenu <CHARNAME> Je ne suis pas un chien vous suivant selon votre bon vouloir. Vous voulez rompre notre contrat ? ET BIEN D'ACCORD ! J'en ai assez de vous, de vos manières. Puissiez vous vous étouffer dans votre sommeil et finir au plus profond des enfers.~
IF ~~ DO ~EscapeArea()~ EXIT
END
