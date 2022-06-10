scoreboard players remove @s counter 340
effect give @s minecraft:luck 18 3
tag @s add b1s21
tag @s add b1s21used
data modify entity @s Attributes[{Name:"generic.movement_speed"}].Base set value 0d
scoreboard players set @s Cooldown2_max 0
scoreboard players set @s Cooldown1 340
scoreboard players set @s Cooldown2 340
scoreboard players set @s Cooldown3 340
scoreboard players set @s Cooldown4 340
scoreboard players set @s Cooldown5 340
scoreboard players set @s Cooldown6 340
scoreboard players set @s Cooldown7 340
scoreboard players set @s Cooldown8 340
scoreboard players set @s Cooldown9 340
#fill 41 9 39 39 13 41 minecraft:packed_ice
tp @s 0 10 0
tellraw @a ["",{"text":"<暴虐の雷鳴 デトネイター> ","color":"yellow"},{"text":"如何なる世界さえも、"}]
playsound minecraft:block.portal.travel master @a 0 -100 0 0 1 1
effect give @a minecraft:blindness 1 0 true
particle minecraft:flash ~ ~1.2 ~ 1 1 1 1 10 force @a
schedule function wancomatter:boss/detonator/skill21/30t 30t
schedule function wancomatter:boss/detonator/skill21/60t 60t
schedule function wancomatter:boss/detonator/skill21/75t 75t
