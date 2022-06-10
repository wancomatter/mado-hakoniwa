function wancomatter:boss/sils/pose_first
scoreboard players remove @s Cooldown4 30
scoreboard players remove @s Cooldown5 20
scoreboard players remove @s Cooldown6 170
#
scoreboard players add @s Cooldown4_max 50
scoreboard players remove @s Cooldown5_max 20
scoreboard players add @s Cooldown6_max 20
scoreboard players set @s Cooldown7_max 7


data modify entity @s HandItems set value [{id:"minecraft:trident",Count:1b},{}]

playsound minecraft:item.trident.riptide_2 master @a ~ ~ ~ 4 0.9
particle minecraft:falling_dust lapis_block ~ ~1 ~ 1 1 1 1 150 force @a
particle minecraft:falling_dust lapis_block ~ ~1 ~ 1 1 1 1 400 normal @a
