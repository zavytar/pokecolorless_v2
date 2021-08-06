newgroup: MACRO
;\1: group id
	const_skip
MAPGROUP_\1 EQU const_value
CURRENT_NUM_MAPGROUP_MAPS EQUS "NUM_\1_MAPS"
__map_value__ = 1
ENDM

map_const: MACRO
;\1: map id
;\2: width: in blocks
;\3: height: in blocks
GROUP_\1 EQU const_value
MAP_\1 EQU __map_value__
__map_value__ = __map_value__ + 1
\1_WIDTH EQU \2
\1_HEIGHT EQU \3
ENDM

endgroup: MACRO
{CURRENT_NUM_MAPGROUP_MAPS} EQU __map_value__ - 1
PURGE CURRENT_NUM_MAPGROUP_MAPS
ENDM

; map group ids
; `newgroup` indexes are for:
; - MapGroupPointers (see data/maps/maps.asm)
; - MapGroupRoofs (see data/maps/roofs.asm)
; - OutdoorSprites (see data/maps/outdoor_sprites.asm)
; - RoofPals (see gfx/tilesets/roofs.pal)
; `map_const` indexes are for the sub-tables of MapGroupPointers (see data/maps/maps.asm)
; Each map also has associated data:
; - attributes (see data/maps/attributes.asm)
; - blocks (see data/maps/blocks.asm)
; - scripts and events (see data/maps/scripts.asm)
	const_def

	newgroup CABLE_CLUB                                           ;  1
	map_const POKECENTER_2F,                                8,  4 ;  1
	map_const TRADE_CENTER,                                 5,  4 ;  2
	map_const COLOSSEUM,                                    5,  4 ;  3
	map_const TIME_CAPSULE,                                 5,  4 ;  4
	endgroup

	newgroup BATTLE_TOWER                                         ;  2
	map_const BATTLE_TOWER_OUTSIDE,                        10, 14 ;  1
	map_const BATTLE_TOWER_1F,                              8,  5 ;  2
	map_const BATTLE_TOWER_ELEVATOR,                        2,  2 ;  3
	map_const BATTLE_TOWER_HALLWAY,                        11,  2 ;  4
	map_const BATTLE_TOWER_BATTLE_ROOM,                     4,  4 ;  5
	endgroup

	newgroup NEW_BARK                                             ;  3
	map_const NEW_BARK_TOWN,                               10,  9 ;  1
	map_const PLAYERS_HOUSE_1F,                             5,  4 ;  2
	map_const PLAYERS_HOUSE_2F,                             4,  3 ;  3
	endgroup

	newgroup INDIGO                                               ;  4
	map_const INDIGO_PLATEAU_POKECENTER_1F,                 9,  7 ;  1
	map_const WILLS_ROOM,                                   5,  9 ;  2
	map_const KOGAS_ROOM,                                   5,  9 ;  3
	map_const BRUNOS_ROOM,                                  5,  9 ;  4
	map_const KARENS_ROOM,                                  5,  9 ;  5
	map_const LANCES_ROOM,                                  5, 12 ;  6
	map_const HALL_OF_FAME,                                 5,  7 ;  7
	endgroup

	newgroup DUNGEONS											  ;	 5
	map_const VIRIDIAN_FOREST,                             	4,  4 ;  1
	map_const MOUNT_MOON_1F,                             	4,  4 ;  2
	map_const MOUNT_MOON_B1F,                             	4,  4 ;  3
	map_const MOUNT_MOON_B2F,                             	4,  4 ;  4
	map_const DIGLETTS_CAVE_PEWTER_ENTRANCE,				4,	4 ;	 5
	map_const DIGLETTS_CAVE_VERMILLION_ENTRANCE,			4,	4 ;	 6
	map_const DIGLETTS_CAVE_B1F,							4,	4 ;	 7
	map_const ROCK_TUNNEL_1F,								4,	4 ;	 8
	map_const ROCK_TUNNEL_B1F,								4,	4 ;	 9
	map_const ROCK_TUNNEL_B2F,								4,	4 ;	10
	map_const ROCK_TUNNEL_B3F,								4,	4 ;	11
	map_const POKEMON_TOWER_1F,								10, 9 ;	12
	map_const POKEMON_TOWER_2F,								10, 9 ;	13
	map_const POKEMON_TOWER_3F,								10, 9 ;	14
	map_const POKEMON_TOWER_4F,								10, 9 ;	15
	map_const POKEMON_TOWER_5F,								10, 9 ;	16
	map_const UNDERGROUND_PATH_NORTH_SOUTH,					 4,20 ; 17
	map_const UNDERGROUND_PATH_WEST_EAST,					20, 4 ; 18
	endgroup

	newgroup PALLET												  ;	 6
	map_const OAKS_LAB,             		                5,  6 ;  1
	map_const REDS_HOUSE_1F,                           	    4,  4 ;  2
	map_const REDS_HOUSE_2F,                             	4,  4 ;  3
	map_const BLUES_HOUSE_1F,                             	4,  4 ;  4
	map_const PALLET_TOWN,								   10,  9 ;	 5
	map_const ROUTE_21,									   10,  2 ;  6
	endgroup

	newgroup VIRIDIAN											  ;  7
	map_const ROUTE_1,          	   		                5,  6 ;  1
	map_const ROUTE_2,                 		          	    4,  4 ;  2
	map_const ROUTE_22,           		                  	4,  4 ;  3
	map_const VIRIDIAN_CITY,                             	4,  4 ;  4
	map_const VIRIDIAN_POKECENTER,							5,  4 ;	 5
	map_const VIRIDIAN_MART,								5,  4 ;	 6
	map_const VIRIDIAN_GYM,									5,  4 ;	 7
	map_const VIRIDIAN_SCHOOL,								5,  4 ;	 8
	map_const VIRIDIAN_HOUSE_1,								5,  4 ;	 9
	map_const ROUTE_2_GATE,           		               	4,  4 ; 10
	map_const ROUTE_22_GATE,           		               	4,  4 ; 11
	map_const VIRIDIAN_FOREST_NORTH_GATE,               	4,  4 ; 12
	map_const VIRIDIAN_FOREST_SOUTH_GATE,           		4,  4 ; 13
	map_const ROUTE_2_HOUSE_1,								4,	4 ; 14
	endgroup

	newgroup PEWTER												  ;	 8
	map_const PEWTER_CITY,             		                5,  6 ;  1
	map_const PEWTER_POKECENTER,                       	    4,  4 ;  2
	map_const PEWTER_MART,       	                      	4,  4 ;  3
	map_const PEWTER_GYM,	                             	4,  4 ;  4
	map_const PEWTER_MUSEUM_1F,								10, 9 ;	 5
	map_const PEWTER_MUSEUM_2F,								10, 9 ;	 6
	map_const PEWTER_HOUSE_1,								10, 9 ;	 7
	map_const PEWTER_HOUSE_2,								10, 9 ;	 8
	map_const ROUTE_3,										10, 9 ;	 9
	map_const MOUNT_MOON_OUTSIDE,							10, 9 ;	10
	map_const MOUNT_MOON_POKECENTER,						10, 9 ;	11
	endgroup

	newgroup CERULEAN											  ;	 9
	map_const ROUTE_4,										10, 9 ;	 1
	map_const CERULEAN_CITY,           		                5,  6 ;  2
	map_const CERULEAN_POKECENTER,                          4,  4 ;  3
	map_const CERULEAN_MART,       	                      	4,  4 ;  4
	map_const CERULEAN_GYM,	                             	4,  4 ;  5
	map_const BIKE_SHOP,	                             	4,  4 ;  6
	map_const CERULEAN_HOUSE_1,	                           	4,  4 ;  7
	map_const CERULEAN_HOUSE_2,                            	4,  4 ;  8
	map_const CERULEAN_HOUSE_3,                            	4,  4 ;  9
	map_const ROUTE_24,										10, 9 ;	10
	map_const ROUTE_25,										10, 9 ;	11
	map_const BILLS_HOUSE,	                             	4,  4 ; 12
	map_const ROUTE_5,										10, 9 ;	13
	map_const DAY_CARE,	 	                             	 4, 4 ; 14
	map_const ROUTE_5_UNDERGROUND_ENTRANCE,                	 4, 4 ; 14
	map_const ROUTE_9,										10, 9 ;	15
	map_const ROUTE_10_NORTH,								10, 9 ;	16
	map_const ROUTE_10_POKECENTER,							10, 9 ;	17
	endgroup

	newgroup VERMILLION											   ; 10
	map_const ROUTE_6,										10,  9 ;  1
	map_const ROUTE_6_UNDERGROUND_ENTRANCE,                	 4,  4 ;  2
	map_const VERMILLION_CITY,             		             5,  6 ;  3
	map_const VERMILLION_POKECENTER,                       	 4,  4 ;  4
	map_const VERMILLION_MART,       	                     4,  4 ;  5
	map_const VERMILLION_GYM,	                             4,  4 ;  6
	map_const VERMILLION_FISHING_GURUS_HOUSE,                4,  4 ;  7
	map_const VERMILLION_FAN_CLUB,                           4,  4 ;  8
	map_const VERMILLION_HOUSE_1,                            4,  4 ;  9
	map_const VERMILLION_HOUSE_2,                            4,  4 ; 10
	map_const ROUTE_11,										10,  9 ; 11
	map_const ROUTE_11_GATE_1F,								10,  9 ; 12
	map_const ROUTE_11_GATE_2F,								10,  9 ; 13
	endgroup

	newgroup LAVENDER											   ; 10
	map_const ROUTE_10_SOUTH,								10,  9 ;  1
	map_const LAVENDER_TOWN,             		             5,  6 ;  2
	map_const LAVENDER_POKECENTER,                       	 4,  4 ;  3
	map_const LAVENDER_MART, 	      	                     4,  4 ;  4
	map_const MR_FUJIS_HOUSE,	                             4,  4 ;  5
	map_const NAME_RATERS_HOUSE,       				         4,  4 ;  6
	map_const LAVENDER_HOUSE_1,		                         4,  4 ;  7
	map_const ROUTE_8,                    			 	     4,  4 ;  8
	map_const ROUTE_8_UNDERGROUND_ENTRANCE,                	 4,  4 ;  9
	map_const ROUTE_12,										10,  9 ; 10
	map_const ROUTE_12_GATE_1F,								10,  9 ; 11
	map_const ROUTE_12_GATE_2F,								10,  9 ; 12
	endgroup

	newgroup CELADON											   ; 11
	map_const ROUTE_7,										10,  9 ;  1
	map_const ROUTE_7_UNDERGROUND_ENTRANCE,                	 4,  4 ;  2
	map_const CELADON_CITY,           		                 5,  6 ;  3
	map_const CELADON_POKECENTER,                          	 4,  4 ;  4
	map_const CELADON_DEPT_STORE_1F,                       	 4,  4 ;  5
	map_const CELADON_DEPT_STORE_2F,                       	 4,  4 ;  6
	map_const CELADON_DEPT_STORE_3F,                       	 4,  4 ;  7
	map_const CELADON_DEPT_STORE_4F,                       	 4,  4 ;  8
	map_const CELADON_DEPT_STORE_5F,                       	 4,  4 ;  9
	map_const CELADON_GYM,	                             	 4,  4 ; 10
	map_const CELADON_GAME_CORNER,                         	 4,  4 ; 11
	map_const CELADON_PRIZE_CORNER,                        	 4,  4 ; 12
	map_const CELADON_MANSION_1F,                       	 4,  4 ; 13
	map_const CELADON_MANSION_2F,                       	 4,  4 ; 14
	map_const CELADON_MANSION_3F,                       	 4,  4 ; 15
	map_const CELADON_MANSION_4F,                       	 4,  4 ; 16
	map_const CELADON_MANSION_ROOM,							 4,  4 ; 17
	map_const CELADON_RESTAURANT,                          	 4,  4 ; 18
	map_const CELADON_HOTEL,                            	 4,  4 ; 19
	map_const CELADON_HOUSE_1,                            	 4,  4 ; 20
	map_const ROUTE_16,										10,  9 ; 21
	map_const ROUTE_16_GATE_1F,								10,  9 ; 22
	map_const ROUTE_16_GATE_2F,	                           	 4,  4 ; 23
	map_const ROUTE_16_HOUSE_1,								10,  9 ; 24
	endgroup	

	newgroup SAFFRON										 	   ; 12
	map_const SAFFRON_NORTH_GATE,      		                 5,  6 ;  1
	map_const SAFFRON_SOUTH_GATE,                            4,  4 ;  2
	map_const SAFFRON_WEST_GATE,                             4,  4 ;  3
	map_const SAFFRON_EAST_GATE,                             4,  4 ;  4
	map_const SAFFRON_CITY,								    10,  9 ;  5
	map_const SAFFRON_POKECENTER,                       	 4,  4 ;  6
	map_const SAFFRON_MART,       	                    	 4,  4 ;  7
	map_const SAFFRON_GYM,	                            	 4,  4 ;  8
	map_const FIGHTING_DOJO,                            	 4,  4 ;  9
	map_const MR_PSYCHICS_HOUSE,                           	 4,  4 ; 10
	map_const COPYCATS_HOUSE_1F,                           	 4,  4 ; 11
	map_const COPYCATS_HOUSE_2F,							 4,	 4 ; 12
	map_const SAFFRON_HOUSE_1,	                           	 4,  4 ; 13
	endgroup

NUM_MAP_GROUPS EQU const_value ; 12
