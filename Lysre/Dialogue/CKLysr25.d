//Il n'y a aucune ligne de code ici. Lysre ne peut etre trouvee que dans SoA

BEGIN CKLysr25

IF ~Global("CKSummon_ToB","LOCALS",0)~ THEN BEGIN CKSummon0
 SAY ~Enfin, qu'attendiez vous donc ?~
++ ~J'ai eu un petit contretemps, comme tu peux le remarquer, nous sommes...~ + CKSummon1
END

IF ~Global("CKSummon_ToB","LOCALS",0)~ THEN BEGIN CKSummon1
 SAY ~Oui, oui, Bhaal, les enfers. Blablabla, ne suis-je pas plus importante que tout ces détails ?~
++ ~Évidemment, te faire venir ici est la première chose à laquelle j'ai pensé !~ + CKSummon2
++ ~Certainement pas, je t'ai convoquée afin te renvoyer proprement et définitivement.~ + CKSummon3
END

IF ~~ THEN BEGIN CKSummon2
 SAY ~Alors ?~
++ ~Alors quoi ?~ + CKSummon5
++ ~Tu as grandi et tu es plus belle et acide que jamais.~ DO ~Polymorph(CKLysre_dragon_green)~ + CKSummon4
++ ~Tu as grandi et tu es plus belle et sombre que jamais.~ DO ~Polymorph(CKLysre_dragon)~ + CKSummon4
END

IF ~~ THEN BEGIN CKSummon3
 SAY ~Soit maudit <CHARNAME> de rompre notre engagement après tout ce que j'ai fait pour toi... Compte sur moi pour ne jamais oublier ce moment. Pour te le faire payer, j'ai l'éternité devant moi pour te rendre la pareille.~
	IF ~~ DO ~SetGlobal("CKSummon_ToB","LOCALS",1)
				CreateVisualEffectObject("SPPORTAL","CKLysre")
				Wait(2)
				DestroySelf()~ EXIT
END

IF ~~ THEN BEGIN CKSummon4
 SAY ~Bien, alors continuons mon... Notre aventure !~
	IF ~~ DO ~SetGlobal("CKSummon_ToB","LOCALS",1)
				AddSpecialAbility("spsd02")
				AddSpecialAbility("spsd02")
				AddSpecialAbility("spsd02")
				AddSpecialAbility("CKsoin")
				JoinParty()~ EXIT
END

IF ~~ THEN BEGIN CKSummon5
 SAY ~Vous n'avez rien à me dire ?~
++ ~Non, rien de rien, ne me dis pas que tu es en manque d'attention...~ + CKSummon6
++ ~Tu as grandi et tu es plus belle que jamais.~ + CKSummon4
END

IF ~~ THEN BEGIN CKSummon6
 SAY ~(Lysre émet un sifflement et se détourne de vous)~
	IF ~~ DO ~SetGlobal("CKSummon_ToB","LOCALS",1)
				MoveToOffset([5.5])
				AddSpecialAbility("spsd02")
				AddSpecialAbility("spsd02")
				AddSpecialAbility("spsd02")
				AddSpecialAbility("CKsoin")
				JoinParty()~ EXIT
END

