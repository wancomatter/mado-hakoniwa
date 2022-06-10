scoreboard players set @s Cooldown7 240
scoreboard players set @s Cooldown1 100
scoreboard players set @s Cooldown7_max 0
execute unless score @s Cooldown8 matches 200.. run scoreboard players set @s Cooldown8 200
playsound minecraft:entity.zombie_villager.cure master @a ~ ~ ~ 4 1.6
particle minecraft:angry_villager ~ ~1 ~ 1 1 1 1 52 normal @a
particle minecraft:angry_villager ~ ~1 ~ 1 1 1 1 13 force @a
tag @e[tag=must_target] add bear_s7target
execute facing entity @e[tag=bear_s7target] eyes run function wancomatter:boss/bear/child/skill7/line
schedule function wancomatter:boss/bear/child/skill7/target 7t
schedule function wancomatter:boss/bear/child/skill7/leap 14t
