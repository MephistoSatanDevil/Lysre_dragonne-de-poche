// FATE SPIRIT

EXTEND_TOP FATESP %fatesp_state% #%fatesp_transition%
+ ~!Dead("CKLysre") !InMyArea("CKLysre") Global("CKLysreSummoned","GLOBAL",0)~ + @49
	DO ~CreateVisualEffect("SPPORTAL",[1999.1228])
		Polymorph(CKLysre_dragon)
		Wait(2) 
		CreateCreature("CKLysr25",[1999.1228],0) 
		SetGlobal("CKLysreSummoned","GLOBAL",1)~ GOTO 8
END
