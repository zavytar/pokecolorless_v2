	object_const_def ; object_event constants
	const BLUESHOUSE_DAISY

BluesHouse_MapScripts:
	db 0 ; scene scripts
;	scene_script .DaisyTM27Scene	; SCENE_BLUESHOUSE_DAISY_TM27
;	scene_script .PokegearScene		; SCENE_BLUESHOUSE_DAISY_POKEGEAR
;	scene_script .DummyScene1 		; SCENE_BLUESHOUSE_NOTHING

	db 0 ; callbacks

;.DaisyTM27Scene:
;	prioritysjump BluesHouse_TM27Script
;	end 

;.PokegearScene:
;	prioritysjump BluesHouse_PokegearScript
;	end 

;.DummyScene1:
;	end

;BluesHouse_TM27Script:
;	checkevent EVENT_DAISY_AUX
;	iftrue .DoNothing
;	turnobject BLUESHOUSE_DAISY, DOWN
;	turnobject PLAYER, UP 
;	opentext
;	writetext BluesHouse_DaisyText1
;	waitbutton
;	verbosegiveitem TM_RETURN
;	iffalse .Done
;	writetext BluesHouse_DaisyText2
;	waitbutton
;	closetext
;	setevent EVENT_DAISY_AUX
;	setscene SCENE_BLUESHOUSE_NOTHING	
;	end

;.DoNothing:
;	end 

;.Done:
;	end

BluesHouse_PokegearScript:
	end

DaisyScript:
	faceplayer
	opentext
;	readvar VAR_HOUR
;	ifequal 15, .ThreePM
	writetext BluesHouse_DaisyText3
	waitbutton
	closetext
	playmusic MUSIC_HEAL
	special HealParty
	pause 60
	special FadeInQuickly
	special RestartMapMusic
	end

.ThreePM:
	checkflag ENGINE_DAISYS_GROOMING
	iftrue .AlreadyGroomedMon
	writetext DaisyOfferGroomingText
	yesorno
	iffalse .Refused
	writetext DaisyWhichMonText
	waitbutton
	special DaisysGrooming
	ifequal $0, .Refused
	ifequal $1, .CantGroomEgg
	setflag ENGINE_DAISYS_GROOMING
	writetext DaisyAlrightText
	waitbutton
	closetext
	special FadeOutPalettes
	playmusic MUSIC_HEAL
	pause 60
	special FadeInPalettes
	special RestartMapMusic
	opentext
	writetext GroomedMonLooksContentText
	special PlayCurMonCry
	buttonsound
	writetext DaisyAllDoneText
	waitbutton
	closetext
	end

.AlreadyGroomedMon:
	writetext DaisyAlreadyGroomedText
	waitbutton
	closetext
	end

.Refused:
	writetext DaisyRefusedText
	waitbutton
	closetext
	end

.CantGroomEgg:
	writetext DaisyCantGroomEggText
	waitbutton
	closetext
	end

BluesHouse_GotGearText:
	text "<PLAYER> got"
	line "#GEAR!"
	done 

BluesHouse_DaisyText1:
	text "DAISY: Hi, <PLAYER>!"

	para "Grampa's old"
	line "#MON looks"
	cont "really cute."

	para "Don't forget to"
	line "treat it with"
	cont "loving care."

	para "By the way, here's"
	line "a gift from me!"
	done

BluesHouse_DaisyText2:
	text "That TM will teach"
	line "RETURN to your"
	cont "#MON."

	para "The happier the"
	line "#MON, the more"
	cont "powerful it is."

	para "TMs are reusable,"
	line "so keep that in"
	cont "mind too!"
	done

BluesHouse_DaisyText3:
	text "#MON are living"
	line "beings."

	para "If you see they're"
	line "tired, please give"
	cont "them some rest."

	para "Speaking of rest,"
	line "rest up your"
	cont "#MON, <PLAYER>."
	done

BluesHouse_DaisyText4:
	text "DAISY: Wow, did"
	line "Grampa give you"
	cont "that thing he was"
	cont "working on?"
	done

BluesHouse_DaisyText5:
	text "DAISY: How about I"
	line "give you something"
	cont "else? Here's a"
	cont "little surprise"
	cont "gift from me!"
	done

BluesHouse_DaisyText6:
	text "DAISY: It's a"
	line "new #MON"
	cont "GEAR, or"
	cont "#GEAR for short."

	para "It's got some"
	line "nice features,"
	cont "like a clock"
	cont "and a map."

	para "It can even work"
	line "as a phone!"

	para "It's my going"
	line "away present for"
	cont "you, <PLAYER>."

	para "Good luck on your"
	line "adventure!"
	done

BluesHouse_DaisyText7:
	text "DAISY: Take care!"
	done 

BluesHouse_PlayerText1:
	text "<PLAYER>: Yeah!"

	para "By the way, I"
	line "need to borrow"
	cont "the TOWN MAP!"
	done


BluesHouse_PlayerText2:
	text "<PLAYER>: Alright!"
	line "Thanks, sis!"

	para "This is way"
	line "more awesome than"
	cont "just the MAP!"

	para "Hey, maybe you"
	line "should give <RIVAL>"
	cont "that TOWN MAP if"
	cont "he swings by."

	para "He'll need it to"
	line "not get lost, that"
	cont "loser!"

	para "Anyway, I'm off,"
	line "sis! Smell ya later"
	done

DaisyOfferGroomingText:
	text "DAISY: Hi, <PLAYER>!"
	line "Good timing."
	cont "I'm about to"
	cont "to have some tea."

	para "Would you like to"
	line "join me?"

	para "Oh, your #MON"
	line "are a bit dirty."

	para "Would you like me"
	line "to groom one?"
	done

DaisyWhichMonText:
	text "DAISY: Which one"
	line "should I groom?"
	done

DaisyAlrightText:
	text "DAISY: OK, I'll"
	line "get it looking"
	cont "nice in no time."
	done

GroomedMonLooksContentText:
	text_ram wStringBuffer3
	text " looks"
	line "content."
	done

DaisyAllDoneText:
	text "DAISY: There you"
	line "go! All done."

	para "See? Doesn't it"
	line "look nice?"

	para "It's such a cute"
	line "#MON."
	done

DaisyAlreadyGroomedText:
	text "DAISY: I always"
	line "have tea around"

	para "this time. Come"
	line "join me."
	done

DaisyRefusedText:
	text "DAISY: You don't"
	line "want to have one"

	para "groomed? OK, we'll"
	line "just have tea."
	done

DaisyCantGroomEggText:
	text "DAISY: Oh, sorry."
	line "I honestly can't"
	cont "groom an EGG."
	done

BluesHouse_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  2,  7, PALLET_TOWN, 2
	warp_event  3,  7, PALLET_TOWN, 2

	db 0 ; coord events

	db 0 ; bg events

	db 1 ; object events
	object_event  2,  3, SPRITE_DAISY, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, -1
