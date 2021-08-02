; See data/maps/scenes.asm for which maps have scene variables.
; Each scene_script and coord_event is associated with a current scene ID.

; Scene variables default to 0.
SCENE_DEFAULT  EQU 0
; Often a map will have a one-time default event for scene 0, and switch to a
; do-nothing scene 1 when the event finishes.
SCENE_FINISHED EQU 1
; A coord_event for scene -1 will always activate, regardless of the map's
; scene variable value.
SCENE_ALWAYS   EQU -1

; wPokecenter2FSceneID
	const_def 1
	const SCENE_POKECENTER2F_LEAVE_TRADE_CENTER       ; 1
	const SCENE_POKECENTER2F_LEAVE_COLOSSEUM          ; 2
	const SCENE_POKECENTER2F_LEAVE_TIME_CAPSULE       ; 3

; wLancesRoomSceneID
	const_def 1
	const SCENE_LANCESROOM_APPROACH_LANCE ; 1

; wOaksLabSceneID
	const_def
	const SCENE_OAKSLAB_INTRO		; 1
	const SCENE_OAKSLAB_CANT_LEAVE	; 2
	const SCENE_OAKSLAB_NOTHING		; 3

; wBluesHouse1FSCeneID
	const_def
	const SCENE_BLUESHOUSE_SPAWN	; 1
	const SCENE_BLUESHOUSE_NOTHING	; 2

; wViridianCitySceneID
	const_def
	const SCENE_VIRIDIANCITY_GRAMPS		; 1
	const SCENE_VIRIDIANCITY_GYM_CLOSED	; 2
	const SCENE_VIRIDIANCITY_NOTHING	; 3

; Route22GateSceneID
;	const_def
;	const SCENE_ROUTE22GATE_BADGE_CHECK	; 1
;	const SCENE_ROUTE22GATE_NOTHING		; 2
