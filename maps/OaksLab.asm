	object_const_def
	const OAKSLAB_OAK
;	const OAKSLAB_RED
;	const OAKSLAB_SCIENTIST1
;	const OAKSLAB_SCIENTIST2
;	const OAKSLAB_SCIENTIST3
	const OAKSLAB_POKEBALL
;	const OAKSLAB_POKEDEX1
;	const OAKSLAB_POKEDEX2

OaksLab_MapScripts:
	def_scene_scripts
	scene_script .IntroScene	; SCENE_OAKSLAB_INTRO
	scene_script .DummyScene1	; SCENE_OAKSLAB_CANT_LEAVE
	scene_script .DummyScene2	; SCENE_OAKSLAB_NOTHING

	def_callbacks

.IntroScene:
;	special FadeOutPalettes
;	disappear OAKSLAB_OAK
;	disappear OAKSLAB_RED
;	setevent EVENT_OAK_OUT
;	setevent EVENT_RED_OAKS_LAB
;	clearevent EVENT_VIRIDIAN_GRAMPS_GRUMPY
;	setevent EVENT_VIRIDIAN_GRAMPS_OKAY
	turnobject PLAYER, UP
	pause 20
;	special FadeInPalettes
	opentext
	writetext OaksLab_IntroText1
	waitbutton
;	writetext OaksLab_IntroText2
;	waitbutton
	closetext
	setscene SCENE_OAKSLAB_CANT_LEAVE
	end

.DummyScene1:
.DummyScene2:
	end

OaksLab_EeveeBallScript:
	opentext
	writetext OaksLab_EeveeBallText
	waitbutton
	closetext
;	Here you get your starter and battle Red and get the dex and all	
	end 

OaksLab_CantLeaveScript:
	opentext
	writetext OaksLab_CantLeaveText
	waitbutton
	closetext
	applymovement PLAYER, OaksLab_CantLeaveMovement
	end 	

OaksLab_IntroText1:
	text "Heh! This is it!"

	para "Gramps said he"
	line "was giving me a"
	cont "#MON today!"

	para "…"

	para "Too bad he isn't"
	line "here yet. He"
    cont "must have left"
    cont "to get <RIVAL>."

    para "Typical of that"
    line "loser to be late!"

    para "…"

    para "Whatever. I hope"
    line "they get here soon!"
	done

OaksLab_CantLeaveText:
	text "I should wait"
	line "for Gramps to"
	cont "come back."
	done

OaksLab_OakText1:
	text "<PLAYER>…"

	para "You should really"
	line "be more patient."

	para "Please take good"
	line "care of EEVEE."
	done

OaksLab_OakText2:
	text "OAK: Hmm? <PLAYER>?"
	line "Why are you here"
	cont "already?"

	para "I said for you to"
	line "come by later…"

	para "Ah, whatever!"
	line "Just wait there."

	para "Look, <RIVAL>! Do"
	line "you see that ball"
	cont "on the table?"

	para "It's called a #"
	line "BALL. It holds a"
	cont "#MON inside."

	para "You may have it!"
	line "Go on, take it!"
	done

OaksLab_OakText3:
	text "OAK: Be patient,"
	line "<PLAYER>, I'll give"
	cont "you one later."
	done

OaksLab_OakText4:
	text "OAK: <PLAYER>! What"
	line "are you doing?"
	done

OaksLab_OakText5:
	text "OAK: But, I… Oh,"
	line "all right then."
	cont "That #MON is"
	cont "yours."

	para "I was going to"
	line "give you one"
	cont "anyway…"

	para "<RIVAL>, come over"
	line "here."
	done

OaksLab_OakText6:
	text "OAK: <RIVAL>, this"
	line "is the #MON I"
	cont "caught earlier."

	para "You can have it."
	line "I caught it in"
	cont "the wild and it's"
	cont "not tame yet."
	done

OaksLab_RivalReceivedPokemonText:
	text "<RIVAL> received a"
	line "PIKACHU!"
	done

OaksLab_PlayerText1:
	text "<PLAYER>: Gramps!"
	line "I'm fed up with"
	cont "waiting!"
	done

OaksLab_PlayerText2:
	text "<PLAYER>: Hey!"
	line "Gramps! What"
	cont "about me?"
	done

OaksLab_PlayerText3:
	text "<PLAYER>: No way!"
	line "<RIVAL>, I want"
	cont "this #MON!"
	done

OaksLab_PlayerText4:
	text "<PLAYER>: Gramps, I"
	line "want this one!"
	done

OaksLab_PlayerText5:
	text "<PLAYER>: Wait,"
	line "<RIVAL>!"
	cont "Let's check out"
	cont "our #MON!"

	para "Come on, I'll take"
	line "you on!"
	done

OaksLab_PlayerText6:
	text "<PLAYER>: Gramps!"
	done

OaksLab_PlayerText7:
	text "<PLAYER>: Gramps,"
	line "my #MON has"
	cont "grown stronger!"
	cont "Check it out!"
	done

OaksLab_PlayerText8:
	text "<PLAYER>: Alright"
	line "Gramps! Leave it"
	cont "all to me!"
	done

OaksLab_PlayerText9:
	text "<RIVAL>, I hate to"
	line "say it, but I"
	cont "don't need you!"

	para "I know! I'll"
	line "borrow a TOWN MAP"
	cont "from my sis!"

	para "I'll tell her not"
	line "to lend you one,"
	cont "<RIVAL>! Hahaha!"
	done

OaksLab_OakText7:
	text "OAK: Ah, <PLAYER>,"
	line "good timing!"

	para "I needed to ask"
	line "both of you to do"
	cont "something for me."
	done

OaksLab_OakText8:
	text "On the desk there"
	line "is my invention,"
	cont "the #DEX!"

	para "It automatically"
	line "records data on"
	cont "#MON you've"
	cont "seen or caught!"

	para "It's a hi-tech"
	line "encyclopedia"
	done

OaksLab_OakText9:
	text "OAK: <RIVAL> and"
	line "<PLAYER>! Take"
	cont "these with you!"
	done

OaksLab_OakText10:
	text "And here, use these"
	line "to catch #MON!"
	done

OaksLab_GotPokeballsText:
	text "<PLAYER> got"
	line "5 # BALLS!"
	done

OaksLab_OakText11:
	text "To make a complete"
	line "guide on all the"
	cont "#MON in the"
	cont "world"

	para "That was my dream!"

	para "But, I'm too old!"
	line "I can't do it!"

	para "So, I want you two"
	line "to fulfill my"
	cont "dream for me!"

	para "Get moving, you"
	line "two!"

	para "This is a great"
	line "undertaking in"
	cont "#MON history!"
	done

OaksLab_GotDexText:
	text "<PLAYER> got"
	line "#DEX from OAK!"
	done

OaksLab_ReceivedStarterText:
	text "<PLAYER> snatched"
	line "the #MON!"
	done

OaksLab_RedText1:
	text "<RIVAL>: <……>"
	line "<……>"
	done

OaksLab_EeveeBallText:
	text "It's an EEVEE."

	para "I really hope"
	line "Gramps gives it"
	cont "to me today."
	done

RedOaksLabWinText:
	text "<RIVAL>: <……>"

	para "<PLAYER>: Heh!"
	line "Am I great or"
	cont "what?"
	done

RedOaksLabLossText:
	text "<RIVAL>: <……>"

	para "<PLAYER>: What?"
	line "I picked the"
	cont "wrong #MON!"
	done

OaksLab_AfterRivalBattleText:
	text "Okay! I'll make my"
	line "#MON fight to"
	cont "toughen it up!"

	para "<RIVAL>, Gramps!"
	line "Smell ya later!"
	done

OaksLab_PokedexText:
	text "This must be"
	line "what Gramps has"
	cont "been working on."

	para "It's encyclopedia-"
	line "like, but the"
	cont "pages are blank."
	done	

OaksLab_CantLeaveMovement:
	step UP 
	step_end 

OaksLab_MapEvents:
	db 0, 0 ; filler

	def_warp_events

	def_coord_events

	def_bg_events

	def_object_events
