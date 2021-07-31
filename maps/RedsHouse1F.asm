	object_const_def ; object_event constants
	const REDSHOUSE1F_REDS_MOM

RedsHouse1F_MapScripts:
	db 1 ; scene scripts
	scene_script .DummyScene

	db 0 ; callbacks

.DummyScene:
	end

RedsMom:
	faceplayer
	opentext
	writetext RedsMomText1
	waitbutton
	closetext
	end

RedsHouse1FTV:
	jumptext RedsHouse1FTVText

RedsHouse1FBookshelf:
	jumpstd picturebookshelf

RedsMomText1:
	text "Hi, <PLAYER>!"
	line "How are you?"

	para "If you're looking"
	line "for <RIVAL>, he's"
	cont "not here right now."

	para "He's probably"
	line "training his new"
	cont "#MON!"

	para "…"

	para "Sigh… Kids grow"
	line "up so fast… It"
	cont "said so on TV."

	para "Please be careful"
	line "and stay out of"
	cont "trouble!"
	done

RedsHouse1FTVText:
	text "It's a movie."

	para "Four boys are"
	line "walking on"
	cont "railroad tracks."

	para "I'd better get"
	line "a move on, too."
	done

RedsHouse1F_MapEvents:
	db 0, 0 ; filler

	db 3 ; warp events
	warp_event  2,  7, PALLET_TOWN, 1
	warp_event  3,  7, PALLET_TOWN, 1
	warp_event  7,  0, REDS_HOUSE_2F, 1

	db 0 ; coord events

	db 3 ; bg events
	bg_event  0,  1, BGEVENT_READ, RedsHouse1FBookshelf
	bg_event  1,  1, BGEVENT_READ, RedsHouse1FBookshelf
	bg_event  2,  1, BGEVENT_READ, RedsHouse1FTV

	db 1 ; object events
	object_event  5,  3, SPRITE_REDS_MOM, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, RedsMom, -1
