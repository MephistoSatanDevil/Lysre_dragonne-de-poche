//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// Dialogue de la Paladine de Tiamat (Quête NPC)//////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
BEGIN CKVarsco

IF ~Global("CKquete1","GLOBAL",7)~ THEN BEGIN CKV1.1
  SAY ~*L'armure de cette femme est tachee de croute de sang. Elle semble chercher à boire paisiblement une bière.* Que me voulez vous?~
  IF ~~ THEN REPLY ~J'ai une quete a resoudre, tu veux bien?~ DO ~SetGlobal("CKquete1","GLOBAL",8)~ EXIT
END

IF ~Global("CKquete1","GLOBAL",8)~ THEN BEGIN CKV2
  SAY ~*La demi-elfe vous toise, puis hoche la tête en guise de salut*~
  IF ~~ THEN EXIT
END
