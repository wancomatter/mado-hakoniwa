effect give @s minecraft:luck 1 9 true
particle minecraft:cloud ~ ~ ~ 0.5 0.5 0.5 1 600 force @a
particle minecraft:cloud ~ ~ ~ 1 1 1 1 600 normal @a
particle minecraft:flash ~ ~1.2 ~ 1 1 1 1 10 force @a
playsound minecraft:entity.ender_dragon.flap master @a ~ ~ ~ 4 0.5
tp @s ~ ~0.5 ~
execute store result score @s dummy run data get entity @s Pos[0] -10
execute store result entity @s Motion[0] double 0.0142 run scoreboard players add @s dummy 5
execute store result score @s dummy run data get entity @s Pos[2] -10
execute store result entity @s Motion[2] double 0.0142 run scoreboard players add @s dummy 5
data modify entity @s Motion[1] set value 2.5d
playsound minecraft:block.end_portal.spawn master @a 0 -100 0 0 0.5 1

kill @e[tag=b1sparkrush]
scoreboard players add @s subcounter 1
scoreboard players set @s dummy 140
scoreboard players set @s Cooldown9_max 0
effect give @s minecraft:luck 6 9 true
tag @s add b1s23
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
tellraw @a ["",{"text":"<暴虐の雷鳴 デトネイター> ","color":"yellow"},{"text":"爆殺の時は来た！"}]
