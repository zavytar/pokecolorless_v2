map_attributes: MACRO
;\1: map name
;\2: map id
;\3: border block
;\4: connections: combo of NORTH, SOUTH, WEST, and/or EAST, or 0 for none
CURRENT_MAP_WIDTH = \2_WIDTH
CURRENT_MAP_HEIGHT = \2_HEIGHT
\1_MapAttributes::
	db \3
	db CURRENT_MAP_HEIGHT, CURRENT_MAP_WIDTH
	db BANK(\1_Blocks)
	dw \1_Blocks
	db BANK(\1_MapScripts) ; aka BANK(\1_MapEvents)
	dw \1_MapScripts
	dw \1_MapEvents
	db \4
ENDM

; Connections go in order: north, south, west, east
connection: MACRO
;\1: direction
;\2: map name
;\3: map id
;\4: offset of the target map relative to the current map
;    (x offset for east/west, y offset for north/south)

; LEGACY: Support for old connection macro
if _NARG == 6
	connection \1, \2, \3, (\4) - (\5)
else

; Calculate tile offsets for source (current) and target maps
_src = 0
_tgt = (\4) + 3
if _tgt < 0
_src = -_tgt
_tgt = 0
endc

if !STRCMP("\1", "north")
_blk = \3_WIDTH * (\3_HEIGHT - 3) + _src
_map = _tgt
_win = (\3_WIDTH + 6) * \3_HEIGHT + 1
_y = \3_HEIGHT * 2 - 1
_x = (\4) * -2
_len = CURRENT_MAP_WIDTH + 3 - (\4)
if _len > \3_WIDTH
_len = \3_WIDTH
endc

elif !STRCMP("\1", "south")
_blk = _src
_map = (CURRENT_MAP_WIDTH + 6) * (CURRENT_MAP_HEIGHT + 3) + _tgt
_win = \3_WIDTH + 7
_y = 0
_x = (\4) * -2
_len = CURRENT_MAP_WIDTH + 3 - (\4)
if _len > \3_WIDTH
_len = \3_WIDTH
endc

elif !STRCMP("\1", "west")
_blk = (\3_WIDTH * _src) + \3_WIDTH - 3
_map = (CURRENT_MAP_WIDTH + 6) * _tgt
_win = (\3_WIDTH + 6) * 2 - 6
_y = (\4) * -2
_x = \3_WIDTH * 2 - 1
_len = CURRENT_MAP_HEIGHT + 3 - (\4)
if _len > \3_HEIGHT
_len = \3_HEIGHT
endc

elif !STRCMP("\1", "east")
_blk = (\3_WIDTH * _src)
_map = (CURRENT_MAP_WIDTH + 6) * _tgt + CURRENT_MAP_WIDTH + 3
_win = \3_WIDTH + 7
_y = (\4) * -2
_x = 0
_len = CURRENT_MAP_HEIGHT + 3 - (\4)
if _len > \3_HEIGHT
_len = \3_HEIGHT
endc

else
fail "Invalid direction for 'connection'."
endc

	map_id \3
	dw \2_Blocks + _blk
	dw wOverworldMapBlocks + _map
	db _len - _src
	db \3_WIDTH
	db _y, _x
	dw wOverworldMapBlocks + _win
endc
ENDM

	map_attributes NewBarkTown, NEW_BARK_TOWN, $05, 0

	map_attributes BattleTowerOutside, BATTLE_TOWER_OUTSIDE, $05, 0

	map_attributes Pokecenter2F, POKECENTER_2F, $00, 0
	map_attributes TradeCenter, TRADE_CENTER, $00, 0
	map_attributes Colosseum, COLOSSEUM, $00, 0
	map_attributes TimeCapsule, TIME_CAPSULE, $00, 0

	map_attributes BattleTower1F, BATTLE_TOWER_1F, $00, 0
	map_attributes BattleTowerElevator, BATTLE_TOWER_ELEVATOR, $00, 0
	map_attributes BattleTowerHallway, BATTLE_TOWER_HALLWAY, $00, 0
	map_attributes BattleTowerBattleRoom, BATTLE_TOWER_BATTLE_ROOM, $00, 0

	map_attributes PlayersHouse1F, PLAYERS_HOUSE_1F, $00, 0
	map_attributes PlayersHouse2F, PLAYERS_HOUSE_2F, $00, 0

	map_attributes IndigoPlateauPokecenter1F, INDIGO_PLATEAU_POKECENTER_1F, $00, 0
	map_attributes WillsRoom, WILLS_ROOM, $00, 0
	map_attributes KogasRoom, KOGAS_ROOM, $00, 0
	map_attributes BrunosRoom, BRUNOS_ROOM, $00, 0
	map_attributes KarensRoom, KARENS_ROOM, $00, 0
	map_attributes LancesRoom, LANCES_ROOM, $00, 0
	map_attributes HallOfFame, HALL_OF_FAME, $00, 0

	map_attributes ViridianForest, VIRIDIAN_FOREST, $00, 0
	map_attributes MountMoon1F, MOUNT_MOON_1F, $00, 0
	map_attributes MountMoonB1F, MOUNT_MOON_B1F, $00, 0
	map_attributes MountMoonB2F, MOUNT_MOON_B2F, $00, 0
	map_attributes DiglettsCavePewterEntrance, DIGLETTS_CAVE_PEWTER_ENTRANCE, $00, 0
	map_attributes DiglettsCaveVermillionEntrance, DIGLETTS_CAVE_VERMILLION_ENTRANCE, $00, 0
	map_attributes DiglettsCaveB1F, DIGLETTS_CAVE_B1F, $00, 0
	map_attributes RockTunnel1F, ROCK_TUNNEL_1F, $00, 0
	map_attributes RockTunnelB1F, ROCK_TUNNEL_B1F, $00, 0
	map_attributes RockTunnelB2F, ROCK_TUNNEL_B2F, $00, 0
	map_attributes RockTunnelB3F, ROCK_TUNNEL_B3F, $00, 0
	map_attributes PokemonTower1F, POKEMON_TOWER_1F, $00, 0
	map_attributes PokemonTower2F, POKEMON_TOWER_2F $00, 0
	map_attributes PokemonTower3F, POKEMON_TOWER_3F, $00, 0	
	map_attributes PokemonTower4F, POKEMON_TOWER_4F, $00, 0
	map_attributes PokemonTower5F, POKEMON_TOWER_5F, $00, 0
	
	map_attributes OaksLab, OAKS_LAB, $00, 0
	map_attributes RedsHouse1F, REDS_HOUSE_1F, $00, 0
	map_attributes RedsHouse2F, REDS_HOUSE_2F, $00, 0
	map_attributes BluesHouse1F, BLUES_HOUSE_1F, $00, 0
	map_attributes PalletTown, PALLET_TOWN, $00, 0
	map_attributes Route21, ROUTE_21, $00, 0

	map_attributes Route1, ROUTE_1, $00, 0
	map_attributes Route2, ROUTE_2, $00, 0
	map_attributes Route22, ROUTE_22, $00, 0
	map_attributes ViridianCity, VIRIDIAN_CITY, $00, 0
	map_attributes ViridianPokecenter, VIRIDIAN_POKECENTER, $00, 0
	map_attributes ViridianMart, VIRIDIAN_MART, $00, 0
	map_attributes ViridianGym, VIRIDIAN_GYM, $00, 0

	map_attributes PewterCity, PEWTER_CITY, $00, 0
	map_attributes PewtePokecenter, PEWTER_POKECENTER, $00, 0
	map_attributes PewteMart, PEWTER_MART, $00, 0
	map_attributes PewteGym, PEWTER_GYM, $00, 0
	map_attributes Route3, ROUTE_3, $00, 0

	map_attributes Route4, ROUTE_4, $00, 0
	map_attributes CeruleanCity, CERULEAN_CITY, $00, 0
	map_attributes CeruleanPokecenter, CERULEAN_POKECENTER, $00, 0
	map_attributes CeruleanMart, CERULEAN_MART, $00, 0
	map_attributes CeruleanGym, CERULEAN_GYM, $00, 0
	map_attributes Route5, ROUTE_5, $00, 0
	map_attributes Route9, ROUTE_9, $00, 0
	map_attributes Route10North, ROUTE_10_NORTH, $00, 0

	map_attributes Route6, ROUTE_6, $00, 0
	map_attributes VermillionCity, VERMILLION_CITY, $00, 0
	map_attributes VermillionPokecenter, VERMILLION_POKECENTER, $00, 0
	map_attributes VermillionMart, VERMILLION_MART, $00, 0
	map_attributes VermillionGym, VERMILLION_GYM, $00, 0	
	map_attributes Route11, ROUTE_11, $00, 0

	map_attributes Route10South, ROUTE_10_NORTH, $00, 0
	map_attributes LavenderTown, LAVENDER_TOWN, $00, 0
	map_attributes LavenderPokecenter, LAVENDER_POKECENTER, $00, 0
	map_attributes LavenderMart, LAVENDER_MART, $00, 0
	map_attributes Route8, ROUTE_8, $00, 0
	map_attributes Route12, ROUTE_12, $00, 0

	map_attributes Route7, ROUTE_7, $00, 0
	map_attributes CeladonCity, CELADON_CITY, $00, 0
	map_attributes CeladonPokecenter, CELADON_POKECENTER, $00, 0
	map_attributes CeladonDeptStore1F, CELADON_DEPT_STORE_1F, $00, 0
	map_attributes CeladonDeptStore2F, CELADON_DEPT_STORE_2F, $00, 0
	map_attributes CeladonDeptStore3F, CELADON_DEPT_STORE_3F, $00, 0
	map_attributes CeladonDeptStore4F, CELADON_DEPT_STORE_4F, $00, 0
	map_attributes CeladonDeptStore5F, CELADON_DEPT_STORE_5F, $00, 0
	map_attributes CeladonGym, CELADON_GYM, $00, 0	
	map_attributes Route16, ROUTE_16, $00, 0

