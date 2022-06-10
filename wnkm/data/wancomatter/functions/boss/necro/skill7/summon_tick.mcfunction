summon zombie_horse ~ ~ ~ {Tags:["first","necro_s7_zombie_horse"],DeathLootTable:"empty",Invulnerable:1b,NoAI:1b,Silent:1b}
execute rotated ~ 0 positioned ~ 7.2 ~ run tp @e[tag=first] ^ ^ ^2.25 ~ 0
execute at @e[tag=first,limit=1,sort=nearest] run playsound minecraft:block.portal.trigger master @a ~ -20 ~ 0 2 0.5
execute at @e[tag=first,limit=1,sort=nearest] run particle minecraft:portal ~ ~1 ~ 0.2 0.2 0.2 1.6 280 normal @a
execute at @e[tag=first,limit=1,sort=nearest] run particle minecraft:portal ~ ~1 ~ 0.0 0.0 0.0 1.6 70 force @a
execute at @e[tag=first,limit=1,sort=nearest] run playsound minecraft:entity.generic.explode master @a ~ ~ ~ 4.5 1
execute at @e[tag=first,limit=1,sort=nearest] run particle minecraft:flash ^ ^1 ^1 0.3 0.3 0.3 1 4 normal @a
execute at @e[tag=first,limit=1,sort=nearest] run particle minecraft:flash ^ ^1 ^1 0 0 0 1 1 force @a
execute at @e[tag=first,limit=1,sort=nearest] run function wancomatter:boss/necro/skill7/summon_line
tag @e[tag=first] remove first


execute store result entity @s Rotation[0] float 0.01 run scoreboard players operation @s subcounter2 += @s subcounter
scoreboard players remove @s counter 1
execute if score @s counter matches ..0 run kill @s
