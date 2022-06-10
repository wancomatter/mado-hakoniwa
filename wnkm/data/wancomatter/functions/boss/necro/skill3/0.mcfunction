scoreboard players set @s Cooldown3 170
tag @s add usedskill
execute as @e[tag=necro_stand,tag=!necro_stand_b] run function wancomatter:boss/necro/pose_first
execute as @e[tag=necro_stand,tag=!necro_stand_b] run scoreboard players set @s counter 10

execute as @e[tag=necro_stand_r] run scoreboard players remove @s Cooldown4 20
#execute as @e[tag=necro_stand_r] run scoreboard players add @s Cooldown5 40
#execute as @e[tag=necro_stand_r] run scoreboard players add @s Cooldown6 0

execute as @e[tag=necro_stand_l] run scoreboard players add @s Cooldown4 20
#execute as @e[tag=necro_stand_l] run scoreboard players remove @s Cooldown5 40
#execute as @e[tag=necro_stand_l] run scoreboard players add @s Cooldown6 0

kill @e[tag=necro_s3zombie]

execute as @a[gamemode=!spectator,scores={maxHP=1..}] run scoreboard players operation #dummy dummy > @s boss_hate
execute as @a[gamemode=!spectator,scores={maxHP=1..}] if score @s boss_hate >= #dummy dummy run tag @s add target
execute unless entity @a[tag=target,limit=1] run tag @a[limit=1,sort=nearest,gamemode=!spectator] add target
execute unless entity @a[tag=target,limit=1] run tag @a[limit=1,sort=nearest] add target
execute facing entity @a[tag=target] feet run tp @s ~ ~ ~ ~ 0
execute at @a[tag=target,limit=1,sort=nearest] run summon minecraft:armor_stand ~ 7.0 ~ {Tags:["first","necro_s3_circle"],Invisible:1b,NoGravity:1b,Marker:1b,Fire:32767s,NoBasePlate:1b,ArmorItems:[{},{},{},{id:"minecraft:golden_hoe",Count:1b,tag:{CustomModelData:105}}]}
execute at @e[tag=first,limit=1] run playsound minecraft:block.end_portal.spawn master @a ~ ~ ~ 5 0.8
execute unless score #difficult counter matches 2..4 run scoreboard players set @e[tag=first,limit=1] Mana 6
execute if score #difficult counter matches 2 run scoreboard players set @e[tag=first,limit=1] Mana 8
execute if score #difficult counter matches 3 run scoreboard players set @e[tag=first,limit=1] Mana 11
execute if score #difficult counter matches 4 run scoreboard players set @e[tag=first,limit=1] Mana 15
tag @e[tag=first] remove first
tag @a[tag=target] remove target
scoreboard players set @a[scores={boss_hate=1..}] boss_hate 0
