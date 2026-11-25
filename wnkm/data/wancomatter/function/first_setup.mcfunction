gamerule show_advancement_messages false
gamerule command_block_output false
gamerule elytra_movement_check true
gamerule raids false
gamerule advance_time false
gamerule entity_drops false
gamerule fire_spread_radius_around_player 0
gamerule limited_crafting true
gamerule mob_drops false
gamerule spawn_mobs false
gamerule block_drops false
gamerule advance_weather false
gamerule keep_inventory true
gamerule log_admin_commands false
gamerule max_command_sequence_length 65536
gamerule max_entity_cramming 24
gamerule mob_griefing false
gamerule natural_health_regeneration false
gamerule random_tick_speed 0
gamerule reduced_debug_info false
gamerule send_command_feedback false
gamerule show_death_messages true
gamerule respawn_radius 0
gamerule spectators_generate_chunks false

function wancomatter:general/load
execute unless score #game counter matches 1.. run function wancomatter:game/lobby_first
execute unless score #first-operator counter matches 20.. run scoreboard players set #first-operator counter 20
execute unless score #timeModify subcounter matches 0.. run time set 1000
execute unless score #timeModify subcounter matches 0.. run scoreboard players set #timeModify subcounter 1000
execute unless score #teamModify counter matches 0.. run scoreboard players set #teamModify counter 2
execute unless score #timeover_setting counter matches 1.. run scoreboard players set #timeover_setting counter 2
execute unless score #gametime subcounter matches 1.. run scoreboard players set #gametime subcounter 3
execute unless score #lobby cost matches 1.. run scoreboard players set #lobby cost 9
execute unless score #difficult counter matches 1.. run scoreboard players set #difficult counter 2
execute unless score #pve_lifestock counter matches 1.. run scoreboard players set #pve_lifestock counter 3
execute unless score #gamemode counter matches 1.. run scoreboard players set #stagechanged subcounter 2
execute unless score #gamemode counter matches 1.. run scoreboard players set #stagechangeing counter 1
execute unless score #gamemode counter matches 1.. run function wancomatter:map/0_replace_air
execute unless score #gamemode counter matches 1.. run function wancomatter:map/2_nether
execute unless score #gamemode counter matches 1.. run scoreboard players set #gamemode counter 1
