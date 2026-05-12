// Événement liés aux objets/ Interjections / Dialogues provoqués par le joueur
BEGIN CKLysreJ
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//Lancer la quête ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
IF ~Global("CKquete1","GLOBAL",1)~ THEN BEGIN CKlancerquete1
SAY ~Oh, <CHARNAME>. Accordez-moi un peu de temps voulez vous? Voyez, j'ai bien réfléchi pendant que vous mortels vous exposiez à la faiblesse de l'étreinte de Morphée. Cet endroit où nous avons massacré des païens... l'antre de l'oeil... C'est un endroit délicieux... plein des marques d'un récent massacre. A proximité d'une source de vivres intéressant, et ce curieux village plein de chair en putréfaction. C'est un endroit idéal pour y bâtir un temple en mon honneur, et en l'honneur de la mère des dragons Tiamat. Je vous invite donc à m'aider dans cette glorieuse tâche que de transformer un coin putride en adorable petit nid.~
++ ~D'accord, comment compte tu t'y prendre?~ + CKquete1.1
++ ~Certainement pas~ + CKquete1refus
END

IF ~Global("CKquete1","GLOBAL",1)~ THEN BEGIN CKquete1.1
SAY ~Pour commencer, il nous faut une prêtresse. Les bipèdes sont une base influençable et servile. Et puis, je ne veux pas d'un faible. Une prêtresse solide, c'est la fondation même d'un temple, plus que ses murs. Tiamat m'a indiqué une bipède de choix... Une humaine, actuellement en train de croupir dans les geôles de cette ville. Il faut qu'elle soit libérée.~
IF ~~ DO ~SetGlobal("CKquete1","GLOBAL",2)~  EXIT
END

IF ~Global("CKquete1","GLOBAL",1)~ THEN BEGIN CKquete1refus
SAY ~Bipède stupide... Un jour Tiamat déchirer votre âme ingrate et mesquine de ses crocs.~
IF ~~ DO ~SetGlobal("CKquete1","GLOBAL",2)~  EXIT
END

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//Manger des objets MO////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

//Manger dragon/////////////////////////////////////////////////////////
//Ecaille rouge   AR1203
IF ~Global("CKecailleR","GLOBAL",1)!PartyHasItem("Ecaille2")~ THEN BEGIN CKMangerledragonrouge
 SAY ~Ainsi s'achève l'existence d'un congénère. Comme j'en suis attristée... Mais dites moi, <CHARNAME> bien que je vois déjà briller la convoitise dans vos yeux d'être inférieur, j'avoue désirer cette dépouille encore chaude autant que vous. Laissez moi, je vous prie, dévorer ce dragon. Idéalement, j'aurais aimé qu'il pourrisse, mais votre vie est trop limitée pour en faire un met de choix. Il n'en restera plus grand chose, sa chair, son sang, ses os, ses entrailles. Tout ira a Tiamat.~
++ ~D'accord, mais fait vite~ DO ~SetGlobal("CKecailleR","GLOBAL",2) TakePartyItem("SCALER") DestroyItem("SCALER") TakeItemReplace("Ecaille2","Ecaille1","CKLysre")~ + PriereTiamatRepas
++ ~Certainement pas~ DO ~SetGlobal("CKecailleR","GLOBAL",3) ~ + CKMOERnon
END
IF ~Global("CKecailleR","GLOBAL",1)PartyHasItem("Ecaille2")~ THEN BEGIN CKMangerledragonrouge
 SAY ~Ainsi s'achève l'existence d'un congénère. Comme j'en suis attristée... Mais dites moi, <CHARNAME> bien que je vois déjà briller la convoitise dans vos yeux d'être inférieur, j'avoue désirer cette dépouille encore chaude autant que vous. Laissez moi, je vous prie, dévorer ce dragon. Idéalement, j'aurais aimé qu'il pourrisse, mais votre vie est trop limitée pour en faire un met de choix. Il n'en restera plus grand chose, sa chair, son sang, ses os, ses entrailles. Tout ira a Tiamat.~
++ ~D'accord, mais fait vite~ DO ~SetGlobal("CKecailleR","GLOBAL",2) TakePartyItem("SCALER") DestroyItem("SCALER") TakeItemReplace("Ecaille3","Ecaille2","CKLysre")~ + PriereTiamatRepas
++ ~Certainement pas~ DO ~SetGlobal("CKecailleR","GLOBAL",3) ~ + CKMOERnon
END

//Ecaille rouge  AR3018
IF ~Global("CKecailleR2","GLOBAL",1)!PartyHasItem("Ecaille2")~ THEN BEGIN CKMangerledragonrouge
 SAY ~Ainsi s'achève l'existence d'un congénère. Comme j'en suis attristée... Mais dites moi, <CHARNAME> bien que je vois déjà briller la convoitise dans vos yeux d'être inférieur, j'avoue désirer cette dépouille encore chaude autant que vous. Laissez moi, je vous prie, dévorer ce dragon. Idéalement, j'aurais aimé qu'il pourrisse, mais votre vie est trop limitée pour en faire un met de choix. Il n'en restera plus grand chose, sa chair, son sang, ses os, ses entrailles. Tout ira a Tiamat.~
++ ~D'accord, mais fait vite~ DO ~SetGlobal("CKecailleR2","GLOBAL",2) TakePartyItem("SCALER") DestroyItem("SCALER") TakeItemReplace("Ecaille2","Ecaille1","CKLysre")~ + PriereTiamatRepas
++ ~Certainement pas~ DO ~SetGlobal("CKecailleR2","GLOBAL",3) ~ + CKMOERnon
END

IF ~Global("CKecailleR2","GLOBAL",1)PartyHasItem("Ecaille2")~ THEN BEGIN CKMangerledragonrouge
 SAY ~Ainsi s'achève l'existence d'un congénère. Comme j'en suis attristée... Mais dites moi, <CHARNAME> bien que je vois déjà briller la convoitise dans vos yeux d'être inférieur, j'avoue désirer cette dépouille encore chaude autant que vous. Laissez moi, je vous prie, dévorer ce dragon. Idéalement, j'aurais aimé qu'il pourrisse, mais votre vie est trop limitée pour en faire un met de choix. Il n'en restera plus grand chose, sa chair, son sang, ses os, ses entrailles. Tout ira a Tiamat.~
++ ~D'accord, mais fait vite~ DO ~SetGlobal("CKecailleR2","GLOBAL",2) TakePartyItem("SCALER") DestroyItem("SCALER") TakeItemReplace("Ecaille3","Ecaille2","CKLysre")~ + PriereTiamatRepas
++ ~Certainement pas~ DO ~SetGlobal("CKecailleR2","GLOBAL",3) ~ + CKMOERnon
END

//Ecaille Ombre    AR1402
IF ~Global("CKecailleN","GLOBAL",1)~ THEN BEGIN CKMangerledragonnoir
 SAY ~Ha... voilà une creature stupide affiliee au mauvais maitre qui trepasse. Notez qu'il n'a pas le mérite d'être issu de la noble et splendide lignée de notre Mère. Je dois avouer que je suis curieuse du goût de sa chair... Quel goût a l'ombre... <CHARNAME>, laissez moi le manger je vous prie, pour l'expérience Il n'en restera plus grand chose, sa chair, son sang, ses os, ses entrailles. Tout ira a Tiamat.~
++ ~D'accord, mais fait vite~ DO ~SetGlobal("CKecailleN","GLOBAL",2) TakePartyItem("SCALEB") DestroyItem("SCALEB") AddSpecialAbility("spsd02") AddSpecialAbility("spsd02") AddSpecialAbility("spsd02") TakeItemReplace("Patte2","Patte1","CKLysre")~ + PriereTiamatRepas
++ ~Certainement pas~ DO ~SetGlobal("CKecailleN","GLOBAL",3) ~ + CKMOERnon
END
//Ecaille Noire (Irenicus)   AR2807
IF ~Global("CKecailleN2","GLOBAL",1)~ THEN BEGIN CKMangerledragonnoir
 SAY ~Un dragon, issu de la plus noble des lignées qui s'abaisse à négocier ses services à un humain. Il méritait de trouver la mort ici, comme un vulgaire paysan. Laissez moi au moins lui rendre honneur, en en faisant mon repas <CHARNAME> qu'est ce que ce corps inerte pour vous? Laissez moi, je vous prie, dévorer ce dragon. Idéalement, j'aurais aimé qu'il pourrisse, mais votre vie est trop limitée pour en faire un met de choix. Il n'en restera plus grand chose, sa chair, son sang, ses os, ses entrailles. Tout ira a Tiamat.~
++ ~D'accord, mais fait vite~ DO ~SetGlobal("CKecailleN","GLOBAL",2) TakePartyItem("SCALEB") DestroyItem("SCALEB") TakeItemReplace("Griffe2","Griffe1","CKLysre")~ + PriereTiamatRepas
++ ~Certainement pas~ DO ~SetGlobal("CKecailleN","GLOBAL",3) ~ + CKMOERnon
END

//Sang dragon argenté
IF ~!PartyHasItem("LEAT22") Global("CKsangDB","GLOBAL",1)~ THEN BEGIN CKMangerledragonblanc
 SAY ~L'idée de manger une des filles de Bahamut me répugne quelque peu... mais je doute que Tiamat pardonne cette hésitation au moment de montrer qui sont les Véritables Dragons. <CHARNAME>? Laissez moi dévorer ce dragon je vous prie.~
++ ~D'accord, mais fait vite~ DO ~SetGlobal("CKsangDB","GLOBAL",2) TakePartyItem("MISC8H") DestroyItem("MISC8H")AddSpecialAbility("CKsoin") ~ + PriereTiamatRepas
++ ~Certainement pas~ DO ~SetGlobal("CKsangDB","GLOBAL",3) ~ + CKMOERnon
END

IF ~PartyHasItem("LEAT22") Global("CKsangDB","GLOBAL",1)~ THEN BEGIN CKMangerledragonblanc2
 SAY ~L'idée de manger une des filles de Bahamut me répugne quelque peu... mais je doute que Tiamat pardonne cette hésitation au moment de montrer qui sont les Véritables Dragons. <CHARNAME>? Laissez moi dévorer ce dragon je vous prie.~
~~ ++ ~D'accord, mais fait vite~ DO ~SetGlobal("CKsangDB","GLOBAL",2) TakePartyItem("MISC8H") DestroyItem("MISC8H")AddSpecialAbility("CKsoin") ~ + CKMangerledragonblanc3
++ ~Certainement pas~ DO ~SetGlobal("CKsangDB","GLOBAL",3) ~ + CKMOERnon
END

IF ~~ THEN BEGIN CKMangerledragonblanc3
 SAY ~Oh, j'ai une inspiration, vous vous souvenez de cet amalgame inutile de peaux humaines? Donnez les moi, j'ai une inspiration.~
++ ~Euh. D'accord?~ DO ~TakePartyItem("LEAT22") TakeItemReplace("CKIoniqu","LEAT22","CKLysre")~ + CKMangerledragonblanc4
++ ~Certainement pas~ DO ~SetGlobal("CKsangDB","GLOBAL",3) ~ + PriereTiamatRepas
END

IF ~~ THEN BEGIN CKMangerledragonblanc4
 SAY ~*Avant son carnage, Lysre avale la peau, puis s'abreuve du sang encore poisseux de la Dragonne Blanche. Avec une lenteur exagérée, Lysre mastique un moment son curieux repas, avant de le vomir bruyamment sur le sol de la caverne. Au milieu d'une masse poisseuse, fumante et nauséabonde se trouve une petite... masse de chair rigidifiée, à peine plus grosse qu'un pouce.* Voilà pour vous, maintenant...~
IF ~~ DO ~SetGlobal("CKsangDB","GLOBAL",3) ~ + PriereTiamatRepas
END

//Ecailles dragon blanc
IF ~Global("CKecailleDBl","GLOBAL",1)~ THEN BEGIN CKMangerledragonblanc
 SAY ~Voilà les restes d'un congénère... Je ne suis pas surprise, les Blancs sont les plus faibles de la portée... Donc ils sont plus susceptibles de se faire avoir par une espèce inférieure. Ils ne brillent pas par leur intelligence vous savez? Je peux manger ces écailles <CHARNAME>?~
++ ~D'accord, mais fait vite~ DO ~SetGlobal("CKecailleDBl","GLOBAL",2) TakePartyItem("MISC8H") DestroyItem("MISC8H")TakeItemReplace("Ecaillb2","Ecaillb1","CKLysre")~ + PriereTiamatRepas
++ ~Certainement pas~ DO ~SetGlobal("CKecailleDBl","GLOBAL",3) ~ + CKMOERnon
END

//Ecaille dragon bleu.
IF ~Global("CKecailleB","GLOBAL",1)~ THEN BEGIN CKMangerledragonblanc
 SAY ~Oui... oui. OUI ! TU ES CREVÉ ! HAHAHAHAHAHAHAHA ! ENFIN ! Enfin... Aaaaah, la douce sensation de la vengeance... Louée soyez vous, reine des dragons, pour m'avoir offert ce jour. Vous me l'aviez promis, et aujourd'hui, sa dépouille est sur le sol. Prenez son âme, oh Tiamat.~
++ ~Silence Lysre, ce corps est à moi !~ DO ~SetGlobal("CKecailleB","GLOBAL",2) TakePartyItem("COMPON19") DestroyItem("COMPON19")~ + Lepacteestla
++ ~*Ne rien dire*~ DO ~SetGlobal("CKecailleb","GLOBAL",3) TakePartyItem("COMPON19") DestroyItem("COMPON19")TakeItemReplace("Ecaillc2","Ecaillc1","CKLysre") ~ + PriereTiamatRepas
END

IF ~Global("CKecailleB","GLOBAL",2)~ THEN BEGIN Lepacteestla
 SAY ~*Lysre produit un rire strident et moqueur, avant de vous fixer* C'est notre contrat qui m'amène à cet instant. J'ai fait ma part, vous ne pouvez m'empêcher de dévorer ce faible qui m'a engendrée. Assis, et regarde <CHARNAME>~
++ ~*Le contrat établi avec Lysre vous contraint d'obéir*~ DO ~TakeItemReplace("Ecaillc2","Ecaillc1","CKLysre") ~ +PriereTiamatRepas
END

//Refus/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
IF ~~ THEN BEGIN CKMOERnon
 SAY ~Vous êtes bien mesquin <CHARNAME>. Ça vous perdra.~
 IF ~~ DO ~~  EXIT
END
//Prière/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
IF ~~ THEN BEGIN PriereTiamatRepas
 SAY ~Louée soyez vous, oh révérée Tiamat. Ô, grande Reine des Dragons. Permettez à votre disciple de poursuivre sur votre voie, appréciez cette offrande en votre nom, en votre honneur. Soyez respectée, soyez crainte vous qui règnerez un jour sur les plans.~
IF ~~  +PriereTiamatRepas2
END

IF ~~ THEN BEGIN PriereTiamatRepas2
 SAY ~*La lumière oscille, et sans plus attendre, Lysre se jette sur la dépouille pour y plonger ses crocs. Le spectacle est aussi fascinant que répugnant. Rapidement, l'air se sature de la chair pourrissant rapidement tandis que la carcasse se décompose rapidement. Au milieu du charnier, Lysre cible quelques pièces de choix, ne laissant qu'un corps souillé de brûlures d'acides dans son passage*~
IF ~~  +PriereTiamatRepas3
END

IF ~~ THEN BEGIN PriereTiamatRepas3
 SAY ~Cette sensation est fabuleuse... Reprenons notre route <CHARNAME>. Sauf si ces restes vous intéressent?~
IF ~~ DO ~~  EXIT
END

//Manger démon/////////////////////////////////////////////////////////
//Coeur du plan des enfers
IF ~Global("CKdemonC","GLOBAL",1)~ THEN BEGIN CKMangerlecoeur
 SAY ~Mmmrr... Un coeur palpitant... Il fait écho aux miens... Oh...<CHARNAME>? Laissez-moi dévorer ce coeur je vous prie. Qu'est ce que ça peut vous coûter d'en chercher un autre pour la sphère ?~
++ ~D'accord, mais fait vite~ DO ~SetGlobal("CKdemonC","GLOBAL",2) TakePartyItem("MISC6M") DestroyItem("MISC6M") TakeItemReplace("Coeur2","Coeur1","CKLysre")~ + PriereTiamatRepas
++ ~Certainement pas~ DO ~SetGlobal("CKdemonC","GLOBAL",3) ~ + CKMOERnon
END

//Prière/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
IF ~~ THEN BEGIN PriereTiamatRepasD
 SAY ~Louée soyez vous, oh révérée Tiamat. Ô, grande Reine des Dragons. Permettez à votre disciple de poursuivre sur votre voie, appréciez cette offrande en votre nom, en votre honneur. Soyez respectée, soyez crainte vous qui règnerez un jour sur les plans.~
IF ~~  +PriereTiamatRepasD2
END

IF ~~ THEN BEGIN PriereTiamatRepasD2
 SAY ~*Lysre plonge son museau dans la cage thoracique du démon, elle en sort le coeur encore palpitant du démon. Elle produit une sorte de ronronnement de plaisir, alors que le coeur s'enfonce lentement dans sa gorge. Etrangement, le coeur disproportionné glisse sans le moindre souci dans la minuscule dragonne.*~
IF ~~  +PriereTiamatRepasD3
END

IF ~~ THEN BEGIN PriereTiamatRepasD3
 SAY ~Il n'y a pas de mots pour décrire cette sensation fabuleuse... Elle m'évoque mon séjour ici... Reprenons notre route <CHARNAME>. Sauf si ces restes vous intéressent ?~
IF ~~ DO ~~  EXIT
END

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//Interjections /////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

//LIEUX////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//PLAN INFERNAL
IF ~InParty("CKLysre")
See("CKLysre")
!StateCheck("CKLysre",CD_STATE_NOTVALID)
AreaCheck("AR0414")~ CKenenfer
SAY ~Mmm... Cette odeur... Cette tension. Nous ne sommes pas dans le domaine de notre Reine, mais il y a ce doux parfum de danger ici... C'est un lieu charmant où chaque journée n'est que combat pour survivre. Le plan matériel est si paisible en comparaison.~
++ ~Tu as déjà voyager dans les plans infernaux Lysre?~  + CKenenfer2
++ ~Mais oui, mais oui...~  EXIT
++ ~*L'ignorer*~ EXIT
END

IF ~InParty("CKLysre")
See("CKLysre")
!StateCheck("CKLysre",CD_STATE_NOTVALID)
AreaCheck("AR0414")~ CKenenfer2
SAY ~Oui... Mais je n'ai pas l'envie de m'étendre des heures sur mes prouesses en ces lieux, il me faudrait des bardes pour que je perde le temps a être nostalgique. Si nous chassions un démon ou deux plutôt que de s'étendre sur moi?~
IF ~~ DO ~~  EXIT
END

//NPC//////////////////////////////////////////////////////////////////////////////////////////////////////////////////

// Planar Sphere

I_C_T LAVOK 13 CKLysreLavok1
== CKLysreJ IF ~InParty("CKLysre") InMyArea("CKLysre") !StateCheck("CKLysre",CD_STATE_NOTVALID)~ THEN @0
END

I_C_T LAVOK 46 CKLysreLavok2
== CKLysreJ IF ~InParty("CKLysre") InMyArea("CKLysre") !StateCheck("CKLysre",CD_STATE_NOTVALID)~ THEN @0
END

// Firkraag

I_C_T FIRKRA02 7 CKLysreKilledFirkraag
== CKLysreJ IF ~InParty("CKLysre") InMyArea("CKLysre") !StateCheck("CKLysre",CD_STATE_NOTVALID)~ THEN @2
END

I_C_T VAELASA 7 CKLysreDryadsSaved1
== CKLysreJ IF ~InParty("CKLysre") InMyArea("CKLysre") !StateCheck("CKLysre",CD_STATE_NOTVALID)~ THEN @4
END

// Umar Hills

I_C_T MAZZY 4 CKLysreJustMetMazzy1
== CKLysreJ IF ~InParty("CKLysre") InMyArea("CKLysre") !StateCheck("CKLysre",CD_STATE_NOTVALID)~ THEN @5
END

I_C_T UHMAY01 132 CKLysreUmarMayor1
== CKLysreJ IF ~InParty("CKLysre") InMyArea("CKLysre") !StateCheck("CKLysre",CD_STATE_NOTVALID)~ THEN @6
END

//L'oeil aveugle

I_C_T BORINALL 7 CKLysreDawnRing1
== CKLysreJ IF ~InParty("CKLysre") InMyArea("CKLysre") !StateCheck("CKLysre",CD_STATE_NOTVALID)~ THEN @12
END

I_C_T THESHAL 5 CKLysreUndeadCity1
== CKLysreJ IF ~InParty("CKLysre") InMyArea("CKLysre") !StateCheck("CKLysre",CD_STATE_NOTVALID)~ THEN @13
END


// Slavers' Quest

I_C_T HENDAK 31 CKLysreHendakRules1
== CKLysreJ IF ~InParty("CKLysre") InMyArea("CKLysre") !StateCheck("CKLysre",CD_STATE_NOTVALID)~ THEN @18
END

// Bridge misc

I_C_T2 HLSHANG 0 CKLysreShangalar1
== CKLysreJ IF ~InParty("CKLysre") InMyArea("CKLysre") !StateCheck("CKLysre",CD_STATE_NOTVALID)~ THEN @19
END

I_C_T2 NEB 5 CKLysreNeb1
== CKLysreJ IF ~InParty("CKLysre") InMyArea("CKLysre") !StateCheck("CKLysre",CD_STATE_NOTVALID)~ THEN @20
END

// Plot points

//I_C_T C6CORAN 6 CKLysreCoran1
//== CKLysreJ IF ~InParty("CKLysre") InMyArea("CKLysre") !StateCheck("CKLysre",CD_STATE_NOTVALID)~ THEN @21
//== C6CORAN IF ~InParty("CKLysre") InMyArea("CKLysre") !StateCheck("CKLysre",CD_STATE_NOTVALID)~ THEN @22
//END

I_C_T C6REGIS1 2 CKLysreMetDrizzt6
== CKLysreJ IF ~InParty("CKLysre") InMyArea("CKLysre") !StateCheck("CKLysre",CD_STATE_NOTVALID)~ THEN @23
END

//I_C_T C6HARP 1 CKLysreDrizztGear1
//== CKLysreJ IF ~InParty("CKLysre") InMyArea("CKLysre") !StateCheck("CKLysre",CD_STATE_NOTVALID)~ THEN @25
//END

I_C_T HELLJON 7 CKLysreThirdBattleWithIrenicus1
== CKLysreJ IF ~InParty("CKLysre") InMyArea("CKLysre") !StateCheck("CKLysre",CD_STATE_NOTVALID)~ THEN @26
END

I_C_T HELLJON 8 CKLysreThirdBattleWithIrenicus1
== CKLysreJ IF ~InParty("CKLysre") InMyArea("CKLysre") !StateCheck("CKLysre",CD_STATE_NOTVALID)~ THEN @26
END

I_C_T HELLJON 9 CKLysreThirdBattleWithIrenicus1
== CKLysreJ IF ~InParty("CKLysre") InMyArea("CKLysre") !StateCheck("CKLysre",CD_STATE_NOTVALID)~ THEN @26
END

I_C_T HELLJON 10 CKLysreThirdBattleWithIrenicus1
== CKLysreJ IF ~InParty("CKLysre") InMyArea("CKLysre") !StateCheck("CKLysre",CD_STATE_NOTVALID)~ THEN @26
END

//I_C_T JARLAXLE 16 CKLysreJarlaxe1
//== CKLysreJ IF ~InParty("CKLysre") InMyArea("CKLysre") !StateCheck("CKLysre",CD_STATE_NOTVALID)~ THEN @27
//== JARLAXLE IF ~InParty("CKLysre") InMyArea("CKLysre") !StateCheck("CKLysre",CD_STATE_NOTVALID)~ THEN @28
//END

I_C_T KRUIN 9 CKLysreReturnSilverBlade1
== CKLysreJ IF ~InParty("CKLysre") InMyArea("CKLysre") !StateCheck("CKLysre",CD_STATE_NOTVALID)~ THEN @29
END

I_C_T PLAYER1 25 CKLysreEnteringHell1
== CKLysreJ IF ~InParty("CKLysre") InMyArea("CKLysre") !StateCheck("CKLysre",CD_STATE_NOTVALID)~ THEN @30
== CKLysreJ IF ~InParty("CKLysre") InMyArea("CKLysre") !StateCheck("CKLysre",CD_STATE_NOTVALID)~ THEN @31
== CKLysreJ IF ~InParty("CKLysre") InMyArea("CKLysre") !StateCheck("CKLysre",CD_STATE_NOTVALID)~ THEN @32
END

I_C_T PPSAEM2 19 CKLysreSaemonOfferShip1
== CKLysreJ IF ~InParty("CKLysre") InMyArea("CKLysre") !StateCheck("CKLysre",CD_STATE_NOTVALID)~ THEN @33
END

I_C_T SAHCPT02 4 CKLysrePriestessCaptain1
== CKLysreJ IF ~InParty("CKLysre") InMyArea("CKLysre") !StateCheck("CKLysre",CD_STATE_NOTVALID)~ THEN @34
== SAHPR1 IF ~InParty("CKLysre") InMyArea("CKLysre") !StateCheck("CKLysre",CD_STATE_NOTVALID)~ THEN @35
== CKLysreJ IF ~InParty("CKLysre") InMyArea("CKLysre") !StateCheck("CKLysre",CD_STATE_NOTVALID)~ THEN @27
END

I_C_T SAHIMP01 2 CKLysreImpsGame1
== CKLysreJ IF ~InParty("CKLysre") InMyArea("CKLysre") !StateCheck("CKLysre",CD_STATE_NOTVALID)~ THEN @36
END

I_C_T SAHPR1 58 CKLysrePriestessSekolah3
== CKLysreJ IF ~InParty("CKLysre") InMyArea("CKLysre") !StateCheck("CKLysre",CD_STATE_NOTVALID)~ THEN @37
END

I_C_T SAHPR2 7 CKLysreSahuaginPrince3
== CKLysreJ IF ~InParty("CKLysre") InMyArea("CKLysre") !StateCheck("CKLysre",CD_STATE_NOTVALID)~ THEN @38
END

//I_C_T SUAVATAR 5 CKLysreRillifaneAvatarIrenicusMad1
//== CKLysreJ IF ~InParty("CKLysre") InMyArea("CKLysre") !StateCheck("CKLysre",CD_STATE_NOTVALID)~ THEN @39
//END

I_C_T UDDROW16 1 CKLysreUnDuellingMaster1
== CKLysreJ IF ~InParty("CKLysre") InMyArea("CKLysre") !StateCheck("CKLysre",CD_STATE_NOTVALID)~ THEN @40
END

I_C_T UDDROW26 0 CKLysreExplodingSlave1
== CKLysreJ IF ~InParty("CKLysre") InMyArea("CKLysre") !StateCheck("CKLysre",CD_STATE_NOTVALID)~ THEN @41
END

//I_C_T UDOGRE 3 CKLysreUnOgre1
//== CKLysreJ IF ~InParty("CKLysre") InMyArea("CKLysre") !StateCheck("CKLysre",CD_STATE_NOTVALID)~ THEN @42
//END

I_C_T UDSILVER 35 CKLysreTurnedToDrow1
== CKLysreJ IF ~InParty("CKLysre") InMyArea("CKLysre") !StateCheck("CKLysre",CD_STATE_NOTVALID)~ THEN @43
END

I_C_T2 UDSOLA01 10 CKLysreMetSoulafein1
== CKLysreJ IF ~InParty("CKLysre") InMyArea("CKLysre") !StateCheck("CKLysre",CD_STATE_NOTVALID)~ THEN @44
END

I_C_T UDSVIR03 31 CKLysreUnKilledBalor1
== CKLysreJ IF ~Global("EarQ1","GLOBAL",2) InParty("CKLysre") InMyArea("CKLysre") !StateCheck("CKLysre",CD_STATE_NOTVALID)~ THEN @45
END

//I_C_T UDTRAP04 1 CKLysreUnFreedLich1
//== CKLysreJ IF ~InParty("CKLysre") InMyArea("CKLysre") !StateCheck("CKLysre",CD_STATE_NOTVALID)~ THEN @47
//END

//I_C_T UDVITH 45 CKLysreVithalBargaining1
//== CKLysreJ IF ~InParty("CKLysre") InMyArea("CKLysre") !StateCheck("CKLysre",CD_STATE_NOTVALID)~ THEN @48
//END

// Built-in reactions

EXTEND_BOTTOM TRGYP02 2
IF ~!InPartySlot(LastTalkedToBy,0) Name("CKLysre",LastTalkedToBy)~ EXTERN TRGYP02 CKLysreTRGYP02
END

CHAIN TRGYP02 CKLysreTRGYP02
@49
== CKLysreJ @50
EXIT

EXTEND_BOTTOM PLAYER1 33
IF ~InParty("CKLysre") InMyArea("CKLysre") !StateCheck("CKLysre",CD_STATE_NOTVALID) Global("CKLysreTreeOfLife","GLOBAL",0)~
EXTERN PLAYER1 CKLysreTreeOfLife0
END

CHAIN PLAYER1 CKLysreTreeOfLife0
@51
DO ~SetGlobal("CKLysreTreeOfLife","GLOBAL",1)~
END
++ @52 EXTERN CKLysreJ CKLysreTreeOfLife1
++ @53 EXTERN CKLysreJ CKLysreTreeOfLife1
++ @54 EXTERN CKLysreJ CKLysreTreeOfLife1

CHAIN CKLysreJ CKLysreTreeOfLife1
@55
= @56
END
COPY_TRANS PLAYER1 33



//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// Dialogues initiés par le joueur////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
APPEND CKLysreJ

IF ~IsGabber(Player1)~ CKDialoguePJ
SAY ~Alors que vous approchez de Lysre, elle souffle une petite brume empoisonnée.~
+ ~RandomNum(5,1)~ + ~Parle-moi un peu plus de toi, Lysre.~ + CKLysre0.1
+ ~RandomNum(5,2)~ + ~Parle-moi un peu plus de toi, Lysre.~ + CKLysre0.2
+ ~RandomNum(5,3)~ + ~Parle-moi un peu plus de toi, Lysre.~ + CKLysre0.3
+ ~RandomNum(5,4)~ + ~Parle-moi un peu plus de toi, Lysre.~ + CKLysre0.4
+ ~RandomNum(5,5)~ + ~Parle-moi un peu plus de toi, Lysre.~ + CKLysre0.5
+ ~RandomNum(5,1)~ + ~Observer Lysre sans rien dire~ + CKLysre1.1
+ ~RandomNum(5,2)~ + ~Observer Lysre sans rien dire~ + CKLysre1.2
+ ~RandomNum(5,3)~ + ~Observer Lysre sans rien dire~ + CKLysre1.3
+ ~RandomNum(5,4)~ + ~Observer Lysre sans rien dire~ + CKLysre1.4
+ ~RandomNum(5,5)~ + ~Observer Lysre sans rien dire~ + CKLysre1.5
+ ~RandomNum(5,1)~ + ~Un conseil, toi qui est si sage ?~ + CKLysre2.1
+ ~RandomNum(5,2)~ + ~Un conseil, toi qui est si sage ?~ + CKLysre2.2
+ ~RandomNum(5,3)~ + ~Un conseil, toi qui est si sage ?~ + CKLysre2.3
+ ~RandomNum(5,4)~ + ~Un conseil, toi qui est si sage ?~ + CKLysre2.4
+ ~RandomNum(5,5)~ + ~Un conseil, toi qui est si sage ?~ + CKLysre2.5
+ ~RandomNum(5,1)~ + ~Que penses-tu de mon statut d'Enfant de Bhaal?~ + CKLysre3.1
+ ~RandomNum(5,2)~ + ~Que penses-tu de mon statut d'Enfant de Bhaal?~ + CKLysre3.2
+ ~RandomNum(5,3)~ + ~Que penses-tu de mon statut d'Enfant de Bhaal?~ + CKLysre3.3
+ ~RandomNum(5,4)~ + ~Que penses-tu de mon statut d'Enfant de Bhaal?~ + CKLysre3.4
+ ~RandomNum(5,5)~ + ~Que penses-tu de mon statut d'Enfant de Bhaal?~ + CKLysre3.5
+ ~RandomNum(5,1)~ + ~Qu'est ce que tu es au juste ?~ + CKLysre4.1
+ ~RandomNum(5,2)~ + ~Qu'est ce que tu es au juste ?~ + CKLysre4.2
+ ~RandomNum(5,3)~ + ~Qu'est ce que tu es au juste ?~ + CKLysre4.3
+ ~RandomNum(5,4)~ + ~Qu'est ce que sont ces cheveux que tu trimbale partout?~ + CKLysre4.4
+ ~RandomNum(5,5)~ + ~Qu'est ce que sont ces cheveux que tu trimbale partout?~ + CKLysre4.5
+ ~RandomNum(5,1)~ + ~Que feras tu une fois notre contrat achevé ?~ + CKLysre5.1
+ ~RandomNum(5,2)~ + ~Que feras tu une fois notre contrat achevé ?~ + CKLysre5.2
+ ~RandomNum(5,3)~ + ~Que feras tu une fois notre contrat achevé ?~ + CKLysre5.3
+ ~RandomNum(5,4)~ + ~Que feras tu une fois notre contrat achevé ?~ + CKLysre5.4
+ ~RandomNum(5,5)~ + ~Que feras tu une fois notre contrat achevé ?~ + CKLysre5.5
+ ~Gender(Player1,MALE) RandomNum(5,1)~ + ~Essayer de caresser Lysre~ + CKLysre6.1
+ ~Gender(Player1,MALE) RandomNum(5,2)~ + ~Essayer de caresser Lysre~ + CKLysre6.2
+ ~Gender(Player1,MALE) RandomNum(5,3)~ + ~Essayer de caresser Lysre~ + CKLysre6.3
+ ~Gender(Player1,MALE) RandomNum(5,4)~ + ~Essayer de caresser Lysre~ + CKLysre6.4
+ ~Gender(Player1,MALE) RandomNum(5,5)~ + ~Essayer de caresser Lysre~ + CKLysre6.5
+ ~Gender(Player1,FEMALE) RandomNum(5,1)~ + ~Essayer de caresser Lysre~  + CKLysre7.1
+ ~Gender(Player1,FEMALE) RandomNum(5,2)~ + ~Essayer de caresser Lysre~  + CKLysre7.2
+ ~Gender(Player1,FEMALE) RandomNum(5,3)~ + ~Essayer de caresser Lysre~  + CKLysre7.3
+ ~Gender(Player1,FEMALE) RandomNum(5,4)~ + ~Essayer de caresser Lysre~  + CKLysre7.4
+ ~Gender(Player1,FEMALE) RandomNum(5,5)~ + ~Essayer de caresser Lysre~ + CKLysre7.5
+ ~Gender(Player1,MALE) RandomNum(5,1)~ + ~Tu sais quoi Lysre... Je t'aime bien~ + CKLysre8.1
+ ~Gender(Player1,MALE) RandomNum(5,2)~ + ~Tu sais quoi Lysre... Je t'aime bien~ + CKLysre8.2
+ ~Gender(Player1,MALE) RandomNum(5,3)~ + ~Tu sais quoi Lysre... Je t'aime bien~ + CKLysre8.3
+ ~Gender(Player1,MALE) RandomNum(5,4)~ + ~Tu sais quoi Lysre... Je t'aime bien~ + CKLysre8.4
+ ~Gender(Player1,MALE) RandomNum(5,5)~ + ~Tu sais quoi Lysre... Je t'aime bien~ + CKLysre8.5
+ ~Gender(Player1,FEMALE) RandomNum(5,1)~ + ~Tu sais quoi Lysre... Je t'aime bien~ + CKLysre14.1
+ ~Gender(Player1,FEMALE) RandomNum(5,2)~ + ~Tu sais quoi Lysre... Je t'aime bien~ + CKLysre14.2
+ ~Gender(Player1,FEMALE) RandomNum(5,3)~ + ~Tu sais quoi Lysre... Je t'aime bien~ + CKLysre14.3
+ ~Gender(Player1,FEMALE) RandomNum(5,4)~ + ~Tu sais quoi Lysre... Je t'aime bien~ + CKLysre14.4
+ ~Gender(Player1,FEMALE) RandomNum(5,5)~ + ~Tu sais quoi Lysre... Je t'aime bien~ + CKLysre14.5
+ ~RandomNum(5,1) Global("Chapter","GLOBAL",%bg2_chapter_5%)~ + ~Quelles sont tes impressions sur l'Ombreterre pour l'instant ?~ + CKLysre12.1
+ ~RandomNum(5,2) Global("Chapter","GLOBAL",%bg2_chapter_5%)~ + ~Quelles sont tes impressions sur l'Ombreterre pour l'instant ?~ + CKLysre12.2
+ ~RandomNum(5,3) Global("Chapter","GLOBAL",%bg2_chapter_5%)~ + ~Quelles sont tes impressions sur l'Ombreterre pour l'instant ?~ + CKLysre12.3
+ ~RandomNum(5,4) Global("Chapter","GLOBAL",%bg2_chapter_5%)~ + ~Quelles sont tes impressions sur l'Ombreterre pour l'instant ?~ + CKLysre12.4
+ ~RandomNum(5,5) Global("Chapter","GLOBAL",%bg2_chapter_5%)~ + ~Quelles sont tes impressions sur l'Ombreterre pour l'instant ?~ + CKLysre12.5
+ ~RandomNum(5,1) GlobalGT("Chapter","GLOBAL",%bg2_chapter_5%)~ + ~Penses tu que nous avons une chance contre Irenicus ?~ + CKLysre13.1
+ ~RandomNum(5,2) GlobalGT("Chapter","GLOBAL",%bg2_chapter_5%)~ + ~Penses tu que nous avons une chance contre Irenicus ?~ + CKLysre13.2
+ ~RandomNum(5,3) GlobalGT("Chapter","GLOBAL",%bg2_chapter_5%)~ + ~Penses tu que nous avons une chance contre Irenicus ?~ + CKLysre13.3
+ ~RandomNum(5,4) GlobalGT("Chapter","GLOBAL",%bg2_chapter_5%)~ + ~Penses tu que nous avons une chance contre Irenicus ?~ + CKLysre13.4
+ ~RandomNum(5,5) GlobalGT("Chapter","GLOBAL",%bg2_chapter_5%)~ + ~Penses tu que nous avons une chance contre Irenicus ?~ + CKLysre13.5
+ ~Global("CKacide","GLOBAL",1)~ + ~Donnes moi un peu de ton acide s'il te plaît ?~ + CKAcideOUI
+ ~Global("CKacide","GLOBAL",2)~ + ~Donnes moi un peu de ton acide s'il te plait ?~ + CKAcideNON
END

//Acide
IF ~~ CKAcideOUI
SAY ~Contre une offrande en l'honneur de Tiamat, c'est possible.~
++ ~Entendu, voilà 100 pièces d'or~ + CKAcideOUI2
++ ~Plus tard peut être~ + CKAcideNON2
IF ~~ EXIT
END

IF ~~ CKAcideOUI2
SAY ~Vos pièces s'évaporent une fois tendues a Lysre. Elle hoche la tête, visiblement satisfaite, avant de cracher sur le sol. Elle souffle ensuite doucement sur l'acide qui immédiatement se solidifie~
IF ~~ DO ~SetGlobal("CKacide","GLOBAL",2) TakePartyGold(100) CreateItem("CKbull",10,0,0) DropItem("CKbull",[-1.-1])~ EXIT
END

IF ~~ CKAcideNON
SAY ~Je ne suis pas d'humeur à écouter vos caprices~
IF ~~ EXIT
END

IF ~~ CKAcideNON2
SAY ~Si vous êtes indécis, laissez moi tranquille.~
IF ~~ EXIT
END


//parle moi de toi/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
IF ~~ CKLysre0.1
SAY ~Laissez moi tranquille <CHARNAME>. Je ne suis pas d'humeur.~
IF ~~ EXIT
END

IF ~~ CKLysre0.2
SAY ~La curiosité des bipèdes... Je suis une dragonne, j'ai eu la malchance d'éclipser quelqu'un par mon potentiel et on m'a laissée pour morte, à six pieds sous terre. Avez-vous connu l'empreinte de la Mort <CHARNAME>? Moi oui, et je suis revenue. Certes, j'ai dû revoir ma forme pour survivre mais c'est une question de temps avant que je retrouve ma forme originelle. J'espère que cette petite histoire vous suffira, car maintenant, j'ai envie qu'on bouge.~
IF ~~ EXIT
END

IF ~~ CKLysre0.3
SAY ~La curiosité des bipèdes... J'aime beaucoup manger mes contractants. Avec vous c'est un peu différent, bien sûr, nous irons loin ensemble, je n'ai donc pas eu à négocier votre carcasse. Mais les faibles qui comptent me doubler sont légion, et rien ne me fait plus plaisir que d'enfouir mes crocs dans la viande salée d'un homme qui m'a fuit sans succès. La peur donne un goût merveilleux aux lâches.~
IF ~~ EXIT
END

IF ~~ CKLysre0.4
SAY ~La curiosité des bipèdes... Chaque jour, j'aime remercier la Grande Tiamat d'une proie ou d'un trésor. Vos Dieux ne sont qu'une farce devant laquelle je lui rendrai hommage jusqu'à la fin de mon existence, car louée soit la Grande Tiamat. ~
IF ~~ EXIT
END

IF ~~ CKLysre0.5
SAY ~La curiosité des bipèdes... J'aime les contrats, mais vous le savez déjà. Il y a quelque chose de splendide dans la mise en place d'un contrat avec un mortel. Chaque mot compte. Plus d'une fois j'ai eu l'occasion de devorer un idiot, ou une idiote qui n'avait pas eu l'intelligence de voir un piege entre mes mots. Vous, c'est différent, je sens que votre route conduit à une proie que je convoite. Vous ne risquez rien.~
IF ~~ EXIT
END

//Observer sans rien dire./////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
IF ~~ CKLysre1.1
SAY ~Lysre se rapproche rapidement de vous, plongeant son regard dans le vôtre. Vous ressentez un malaise de plus en plus profond qui vous fait détourner le regard.~
IF ~~ EXIT
END

IF ~~ CKLysre1.2
SAY ~Comme à son habitude. La dragonne semble plongée dans la contemplation de ses griffes. Vous remarquez qu'elle produit une petite mélodie de cliquetis et qu'elle murmure quelque chose. Deux mots vous semblent revenir régulièrement. "Louée" et "Tiamat"~
IF ~~ EXIT
END

IF ~~ CKLysre1.3
SAY ~Lysre vous semble d'abord occupée à entretenir ses griffes, mais vous constater qu'elle est en train de souffler doucement une brume acide sur une pièce d'or, la réduisant lentement en fumée.~
IF ~~ EXIT
END

IF ~~ CKLysre1.4
SAY  ~Tout en volant tranquillement, Lysre souffle silencieusement une brume acide sur chacune de ses écailles, détruisant la poussière et les traces de votre dernier combat.~
IF ~~ EXIT
END

IF ~~ CKLysre1.5
SAY ~Voyant que l'occasion est au repos, Lysre se pose au sol et étend un moment ses ailes, elle semble tres occupee par l'examen de ses écailles, mais vous remarquez qu'elle est attentive à ce qui l'entoure, puisqu'elle vous fixe droit dans les yeux.~
IF ~~ EXIT
END

//Conseils/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

IF ~~ CKLysre2.1
SAY ~Tiens toujours tes promesses. Tu peux être la pire des ordures de ce monde, ou le plus preux des chevaliers, rien de ça ne compte vraiment. Ce qui compte, c'est que tes mots soit toujours en accord avec tes actes.~
IF ~~ EXIT
END

IF ~~ CKLysre2.2
SAY ~Penses par toi même, et ne va pas embêter un dragon.~
IF ~~ EXIT
END

IF ~~ CKLysre2.3
SAY ~Ne crois pas tes alliés, ne crois pas tes proches, ne crois pas tes amis. Un jour, tu devras ou voudras peut être tuer l'un de ceux la.~
IF ~~ EXIT
END

IF ~~ CKLysre2.4
SAY ~Celui qui est capable de te tromper une fois reste un traitre pour toujours.~
IF ~~ EXIT
END

IF ~~ CKLysre2.5
SAY ~Ne crois pas échapper à la colère d'un dragon.~
IF ~~ EXIT
END

//Enfant de Bhaal////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
IF ~~ CKLysre3.1
SAY ~Les enfants de Bhaal... Je ne compte plus les troubles prophecies que j'ai entendu à votre sujet. Je dirais que vous êtes intéressants, après tout, c'est par curiosité sur ton statut que je t'accorde le droit de me parler. Tu n'es pas tout a fait un simple bipède.~
IF ~~ EXIT
END

IF ~~ CKLysre3.2
SAY  ~Tu es membre d'une famille amusante <CHARNAME>. Une essence divine court dans tes veines, j'avoue donc m'intéresser à ce que vous pouvez faire de votre existence. Combien de tes frères et soeur tuerez vous au nom de ce sang.~
IF ~~ EXIT
END

IF ~~ CKLysre3.3
SAY ~La? Absolument rien. J'aimerai que vous me laissiez seule.~
IF ~~ EXIT
END

IF ~~ CKLysre3.4
SAY ~Pff. Être un enfant de Bhaal ne fait pas de vous un être exceptionnel <CHARNAME>, cela vous donne une disposition tu vois. Vous pouvez en faire quelque chose, ou rien du tout. J'ai déjà voyagé avec une fille de Bhaal par le passé. Une sotte qui s'etait perdue dans la folie, partagee entre sa passion pour le meurtre de ceux qu'elle croisait et sa repugnance a s'y resoudre. Nous avons voyagé ensemble un an, elle a croisé une lame et elle est morte. Ses yeux était délicieux.~
IF ~~ EXIT
END

IF ~~ CKLysre3.5
SAY ~Ca ne fait pas de vous un Dragon. Donc au mieux vous faites une bonne distraction, au pire, un bon casse croûte.~
IF ~~ EXIT
END

//Ce qu'est lysre////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
IF ~~ CKLysre4.1
SAY ~Je vais garder pour moi la colère que provoque cette question idiote. Laissez moi tranquille immédiatement.~
IF ~~ EXIT
END

IF ~~ CKLysre4.2
SAY ~Je suis une dragonne <CHARNAME>, ne jugez pas stupidement mon statut en vous basant sur ma taille, ou vous risquez de constater rapidement que ma colère s'accompagne de la brûlure de l'acide. Laissez moi tranquille.~
IF ~~ EXIT
END

IF ~~ CKLysre4.3
SAY ~Je suis la suivante de la grande Tiamat. Grâce à sa volonté je me suis échappée de la mort pour un jour la rejoindre. Je vie patiemment ma renaissance en attendant ce jour.~
IF ~~ EXIT
END

//Les cheveux////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
IF ~~ CKLysre4.4
SAY ~Rien qui ne vous regarde <CHARNAME>~
IF ~~ EXIT
END

IF ~~ CKLysre4.5
SAY ~Ces cheveux sont un souvenir. D'une contractante qui m'a agréablement surpris une fois. Maintenant laissez moi tranquille.~
IF ~~ EXIT
END

//Avenir////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
IF ~~ CKLysre5.1
SAY ~Je vous laisserai derrière moi. Ce qui implique que les détails ne vous regardent pas.~
IF ~~ EXIT
END

IF ~~ CKLysre5.2
SAY ~Je reprendrais une forme plus convenable, trouverai un endroit pour nicher... Et j'y planterai les griffes de la Grande Tiamat.~
IF ~~ EXIT
END

IF ~~ CKLysre5.3
SAY ~Je pense que je savourerai la conclusion de notre contrat pendant de longues décennies. Peut-être que je chercherai d'autres contractants pour m'en délecter.~
IF ~~ EXIT
END

IF ~~ CKLysre5.4
SAY ~Pour toute réponse, Lysre s'éloigne de vous.~
IF ~~ EXIT
END

IF ~~ CKLysre5.5
SAY ~N'est ce pas orgueilleux de votre part de vous voir survivre? Commençons par résoudre la situation présente.~
IF ~~ EXIT
END

//Caresse homme/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
IF ~~ CKLysre6.1
SAY ~NE ME PREND PAS POUR UN ANIMAL <CHARNAME> ! JAMAIS !~
IF ~~ EXIT
END

IF ~~ CKLysre6.2
SAY ~Sans même prévenir, Lysre plante ses crocs dans votre main, laissant son venin froler la plaie avant de vous lacher~
IF ~~ EXIT
END

IF ~~ CKLysre6.3
SAY ~Pour toute réponse, Lysre crache une brume d'acide dans votre direction.~
IF ~~ EXIT
END

IF ~~ CKLysre6.4
SAY ~A votre grande surprise, Lysre se laisse effleurer cette fois-ci. Ses écailles sont étonnamment soyeuses et chaudes au toucher.~
IF ~~ EXIT
END

IF ~~ CKLysre6.5
SAY ~Étrangement, votre main semble ne jamais atteindre Lysre, qui pourtant ne semble pas vous fuir. Puis, alors que vous abandonne l'idée de la toucher, ses griffes éraflent vos doigts.~
IF ~~ EXIT
END

//Caresse femme/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
IF ~~ CKLysre7.1
SAY ~Ne me touchez pas <CHARNAME>, ou je serai contrainte de vous apprendre la politesse à la manière des elfes noirs. Dans. La. Douleur.~
IF ~~ EXIT
END

IF ~~ CKLysre7.2
SAY ~A votre grande surprise, Lysre se laisse effleurer cette fois-ci. Ses écailles sont étonnamment soyeuses et chaudes au toucher. Vous avez même le temps d'esquisser une caresse avant qu'elle ne glisse hors de votre portée~
IF ~~ EXIT
END

IF ~~ CKLysre7.3
SAY ~Lysre s'avance soudainement vers votre bras pour s'y accrocher. Sa prise est ferme mais permet à la Dragonne de s'approcher de votre visage pour vous scruter de ses deux yeux sombres. Elle se décroche sans un mot et reprend ses distances~
IF ~~ EXIT
END

IF ~~ CKLysre7.4
SAY ~Étrangement, votre main semble ne jamais atteindre Lysre, qui pourtant ne semble pas vous fuir.~
IF ~~ EXIT
END

IF ~~ CKLysre7.5
SAY ~Lysre vous évite avec grâce, puis elle se pose sur votre tête en silence. Le message derrière sa manoeuvre n'est pas des plus clairs. Elle s'esquive en silence.~
IF ~~ EXIT
END

//Compliment Femme/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
IF ~~ CKLysre14.1
SAY ~Et parfois je me surprend a penser cela de vous <CHARNAME>.~
IF ~~ EXIT
END

IF ~~ CKLysre14.2
SAY ~Je reconnais que vous suivre n'est pas une corvée aussi détestable que ce que j'ai crains en vous voyant le premier jour.~
IF ~~ EXIT
END

IF ~~ CKLysre14.3
SAY ~Ah, gardez vos flatteries pour un autre dragon.~
IF ~~ EXIT
END

IF ~~ CKLysre14.4
SAY ~Revenez dans dix ans, redites moi ça, et si je ne vous arrache pas les yeux, je pense qu'on pourra dire la même chose de moi.~
IF ~~ EXIT
END

IF ~~ CKLysre14.5
SAY ~Commençons par nous faire confiance, et un jour on en reparlera.~
IF ~~ EXIT
END

//Compliment Homme//////////////////////////////////////////////////////////////////////////////////////////////////////////
IF ~~ CKLysre8.1
SAY ~Gardez vos flatteries pour une femelle de votre espèce bipède.~
IF ~~ EXIT
END

IF ~~ CKLysre8.2
SAY ~Tsk~
IF ~~ EXIT
END

IF ~~ CKLysre8.3
SAY ~Et vous êtes supportable~
IF ~~ EXIT
END

IF ~~ CKLysre8.4
SAY ~De mes contractants, vous n'êtes pas le pire.~
IF ~~ EXIT
END

IF ~~ CKLysre8.5
SAY ~Lysre regarde ailleurs, visiblement elle vous ignore.~
IF ~~ EXIT
END

//Ombreterre/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
IF ~~ CKLysre12.1
SAY ~C'est un endroit charmant. Des créatures dangereuses, des elfes noirs... quoique, ces deux catégories ne devraient pas être dissociées. Enfin, il n'est pas exclu que je cherche un coin similaire pour m'établir à l'avenir.~
IF ~~ EXIT
END

IF ~~ CKLysre12.2
SAY ~Si l'on compare cet endroit aux enfers, ça reste un endroit tout à fait a mon gout.~
IF ~~ EXIT
END

IF ~~ CKLysre12.3
SAY ~L'endroit manque de petites proies. Je peux certes dévorer tout ce qu'on trouve ici. Mais les mulots me manquent.~
IF ~~ EXIT
END

IF ~~ CKLysre12.4
SAY ~Aucun humain ne rôde ici... Et ce n'est pas les elfes noirs ou ces stupides gnomes qui ferait de bons contractants... L'ennui me gagnerait vite ici.~
IF ~~ EXIT
END

IF ~~ CKLysre12.5
SAY ~Je n'ai pas d'avis sur la question... nous n'allons pas vivre ici que je sache.~
IF ~~ EXIT
END

//Irenicus/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
IF ~~ CKLysre13.1
SAY ~Prêt ? Nous allons le tuer et si tu n'en veux pas. Je savourerai ses tripes encore fumantes. J'ai hâte.~
IF ~~ EXIT
END

IF ~~ CKLysre13.2
SAY ~N'hésitez pas <CHARNAME> l'heure de la vengeance a sonné. Bientôt vous savourerez son goût, et un jour prochain, ce sera mon tour.~
IF ~~ EXIT
END

IF ~~ CKLysre13.3
SAY ~Le doute n'est pas permis <CHARNAME> vous êtes on ne peut plus prêt pour ce combat. Et puis vous m'avez à vos côtés.~
IF ~~ EXIT
END

IF ~~ CKLysre13.4
SAY ~Irenicus n'est qu'un débris. De plus grands défis attendent les enfants de Bhaal. Mais il fera un bon adversaire.~
IF ~~ EXIT
END

IF ~~ CKLysre13.5
SAY ~La perte de votre âme semble vous rendre hésitant. Vous devez la récupérer. Vous allez la récupérer. N'ayez crainte.~
IF ~~ EXIT
END

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// Dialogues initiés par un vulgaire PNJ//////////////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

IF ~!IsGabber(Player1)~ CKIntru
SAY ~Mon temps m'est précieux, je ne l'accorde qu'à <CHARNAME> vois-tu?~
IF ~~ EXIT
END

///FIN/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
END
