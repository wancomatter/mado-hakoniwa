gamerule announceAdvancements false
gamerule commandBlockOutput false
gamerule disableElytraMovementCheck false
gamerule disableRaids true
gamerule doDaylightCycle false
gamerule doEntityDrops false
gamerule doFireTick false
gamerule doLimitedCrafting true
gamerule doMobLoot false
gamerule doMobSpawning false
gamerule doTileDrops false
gamerule doWeatherCycle false
gamerule keepInventory true
gamerule logAdminCommands false
gamerule maxCommandChainLength 65536
gamerule maxEntityCramming 24
gamerule mobGriefing false
gamerule naturalRegeneration false
gamerule randomTickSpeed 0
gamerule reducedDebugInfo false
gamerule sendCommandFeedback false
gamerule showDeathMessages true
gamerule spawnRadius 0
gamerule spectatorsGenerateChunks false

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

