execute unless score #difficult counter matches 2..4 run scoreboard players set @s dummy 250
execute if score #difficult counter matches 2 run scoreboard players set @s dummy 290
execute if score #difficult counter matches 3 run scoreboard players set @s dummy 360
execute if score #difficult counter matches 4 run scoreboard players set @s dummy 450
effect give @s minecraft:luck 15 3
tag @s add b1s22
tag @s add b1s22used
summon minecraft:armor_stand 14 9.5 0 {Tags:["b1s22stand"],Marker:1b,Invisible:1b,NoGravity:1b}
summon minecraft:armor_stand -14 9.5 0 {Tags:["b1s22stand"],Marker:1b,Invisible:1b,NoGravity:1b}
summon minecraft:armor_stand 0 9.5 14 {Tags:["b1s22stand"],Marker:1b,Invisible:1b,NoGravity:1b}
summon minecraft:armor_stand 0 9.5 -14 {Tags:["b1s22stand"],Marker:1b,Invisible:1b,NoGravity:1b}
scoreboard players operation @e[tag=b1s22stand] teamNumber = @s teamNumber
tp @s 0 18 0
scoreboard players set @s subcounter 0
scoreboard players set @s Cooldown3_max 0
scoreboard players set @s Cooldown6_max 0
scoreboard players operation @s counter -= @s dummy
scoreboard players operation @s Cooldown1 = @s dummy
scoreboard players operation @s Cooldown2 = @s dummy
scoreboard players operation @s Cooldown3 = @s dummy
scoreboard players operation @s Cooldown4 = @s dummy
scoreboard players operation @s Cooldown5 = @s dummy
scoreboard players operation @s Cooldown6 = @s dummy
scoreboard players operation @s Cooldown7 = @s dummy
scoreboard players operation @s Cooldown8 = @s dummy
scoreboard players operation @s Cooldown9 = @s dummy
tellraw @a ["",{"text":"<暴虐の雷鳴 デトネイター> ","color":"yellow"},{"text":"我が爆殺の最終奥義！"}]
playsound minecraft:block.portal.travel master @a 0 -100 0 0 0.5 1
effect give @a minecraft:blindness 1 0 true
particle minecraft:flash ~ ~1.2 ~ 1 1 1 1 10 force @a
time set 22800
function wancomatter:boss/detonator/skill22/breakpillar
schedule function wancomatter:boss/detonator/skill22/30t 30t
schedule function wancomatter:boss/detonator/skill22/60t 60t

