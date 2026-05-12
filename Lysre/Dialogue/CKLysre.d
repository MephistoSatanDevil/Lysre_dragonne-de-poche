//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// Dialogue de premiere rencontre ////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
BEGIN CKLysre

CHAIN IF ~Global("CKLysreintro","LOCALS",0)~ THEN CKLysre Dialogueintro
~*Un bruit de vaisselle cassée. Dans la pièce, une jeune dragonne aux écailles sombres fait face à un homme horrifié. Elle s'agrippe aux rayons de la bibliothèque pour s'étirer gracieusement, avant de s'envoler pour se mettre un niveau des yeux de son interlocuteur. Là, elle le toise de ses deux yeux semblables à des perles. *~
== CKMORTIN ~C-Comment tu m'as retrouvé ?!~
== CKlYSRE ~Mortin, mortin... Je savais que tu ne serais pas mieux que la fange qui t'a vu naître... Mais nous avions un accord non?~
== CKMORTIN ~Q-Qui accepterait de t-telles condi-~
== CKlYSRE ~(Crache de colère.) TU l'as accepté asticot ! Mon aide, contre ton âme misérable.~
== CKMORTIN ~Tu ne peux rien me faire ! vous la, aidez moi, cette abomination en veut à ma vie !~
END
++ ~Arrière dragonne ! Je ne te laisserai pas t'en prendre à un innocent !~ EXTERN CKLysre Dialogueintro2
++ ~Que se passe-t-il ici au juste?~ EXTERN CKLysre Dialogueintro2
++ ~*Ne rien dire.*~ EXTERN CKLysre Dialogueintro2

CHAIN IF ~~ THEN CKLysre Dialogueintro2
~(Ricane). J'ai le souvenir d'autre chose. *un son strident vous attaque les oreilles*~
== CKMORTIN ~(voix d'outre tombe) TUEZ LA, et je donnerai jusqu'à mon âme.~
== CKLYSRE  ~(voix d'outre tombe) Voici notre contrat, conclu sous le regard de la Reine des Dragons. Je tuerai votre ancienne épouse, contre quoi vous me céderez votre âme. Si je failli à ma tâche, je m'arracherai le coeur. Si vous cherchez à rompre notre accord, vous m'accordez le droit de savoir ou vous retrouver, quoi qu'il arrive. Et de vous tuer.~
== CKMORTIN ~(voix d'outre tombe) C'est d'accord ! Du moment qu'elle ne passe pas la soirée !~
== CKLYSRE  ~ Entendez vous, humble rampant, les mots figés par notre accord?! J'ai tue cette femme, comme vous l'avez demande, j'ai execute chacune de vos demande, elle a souffert, pleurer, implorer votre pitie, et... après une longue agonie. Elle. Est. Morte.~
== CKMORTIN ~ C-C'est un mensonge ! Vous ne pouvez pas croire ce monstre !?~
== CKLYSRE  ~ Qu'ils vous croient ou non n'importe en rien, Mortin. Vous m'avez trompée, vous avez cherché auprès des prêtres un moyen de briser notre accord, votre "ma-le-di-ction". Mais nul ne saurait échapper à la colère de Tiamat et de ses filles. Que ces gens veulent vous aidez ou non n'importe pas.~
DO ~SetGlobal("CKLysreintro","LOCALS",1)~
END
++ ~Laisse cet homme tranquille !~ EXIT
++ ~Tuez le, visiblement il le mérite.~ EXIT
++ ~*Ne rien dire.*~ EXIT


CHAIN IF ~Global("CKLysreintro","LOCALS",1)~ THEN CKLysre Dialogueinitial
~Oh... mais que voilà? Une aura des plus.... intéressante. Je m'excuse pour le désordre... Mais ça n'a pas vraiment l'air d'être votre demeure? Louée soit la sombre Reine pour ces rencontres. Je peux sentir une essence... intéressante... nauséabonde... Mais je vois surtout cette voie... oui... ~ [CKLysre01]
DO ~SetGlobal("CKLysreSpawn","GLOBAL",2)~           //Le dialogue a ete initié
END
++ ~Je...~ EXTERN CKLysre Interuption
++ ~Que...~ EXTERN CKLysre Interuption
++ ~Mais...~ EXTERN CKLysre Interuption

//Note : le ++ permet d'entourer des conditions pour le dialogue
// CHAIN requires EXTERN DIALOGUENAME, because the game needs to know which dialogue file to go to. It could be EXTERN VICONIJ, and then Viconia would speak.

CHAIN IF ~~ THEN CKLysre Interuption
~Shhhh. Les créatures civilisées commencent par se présenter. Je me prénomme Lysre, et si vous ne voulez pas que je vous défigure, ou que je vous fasse subir le même sort que ce cher Mordin, que Tiamat ai son âme... faites attention à ne pas écorcher le nom qui m'a été attribué par la grande Mère.~
//== IMOENJ IF ~InParty("Imoen") InMyArea("Imoen") !StateCheck("Imoen",CD_STATE_NOTVALID)~ THEN ~Ce lezard ne m'inspire pas.~
END
++ ~Mon nom est <CHARNAME>.~ EXTERN CKLysre b1.1
++ ~Comme si j'allais perdre mon temps à parler avec un lézard.~  EXTERN CKLysre b1.2


CHAIN CKLysre b1.1
~<CHARNAME>... Commencez donc par savourer ma vue. Je gage que rares sont les créatures qui ont eu l'occasion d'autant vous éblouir que moi. *Elle chasse le sang de ses griffes en éclaboussant le mur* Je vous laisse le droit de poser quelques questions, après tout vous devez en avoir.~
END
++ ~Qui es tu?~ EXTERN CKLysre b1.qui
++ ~Qu'es tu?~ EXTERN CKLysre b1.quoi
++ ~Qui était cet homme?~ EXTERN CKLysre b1.mortin
++ ~Tu as parler d'odeur?~ EXTERN CKLysre b1.aura
++ ~Et maintenant?~ EXTERN CKLysre b1.fin
++ ~Comme si j'allais perdre mon temps à parler avec un lézard.~  EXTERN CKLysre b1.2

CHAIN CKLysre b1.qui
~<CHARNAME>... Vous êtes sourd, sot, inattentif, peut être l'un ou les trois... Il ne faut pas trop en attendre des bipèdes je suppose... *Elle articule exagérément* Je me prénomme Lysre, l'une des suivantes de la Grande et Noble Mère des Dragons. Louée soit Elle.~
END
++ ~Qu'es tu?~ EXTERN CKLysre b1.quoi
++ ~Qui était cet homme?~ EXTERN CKLysre b1.mortin
++ ~Tu as parler d'odeur?~ EXTERN CKLysre b1.aura
++ ~Et maintenant?~ EXTERN CKLysre b1.fin
++ ~Comme si j'allais perdre mon temps à parler avec un lézard.~  EXTERN CKLysre b1.2

CHAIN CKLysre b1.quoi
~(soupire) Je suis une dragonne... bipède. Seriez vous inculte, quelle tristesse. Aujourd'hui, je crois encore, mais je serais prochainement à l'origine de nombre de récits horrifiques en tant que Ravageuse de Tiamat... Il faudra que j'évite de tuer toute mes proies...~
END
++ ~Qui es tu?~ EXTERN CKLysre b1.qui
++ ~Qui était cet homme?~ EXTERN CKLysre b1.mortin
++ ~Tu as parler d'odeur?~ EXTERN CKLysre b1.aura
++ ~Et maintenant?~ EXTERN CKLysre b1.fin
++ ~Comme si j'allais perdre mon temps à parler avec un lézard.~  EXTERN CKLysre b1.2


CHAIN CKLysre b1.mortin
~Mortin, c'était un faible, un lâche. Sa dame l'avait bien compris, et il n'avait pas accepté la rupture... Pauvre, pauvre petit Mortin (ricane) il a donné son âme pour se venger, puis il a cru pouvoir tromper la vigilance de Tiamat et de ses suivantes. Ai je precise qu'en plus d'etre atroce a regarder, comme tout les bipèdes, il etait aussi particulierement stupide? Qu'une femelle se rabatte sur un si mauvais mâle, c'est désespérant de votre part, bipèdes...~
END
++ ~Qui es tu?~ EXTERN CKLysre b1.qui
++ ~Qu'es tu?~ EXTERN CKLysre b1.quoi
++ ~Tu as parler d'odeur?~ EXTERN CKLysre b1.aura
++ ~Et maintenant?~ EXTERN CKLysre b1.fin
++ ~Comme si j'allais perdre mon temps à parler avec un lézard.~  EXTERN CKLysre b1.2

CHAIN CKLysre b1.aura
~Oui, une aura... une odeur... Vous sentez la délicate odeur de la mort et de la pourriture <CHARNAME>. J'oserai dire que vous paraissez presque appétissant. C'est une odeur divine, dans tous les sens du terme. Mais, ça, ce n'est qu'un détail. Vous avez une voie à suivre, et c'est le plus important...~
END
++ ~Qui es tu?~ EXTERN CKLysre b1.qui
++ ~Qu'es tu?~ EXTERN CKLysre b1.quoi
++ ~Qui était cet homme?~ EXTERN CKLysre b1.mortin
++ ~Et maintenant?~ EXTERN CKLysre b1.fin
++ ~Comme si j'allais perdre mon temps à parler avec un lézard.~  EXTERN CKLysre b1.2

CHAIN CKLysre b1.fin
~Je pourrais vous mentir en disant que je suis enchantée, mais allons aux faits. Voyez-vous, je sens qu'un jour, votre voie sinueuse et jonchée de dépouilles pourrissantes vous guidera jusqu'à l'une des choses que je convoite le plus. L'opportunité est rare, aussi devoir supporter la présence de bipède me paraît supportable...~
~Je vais être généreuse, n'y voyez aucun piège, mais moi, Lysre je vous propose, humble mortel, de nous lier par un pacte sous le regard de Tiamat... Louée soit la sombre Reine pour notre rencontre, liée sans doute (ricane) au hasard.~
END
++ ~Un pacte, mais de quoi parles tu?~ EXTERN CKlysre Contrat
++ ~Un pacte ? Comme si un lézard pouvait m'être utile !~ EXTERN CKlysre b1.2

CHAIN CKLysre Contrat
~Je ne vous savais pas si... limité <CHARNAME>. Un pacte, c'est un petit tour divin de la splendide Reine, une astuce pour lier deux destinées. Ce n'est pas vraiment un sort de quête, mais pour les bipèdes que j'accompagne, c'est une garantie que je ne serais pas dangereuse. Beaucoup de bipèdes me convoitent, mais ont facilement peur de moi. D'habitude, je ne supporte les inférieurs que pour obtenir une rémunération, une âme pour la Dame, ces petites choses, demandez à Mortin... Ah, c'est impossible maintenant... Mort ou vif, quelle différence avec celui-là. Comme lui, nombre de bipèdes m'ont crue assez bête pour pouvoir me duper. Aussi, les pactes assurent que chacun trouve son compte.  ~
~Et, comme je l'ai dit, vous n'aurez rien à m'offrir d'autre que votre compagnie, et la dépouille d'une future victime. Votre présence ne m'inspire pas pour autant... Vous êtes un bipède un peu au-dessus du panier, mais un bipède malgré tout. Mais vous irez à la rencontre de ce que je cherche... Aussi, votre compagnie a de la valeur. En échange de ma présence à vos côtés,je m'engage à vous suivre et à vous aider dans la limite de mes talents. Seriez vous intéressé ? ~
END
++ ~Marché conclu!~ EXTERN CKLysre b1.join
+ ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_4%)~ + ~Marché conclu, mais il faut que je te prévienne, mon objectif est de secourir une amie, Imoen, qui a été capturée par les mages cagoulés.~ EXTERN CKLysre b1.3
+ ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_4%)~ + ~Marche conclu, mais je compte bien retrouver Irenicus, ce mage m'a capture et torture~ EXTERN CKLysre b1.4
++ ~Quelles sont les conditions ?~ EXTERN CKLysre G1
++ ~Quelles sont les pénalités ?~ EXTERN CKLysre P1
++ ~ Me lier à toi ? Jamais tu es inutile !~ EXTERN  CKLysre b1.2
++ ~ Me lier à toi ? Jamais tu es un monstre !~ EXTERN  CKLysre b1.2
++ ~ Je regrette, je ne suis pas intéressé~ EXTERN CKlysre b1.2

CHAIN CKLysre G1
~Il n'y a pas de pièges :
Devoir de l'enfant de Bhaal : Me laisser l'accompagner jusqu'à ce que je rencontre ma proie, la tue, la dévore.
Devoir de la dragonne Lysre : Ne pas chercher a nuir a <CHARNAME>~
END
++ ~Marché conclu!~ EXTERN  CKLysre b1.join
+ ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_4%)~ + ~Marché conclu, mais il faut que je te prévienne, mon objectif est de secourir une amie, Imoen, qui a été capturée par les mages cagoulés.~ EXTERN CKLysre b1.3
+ ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_4%)~ + ~Marche conclu, mais je compte bien retrouver Irenicus, ce mage m'a capture et torture~ EXTERN CKLysre b1.4
++ ~Quelles sont les pénalités ?~ EXTERN CKLysre P1
++ ~ Me lier à toi ? Jamais tu es inutile !~ EXTERN  CKLysre b1.2
++ ~ Me lier à toi ? Jamais tu es un monstre !~ EXTERN  CKLysre b1.2
++ ~ Je regrette, je ne suis pas intéressé~ EXTERN  CKLysre b1.2


CHAIN CKLysre P1
~Il n'y a pas de pièges :
Si le pacte est rompu par l'enfant de Bhaal : Offrir à la dragonne le don de le retrouver, où qu'il se cache, jusqu'à la fin de son existence.
Si le pacte est rompu par la dragonne : Elle s'engage a s'arracher le coeur.  ~
END
++ ~Marché conclu!~ EXTERN  CKLysre b1.join
+ ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_4%)~ + ~Marché conclu, mais il faut que je te prévienne, mon objectif est de secourir une amie, Imoen, qui a été capturée par les mages cagoulés.~ EXTERN CKLysre b1.3
+ ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_4%)~ + ~Marche conclu, mais je compte bien retrouver Irenicus, ce mage m'a capture et torture~ EXTERN CKLysre b1.4
++ ~Quelles sont les conditions?~ EXTERN CKLysre G1
++ ~ Me lier à toi ? Jamais tu es inutile !~ EXTERN  CKLysre b1.2
++ ~ Me lier à toi ? Jamais tu es un monstre !~ EXTERN  CKLysre b1.2
++ ~ Je regrette, je ne suis pas intéressé~ EXTERN  CKLysre b1.2

CHAIN CKLysre b1.2
~Si tu es stupide de point de vouloir te priver de ma presence. Soit, par bipède. Je trouverai un meilleur moyen d'arriver a mes fins.~
DO ~EscapeArea()~
EXIT

CHAIN CKLysre b1.3
~Sauver une bipède... Voilà une idée saugrenue. Enfin, pour ce que ça m'importe.~
END
IF ~~ EXTERN CKLysre b1.join

CHAIN CKLysre b1.4
~Oh, <CHARNAME>... Rien n'est plus doux que la vengeance, allons tuer ce mage. Faisons naître la peur en lui... puis dévorons ses tripes encore fumantes.~
END
IF ~~ EXTERN CKLysre b1.join

CHAIN CKLysre b1.join
~Pour conclure notre contrat sous le regard de la grande Tiamat. Il ne vous reste qu'à poser une goutte de sang sur mon front. Savourez ce contact, mortel. Je n'accorde que rarement au bipèdes ma vue splendide, alors le contact de mes splendides ecailles...~
END
++ ~*Réaliser le rituel*~ EXTERN CKLysre Enroute
++ ~ Finalement... non.~ EXTERN  CKLysre b1.2


CHAIN CKLysre Enroute
~Une sensation piquante remonte de votre main jusqu'à votre coeur, laissant dans son sillage une chaleur désagréable. Un goût acide se répand dans votre bouche.~
~Bien! Allons, <CHARNAME> ne perdons pas plus de temps dans cet endroit, s'il faut parler vous devriez y arriver en marchant.~
DO ~JoinParty()~ // When Branwen joins, she will use her CKLysreJ dialogue - J for "joined"
EXIT


//////////////////////////////////////////////////////////////////////////////////////////////////////////
// SÉCURITÉ // Ce dialogue est prévu si le PNJ reste sur une map, mais qu'on l'a refusé dans le groupe. //
//////////////////////////////////////////////////////////////////////////////////////////////////////////
CHAIN IF ~Global("CKLysreSpawn","GLOBAL",2)~ THEN CKLysre Quittemap                                     //
~Hors de mon chemin, bipède.~                                                                           //
DO ~EscapeArea()~                                                                                       //
END                                                                                                     //
//////////////////////////////////////////////////////////////////////////////////////////////////////////

