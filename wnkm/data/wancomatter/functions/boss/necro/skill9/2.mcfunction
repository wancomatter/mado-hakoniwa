execute as @e[tag=necro_stand,tag=!necro_stand_b] run function wancomatter:boss/necro/pose_first
execute as @e[tag=necro_stand,tag=!necro_stand_b] run scoreboard players set @s counter 10

execute as @e[tag=necro_stand_r] run scoreboard players remove @s Cooldown4 10
#execute as @e[tag=necro_stand_r] run scoreboard players add @s Cooldown5 0
#execute as @e[tag=necro_stand_r] run scoreboard players add @s Cooldown6 0

#execute as @e[tag=necro_stand_l] run scoreboard players add @s Cooldown4 0
#execute as @e[tag=necro_stand_l] run scoreboard players add @s Cooldown5 0
#execute as @e[tag=necro_stand_l] run scoreboard players add @s Cooldown6 0

playsound minecraft:entity.evoker.cast_spell master @a ~ ~ ~ 4 0.8
playsound minecraft:entity.evoker.cast_spell master @a ~ ~ ~ 4 0.8
playsound minecraft:entity.evoker.cast_spell master @a ~ ~ ~ 4 0.8
playsound minecraft:entity.wither.shoot master @a ~ ~ ~ 4 2

summon armor_stand ~ ~ ~ {Tags:["first","necro_s9shot"],NoGravity:1b,Invisible:1b,Marker:1b}
tp @e[tag=first] ^ ^1.5 ^0.5 ~ ~
execute as @e[tag=first] facing entity @a[gamemode=adventure,sort=nearest,limit=1] feet positioned as @s run tp @s ~ ~ ~ ~ ~
tag @e[tag=first] remove first
