scoreboard players remove @s Mana 5
scoreboard players set @s CooldownX 100
scoreboard players set @s CooldownX_max 100

execute anchored eyes run summon minecraft:area_effect_cloud ^ ^ ^ {Tags:["first","097razer"],Duration:40}
execute anchored eyes run tp @e[tag=first] ^ ^ ^ ~ ~
scoreboard players set @e[tag=first] Cooldown3 40
scoreboard players set @e[tag=first] Cooldown5 24
scoreboard players operation @e[tag=first] playerNumber = @s playerNumber
scoreboard players operation @e[tag=first] teamNumber = @s teamNumber
tag @e[tag=first] remove first



